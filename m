Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avmkQ-0004Ed-CE
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:16:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Apr 2016 16:16:28 +0200
Message-Id: <1461852989-26399-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] scripts: imx-usb-loader: support set_bits/clear_bits
To: Barebox List <barebox@lists.infradead.org>

Now that we can use set_bits/clear_bits in the DCD tables, add support
for this in the imx-usb-loader aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 45 ++++++++++++++++++++++++++++++++++++++------
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 91151b8..cf9d610 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -412,7 +412,7 @@ int do_status(void)
 
 #define V(a) (((a) >> 24) & 0xff), (((a) >> 16) & 0xff), (((a) >> 8) & 0xff), ((a) & 0xff)
 
-static int read_memory(unsigned addr, unsigned char *dest, unsigned cnt)
+static int read_memory(unsigned addr, void *dest, unsigned cnt)
 {
 	static unsigned char read_reg_command[] = {
 		1,
@@ -559,6 +559,31 @@ static int write_memory(unsigned addr, unsigned val, int width)
 	return err;
 }
 
+static int modify_memory(unsigned addr, unsigned val, int width, int set_bits, int clear_bits)
+{
+	int err;
+
+	if (set_bits || clear_bits) {
+		uint32_t r;
+
+		err = read_memory(addr, &r, 4);
+		if (err < 0)
+			return err;
+
+		if (verbose > 1)
+			printf("reg 0x%08x val: 0x%08x %s0x%08x\n", addr, r,
+			       set_bits ? "|= " : "&= ~", val);
+
+		if (set_bits)
+			r |= val;
+		if (clear_bits)
+			r &= ~val;
+		val = r;
+	}
+
+	return write_memory(addr, val, 4);
+}
+
 static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char type)
 {
 	static unsigned char dl_command[] = {
@@ -685,15 +710,24 @@ static int write_dcd_table_ivt(struct imx_flash_header_v2 *hdr, unsigned char *f
 	while (dcd < dcd_end) {
 		unsigned s_length = (dcd[1] << 8) + dcd[2];
 		unsigned char *s_end = dcd + s_length;
+		int set_bits = 0, clear_bits = 0;
 
 		printf("command: 0x%02x sub dcd length: 0x%04x, flags: 0x%02x\n", dcd[0], s_length, dcd[3]);
 
-		if ((dcd[0] != 0xcc) || (dcd[3] != 0x04)) {
+		if ((dcd[0] != 0xcc)) {
 			printf("Skipping unknown sub tag 0x%02x with len %04x\n", dcd[0], s_length);
 			usleep(50000);
 			dcd += s_length;
 			continue;
 		}
+
+		if (dcd[3] & PARAMETER_FLAG_MASK) {
+			if (dcd[3] & PARAMETER_FLAG_SET)
+				set_bits = 1;
+			else
+				clear_bits = 1;
+		}
+
 		dcd += 4;
 
 		if (s_end > dcd_end) {
@@ -706,9 +740,8 @@ static int write_dcd_table_ivt(struct imx_flash_header_v2 *hdr, unsigned char *f
 			unsigned val = (dcd[4] << 24) | (dcd[5] << 16) | (dcd[6] << 8) | dcd[7];
 
 			dcd += 8;
-			err = write_memory(addr, val, 4);
-			if (err < 0)
-				return err;
+
+			modify_memory(addr, val, 4, set_bits, clear_bits);
 		}
 	}
 	return err;
@@ -1209,7 +1242,7 @@ cleanup:
 static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width,
 		     int set_bits, int clear_bits)
 {
-	return write_memory(addr, val, width);
+	return modify_memory(addr, val, width, set_bits, clear_bits);
 }
 
 static int parse_initfile(const char *filename)
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
