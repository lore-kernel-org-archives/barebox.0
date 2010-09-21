Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oy38j-00013X-Nh
	for barebox@lists.infradead.org; Tue, 21 Sep 2010 13:44:10 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 21 Sep 2010 15:42:47 +0200
Message-Id: <1285076567-12594-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm: allow to overwrite the system_rev via bootm
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/armlinux.c |   18 ++++++++++++++----
 1 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 040fd34..b50d535 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -249,19 +249,29 @@ int do_bootm_linux(struct image_data *data)
 static int image_handle_cmdline_parse(struct image_data *data, int opt,
 		char *optarg)
 {
+	int ret = 1;
+
 	switch (opt) {
 	case 'a':
 		armlinux_architecture = simple_strtoul(optarg, NULL, 0);
-		return 0;
+		ret = 0;
+		break;
+	case 'R':
+		system_rev = simple_strtoul(optarg, NULL, 0);
+		ret = 0;
+		break;
 	default:
-		return 1;
+		break;
 	}
+
+	return ret;
 }
 
 static struct image_handler handler = {
-	.cmdline_options = "a:",
+	.cmdline_options = "a:R:",
 	.cmdline_parse = image_handle_cmdline_parse,
-	.help_string = " -a <arch>      use architecture number <arch>",
+	.help_string = " -a <arch>        use architecture number <arch>\n"
+		       " -R <system_rev>  use system revison <system_rev>\n",
 
 	.bootm = do_bootm_linux,
 	.image_type = IH_OS_LINUX,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
