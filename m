Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avmkQ-0004Ea-CC
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:16:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Apr 2016 16:16:27 +0200
Message-Id: <1461852989-26399-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461852989-26399-1-git-send-email-s.hauer@pengutronix.de>
References: <1461852989-26399-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] scripts: imx-usb-loader: make debug output more useful
To: Barebox List <barebox@lists.infradead.org>

- print write_memory message only in verbose mode, but in all
  cases when memory is written
- print more information about the DCD section just executed

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index f35a4c3..91151b8 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -506,6 +506,9 @@ static int write_memory(unsigned addr, unsigned val, int width)
 	write_reg_command[4] = (unsigned char)(addr >> 8);
 	write_reg_command[5] = (unsigned char)(addr);
 
+	if (verbose > 1)
+		printf("write memory reg: 0x%08x val: 0x%08x width: %d\n", addr, val, width);
+
 	switch (width) {
 		case 1:
 			ds = 0x8;
@@ -683,7 +686,7 @@ static int write_dcd_table_ivt(struct imx_flash_header_v2 *hdr, unsigned char *f
 		unsigned s_length = (dcd[1] << 8) + dcd[2];
 		unsigned char *s_end = dcd + s_length;
 
-		printf("sub dcd length %x\n", s_length);
+		printf("command: 0x%02x sub dcd length: 0x%04x, flags: 0x%02x\n", dcd[0], s_length, dcd[3]);
 
 		if ((dcd[0] != 0xcc) || (dcd[3] != 0x04)) {
 			printf("Skipping unknown sub tag 0x%02x with len %04x\n", dcd[0], s_length);
@@ -1206,8 +1209,6 @@ cleanup:
 static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width,
 		     int set_bits, int clear_bits)
 {
-	printf("wr 0x%08x 0x%08x\n", addr, val);
-
 	return write_memory(addr, val, width);
 }
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
