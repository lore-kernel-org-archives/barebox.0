Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmplA-0005wv-Mo
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:18:06 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 074A3FFA7CB
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:55 +0200
Message-Id: <1311955207-22372-18-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 11/23] pcm030: switch to resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/ppc/boards/pcm030/pcm030.c |   30 ++++++------------------------
 1 files changed, 6 insertions(+), 24 deletions(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 0f09d3e..ba59bfe 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -41,19 +41,13 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-struct device_d eth_dev = {
-	.id		= -1,
-	.name		= "fec_mpc5xxx",
-	.map_base	= MPC5XXX_FEC,
-	.platform_data	= &fec_info,
-};
-
 static int devices_init (void)
 {
 	add_cfi_flash_device(-1, 0xff000000, 16 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 64 * 1024 * 1024,
 		       IORESOURCE_MEM_WRITEABLE);
-	register_device(&eth_dev);
+	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0,
+			   IORESOURCE_MEM, &fec_info);
 
 	devfs_add_partition("nor0", 0x00f00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x00f60000, 0x20000, PARTITION_FIXED, "env0");
@@ -63,24 +57,12 @@ static int devices_init (void)
 
 device_initcall(devices_init);
 
-static struct device_d psc3 = {
-	.id	  = -1,
-	.name     = "mpc5xxx_serial",
-	.map_base = MPC5XXX_PSC3,
-	.size     = 4096,
-};
-
-static struct device_d psc6 = {
-	.id	  = -1,
-	.name     = "mpc5xxx_serial",
-	.map_base = MPC5XXX_PSC6,
-	.size     = 4096,
-};
-
 static int console_init(void)
 {
-	register_device(&psc3);
-	register_device(&psc6);
+	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC3, 4096,
+			   IORESOURCE_MEM, NULL);
+	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC6, 4096,
+			   IORESOURCE_MEM, NULL);
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
