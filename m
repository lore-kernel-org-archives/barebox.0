Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001ms-Da
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:23 +0200
Message-Id: <1317112109-23311-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] pcm030: use new functionality
To: barebox@lists.infradead.org

We introduced several new functions to ease our life
on ppc, use themn on the pcm030:

- setup iomux and bus clocks in board code
- add sdram memory according to detected size

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/pcm030.c |   55 +++++++++++++++++----------------------
 include/common.h                |    2 +-
 2 files changed, 25 insertions(+), 32 deletions(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index f408c3d..d1d84d2 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -43,9 +43,18 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 
 static int devices_init (void)
 {
-	add_cfi_flash_device(-1, 0xff000000, 16 * 1024 * 1024, 0);
-	add_mem_device("ram0", 0x0, 64 * 1024 * 1024,
-		       IORESOURCE_MEM_WRITEABLE);
+	unsigned long sdramsize;
+
+	/*
+	 * Flash can be 16MB or 32MB, setup for the last 32MB no matter
+	 * what we find later.
+	 */
+	mpc5200_setup_cs(MPC5200_BOOTCS, 0xfe000000, SZ_32M, 0x0001dd00);
+	add_cfi_flash_device(-1, 0xfe000000, 32 * 1024 * 1024, 0);
+
+	sdramsize = mpc5200_get_sdram_size(0) + mpc5200_get_sdram_size(1);
+	barebox_add_memory_bank("ram0", 0x0, sdramsize);
+
 	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0,
 			   IORESOURCE_MEM, &fec_info);
 
@@ -109,19 +118,21 @@ static void sdram_start (int hi_addr)
 	__asm__ volatile ("sync");
 }
 
-/*
- * ATTENTION: Although partially referenced initdram does NOT make real use
- *            use of CFG_SDRAM_BASE. The code does not work if CFG_SDRAM_BASE
- *            is something else than 0x00000000.
- */
-
-long int initdram (int board_type)
+void initdram (int board_type)
 {
 	ulong dramsize = 0;
-	ulong dramsize2 = 0;
 
 	ulong test1, test2;
 
+	/* Setup pin multiplexing */
+
+	/* PSC6=UART, PSC3=UART ; Ether=100MBit with MD */
+	*(vu_long *)MPC5XXX_GPS_PORT_CONFIG = 0x00558c10;
+	*(vu_long *)MPC5XXX_CS_BURST = 0x00000000;
+	*(vu_long *)MPC5XXX_CS_DEADCYCLE = 0x33333333;
+
+	mpc5200_setup_bus_clocks(1, 4);
+
 	if (get_pc() > SZ_128M) {
 		/* setup SDRAM chip selects */
 		*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0x0000001b;/* 256MB at 0x0 */
@@ -141,9 +152,9 @@ long int initdram (int board_type)
 
 		/* find RAM size using SDRAM CS0 only */
 		sdram_start(0);
-		test1 = get_ram_size((ulong *)CFG_SDRAM_BASE, 0x10000000);
+		test1 = get_ram_size((ulong *)0, 0x10000000);
 		sdram_start(1);
-		test2 = get_ram_size((ulong *)CFG_SDRAM_BASE, 0x10000000);
+		test2 = get_ram_size((ulong *)0, 0x10000000);
 		if (test1 > test2) {
 			sdram_start(0);
 			dramsize = test1;
@@ -163,24 +174,6 @@ long int initdram (int board_type)
 			*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0; /* disabled */
 		}
 	}
-
-	/* retrieve size of memory connected to SDRAM CS0 */
-	dramsize = *(vu_long *)MPC5XXX_SDRAM_CS0CFG & 0xFF;
-	if (dramsize >= 0x13) {
-		dramsize = (1 << (dramsize - 0x13)) << 20;
-	} else {
-		dramsize = 0;
-	}
-
-	/* retrieve size of memory connected to SDRAM CS1 */
-	dramsize2 = *(vu_long *)MPC5XXX_SDRAM_CS1CFG & 0xFF;
-	if (dramsize2 >= 0x13) {
-		dramsize2 = (1 << (dramsize2 - 0x13)) << 20;
-	} else {
-		dramsize2 = 0;
-	}
-
-	return dramsize + dramsize2;
 }
 
 #if defined(CONFIG_OF_FLAT_TREE) && defined(CONFIG_OF_BOARD_SETUP)
diff --git a/include/common.h b/include/common.h
index 0ce4a70..e34bbea 100644
--- a/include/common.h
+++ b/include/common.h
@@ -94,7 +94,7 @@ void __noreturn hang (void);
 void __noreturn panic(const char *fmt, ...);
 
 /* */
-long int initdram (int);
+void initdram (int);
 char *size_human_readable(ulong size);
 
 /* common/main.c */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
