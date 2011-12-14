Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaoB2-0000kD-Nz
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 12:43:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Dec 2011 13:43:05 +0100
Message-Id: <1323866587-2385-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
References: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ppc pcm030: Move memory registration to mem_initcall
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/pcm030.c |   16 ++++++++++++----
 1 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 4abf6cb..9c6ccb7 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -45,7 +45,6 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 
 static int devices_init (void)
 {
-	unsigned long sdramsize;
 	struct stat s;
 	int ret;
 
@@ -56,9 +55,6 @@ static int devices_init (void)
 	mpc5200_setup_cs(MPC5200_BOOTCS, 0xfe000000, SZ_32M, 0x0008fd00);
 	add_cfi_flash_device(-1, 0xfe000000, 32 * 1024 * 1024, 0);
 
-	sdramsize = mpc5200_get_sdram_size(0) + mpc5200_get_sdram_size(1);
-	barebox_add_memory_bank("ram0", 0x0, sdramsize);
-
 	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0x200,
 			   IORESOURCE_MEM, &fec_info);
 
@@ -85,6 +81,18 @@ static int console_init(void)
 
 console_initcall(console_init);
 
+static int mem_init(void)
+{
+	unsigned long sdramsize;
+
+	sdramsize = mpc5200_get_sdram_size(0) + mpc5200_get_sdram_size(1);
+
+	barebox_add_memory_bank("ram0", 0x0, sdramsize);
+
+	return 0;
+}
+mem_initcall(mem_init);
+
 #include "mt46v32m16-75.h"
 
 static void sdram_start (int hi_addr)
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
