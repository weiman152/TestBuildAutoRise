git=`sh /etc/profile; which git`
appBuild=`"$git" rev-list HEAD --count`
appBuildOfCommit=`"$git" rev-parse --short HEAD`
if [ $CONFIGURATION = "Debug" -o $CONFIGURATION = "AdHoc" ]; then
branchName=`"$git" rev-parse --abbrev-ref HEAD`
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild-$branchName-$appBuildOfCommit" "${TARGET_BUILD_DIR}/${INFOPLIST_PATH}"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild-$branchName-$appBuildOfCommit" "${BUILT_PRODUCTS_DIR}/${WRAPPER_NAME}.dSYM/Contents/Info.plist"
else
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild" "${TARGET_BUILD_DIR}/${INFOPLIST_PATH}"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild" "${BUILT_PRODUCTS_DIR}/${WRAPPER_NAME}.dSYM/Contents/Info.plist"
fi
echo "Incremented the build number ${TARGET_BUILD_DIR}/${INFOPLIST_PATH}"