Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SLDXh-000616-SL
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 13:06:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0006VZ-72
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SLDXX-0003sO-4J
 for barebox@lists.infradead.org; Fri, 20 Apr 2012 15:06:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Apr 2012 15:06:14 +0200
Message-Id: <1334927177-13912-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
References: <1334927177-13912-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] netX: adapt it to the current boot spec
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 scripts/gen_netx_image.c |   18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/scripts/gen_netx_image.c b/scripts/gen_netx_image.c
index af279d5..5c2207c 100644
--- a/scripts/gen_netx_image.c
+++ b/scripts/gen_netx_image.c
@@ -9,12 +9,6 @@
 #include <libgen.h>
 #include <getopt.h>
 
-#define NETX_IDENTIFICATION   0x5854454E /* Valid signature 'N' 'E' 'T' 'X' */
-
-#define MAGICCOOKIE_8BIT      0xF8BEAF08  /* Cookie used for  8Bit Flashes */
-#define MAGICCOOKIE_16BIT     0xF8BEAF16  /* Cookie used for 16Bit Flashes */
-#define MAGICCOOKIE_32BIT     0xF8BEAF32  /* Cookie used for 32Bit Flashes */
-
 struct netx_block_normal {
 	uint32_t sdram_general_ctrl;	/* SDRam General control value */
 	uint32_t sdram_timing_ctrl;	/* SDRam Timing control register value */
@@ -31,6 +25,9 @@ struct netx_block_expbus {
 
 struct netx_bootblock {
 	uint32_t cookie;     /* Cookie identifying bus width and valid bootblock */
+# define MAGICCOOKIE_8BIT      0xF8BEAF08  /* Cookie used for  8Bit Flashes */
+# define MAGICCOOKIE_16BIT     0xF8BEAF16  /* Cookie used for 16Bit Flashes */
+# define MAGICCOOKIE_32BIT     0xF8BEAF32  /* Cookie used for 32Bit Flashes */
 
 	union {
 		uint32_t mem_ctrl;        /* Parallel/Serial Flash Mode for setting up timing parameters */
@@ -43,6 +40,7 @@ struct netx_bootblock {
 	uint32_t appl_size;         /* size of application in DWORDs */
 	uint32_t appl_start_addr;    /* Relocation address of application */
 	uint32_t signature;        /* Bootblock signature ('NETX') */
+# define NETX_IDENTIFICATION   0x5854454E /* Valid signature 'N' 'E' 'T' 'X' */
 
 	union {
 		struct netx_block_normal normal;
@@ -50,7 +48,12 @@ struct netx_bootblock {
 	} config;
 
 	uint32_t misc_asic_ctrl;            /* ASIC CTRL register value */
-	uint32_t reserved[2];
+	uint32_t UserParameter;	/* Serial number or user parameter */
+	uint32_t SourceType;	/* 1 = parallel falsh at the SRAM bus */
+# define ST_PFLASH 1
+# define ST_SFLASH 2
+# define ST_SEEPROM 3
+
 	uint32_t boot_checksum;            /* Bootblock checksum (complement of DWORD sum over bootblock) */
 };
 
@@ -179,6 +182,7 @@ int main(int argc, char *argv[])
 	nb->signature = NETX_IDENTIFICATION;
 	nb->config.normal.sdram_general_ctrl = sdramctrl;
 	nb->config.normal.sdram_timing_ctrl = sdramtimctrl;
+	nb->SourceType = ST_PFLASH;
 
 	ofs = sizeof(struct netx_bootblock);
 	bytes = barebox_size;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
