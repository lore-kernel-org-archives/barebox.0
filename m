Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Oi-Sd
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:25 +0200
Message-Id: <20190510062135.11534-5-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/14] ARM: Layerscape: pblimage: Drop pbl end command
To: Barebox List <barebox@lists.infradead.org>

The PBL image tool includes two commands into the image. These are executed
after the initial image has been uploaded but before the final CRC
check. These commands are "flush" and "wait". According to the reference
manual a "flush" command can be used to read back the the value just
written to CCSR register space in order to let the previous write
complete. This seems unnecessary as the last write was never to the CCSR
register space. The "wait" command also seems unnecessary as the time
parameter is 0. As all this end_cmd stuff goes back to the PowerPC times
and everything still seems to work on Arm let's just remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/pblimage.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 6e83c523e5..56256260c8 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -53,7 +53,6 @@ static int in_fd;
 static uint32_t pbl_cmd_initaddr;
 static uint32_t pbi_crc_cmd1;
 static uint32_t pbi_crc_cmd2;
-static uint32_t pbl_end_cmd[4];
 
 enum arch {
 	ARCH_ARM,
@@ -210,16 +209,6 @@ static void pbl_parser(char *name)
 static void add_end_cmd(void)
 {
 	uint32_t crc32_pbl;
-	int i;
-	unsigned char *p = (unsigned char *)&pbl_end_cmd;
-
-	for (i = 0; i < 4; i++)
-		pbl_end_cmd[i] = htobe32(pbl_end_cmd[i]);
-
-	for (i = 0; i < 16; i++) {
-		*pmem_buf++ = *p++;
-		pbl_size++;
-	}
 
 	/* Add PBI CRC command. */
 	*pmem_buf++ = 0x08;
@@ -297,18 +286,10 @@ static int pblimage_check_params(void)
 		pbl_cmd_initaddr = loadaddr & PBL_ADDR_24BIT_MASK;
 		pbl_cmd_initaddr |= PBL_ACS_CONT_CMD;
 		pbl_cmd_initaddr += image_size;
-		pbl_end_cmd[0] = 0x09610000;
-		pbl_end_cmd[1] = 0x00000000;
-		pbl_end_cmd[2] = 0x096100c0;
-		pbl_end_cmd[3] = 0x00000000;
 	} else {
 		pbi_crc_cmd1 = 0x13;
 		pbi_crc_cmd2 = 0x80;
 		pbl_cmd_initaddr = 0x82000000;
-		pbl_end_cmd[0] = 0x091380c0;
-		pbl_end_cmd[1] = 0x00000000;
-		pbl_end_cmd[2] = 0x091380c0;
-		pbl_end_cmd[3] = 0x00000000;
 	}
 
 	next_pbl_cmd = pbl_cmd_initaddr;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
