Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqGco-0000ic-SM
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 13:48:39 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 30 Jun 2020 15:48:33 +0200
Message-Id: <1593524914-228154-4-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH 3/4] bootm: handle global.bootm.root
To: barebox@lists.infradead.org

---
 common/bootm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 3772fa4c2c51..1a9ef0673e55 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -656,7 +656,11 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (bootm_data->appendroot) {
 		char *rootarg;
 
-		rootarg = path_get_linux_rootarg(data->os_file);
+		if (bootm_data->root_dev) {
+			rootarg = path_get_linux_rootarg(bootm_data->root_dev);
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
