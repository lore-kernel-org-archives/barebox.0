Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAc-0000Zp-Oc
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:12 +0100
Message-Id: <1322467340-10596-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] ARM bootm: remove now obsolete args
To: barebox@lists.infradead.org

Now that the arch_number and system_rev variables can be set from
the environment we don't need the old bootm command line switch
mechanism anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |   29 -----------------------------
 1 files changed, 0 insertions(+), 29 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 87bf3b3..a104aaa 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -44,36 +44,7 @@ static int do_bootm_linux(struct image_data *data)
 	return -1;
 }
 
-static int image_handle_cmdline_parse(struct image_data *data, int opt,
-		char *optarg)
-{
-	int ret = 1;
-	int no;
-
-	switch (opt) {
-	case 'a':
-		no = simple_strtoul(optarg, NULL, 0);
-		armlinux_set_architecture(no);
-		ret = 0;
-		break;
-	case 'R':
-		no = simple_strtoul(optarg, NULL, 0);
-		armlinux_set_revision(no);
-		ret = 0;
-		break;
-	default:
-		break;
-	}
-
-	return ret;
-}
-
 static struct image_handler handler = {
-	.cmdline_options = "a:R:",
-	.cmdline_parse = image_handle_cmdline_parse,
-	.help_string = " -a <arch>        use architecture number <arch>\n"
-		       " -R <system_rev>  use system revison <system_rev>\n",
-
 	.bootm = do_bootm_linux,
 	.image_type = IH_OS_LINUX,
 };
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
