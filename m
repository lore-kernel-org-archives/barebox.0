Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GNB-0004gk-GB
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:10:14 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Wed, 5 Aug 2020 12:10:07 +0200
Message-Id: <1596622207-286083-4-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1596622207-286083-1-git-send-email-r.karszniewicz@phytec.de>
References: <1596622207-286083-1-git-send-email-r.karszniewicz@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH v2 3/3] bootm: handle global.bootm.root_dev
To: barebox@lists.infradead.org

---
 common/bootm.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 73409bf9f70c..01b54ab93958 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -656,7 +656,18 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (bootm_data->appendroot) {
 		char *rootarg;
 
-		rootarg = path_get_linux_rootarg(data->os_file);
+		if (bootm_data->root_dev) {
+			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
+			const struct cdev *root_cdev = cdev_by_name(root_dev_name);
+
+			if (root_cdev && root_cdev->partuuid[0] != 0) {
+				rootarg = basprintf("root=PARTUUID=%s", root_cdev->partuuid);
+			} else {
+				rootarg = path_get_linux_rootarg("invalid");
+			}
+		} else {
+			rootarg = path_get_linux_rootarg(data->os_file);
+		}
 		if (!IS_ERR(rootarg)) {
 			printf("Adding \"%s\" to Kernel commandline\n", rootarg);
 			globalvar_add_simple("linux.bootargs.bootm.appendroot",
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
