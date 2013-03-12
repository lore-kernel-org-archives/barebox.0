Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFLWy-0004wP-Ty
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 09:30:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Mar 2013 10:29:57 +0100
Message-Id: <1363080597-10510-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
References: <1363080597-10510-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX pcm043: register external nand boot handler
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm043/pcm043.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 04418fb..a81852a 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -44,6 +44,7 @@
 #include <mach/iomux-mx35.h>
 #include <mach/devices-imx35.h>
 #include <mach/generic.h>
+#include <mach/bbu.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -115,6 +116,7 @@ static int imx35_devices_init(void)
 {
 	uint32_t reg;
 	char *envstr;
+	unsigned long bbu_nand_flags = 0;
 
 	/* CS0: Nor Flash */
 	imx35_setup_weimcs(5, 0x22C0CF00, 0x75000D01, 0x00000900);
@@ -146,6 +148,7 @@ static int imx35_devices_init(void)
 		devfs_add_partition("nand0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		envstr = "NAND";
+		bbu_nand_flags = BBU_HANDLER_FLAG_DEFAULT;
 		break;
 	case bootsource_nor:
 	default:
@@ -163,6 +166,9 @@ static int imx35_devices_init(void)
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM043);
 
+	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.barebox",
+			bbu_nand_flags);
+
 	return 0;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
