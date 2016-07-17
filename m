Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOoPv-0004Tz-GV
 for barebox@lists.infradead.org; Sun, 17 Jul 2016 15:55:45 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Jul 2016 17:53:17 +0200
Message-Id: <1468770798-22102-4-git-send-email-akurz@blala.de>
In-Reply-To: <1468770798-22102-1-git-send-email-akurz@blala.de>
References: <1468770798-22102-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 4/5] scripts: imx-usb-loader: structured protocol access
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Do some cleanup and access the elements of Serial Download Protocol
messages in endianess-portable manner using proper typed struct members.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 132 +++++++++++++++++++++----------------------
 1 file changed, 65 insertions(+), 67 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 9607ce6..70d3ec5 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -32,6 +32,7 @@
 #include <stdlib.h>
 #include <libusb.h>
 #include <getopt.h>
+#include <arpa/inet.h>
 #include <linux/kernel.h>
 
 #include "imx.h"
@@ -148,6 +149,21 @@ struct mach_id imx_ids[] = {
 	},
 };
 
+#define SDP_READ_REG		0x0101
+#define SDP_WRITE_REG		0x0202
+#define SDP_WRITE_FILE		0x0404
+#define SDP_ERROR_STATUS	0x0505
+#define SDP_JUMP_ADDRESS	0x0b0b
+
+struct sdp_command  {
+	uint16_t cmd;
+	uint32_t addr;
+	uint8_t format;
+	uint32_t cnt;
+	uint32_t data;
+	uint8_t rsvd;
+} __attribute__((packed));
+
 static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
 {
 	int i;
@@ -362,16 +378,18 @@ int do_status(void)
 	unsigned char tmp[64];
 	int retry = 0;
 	int err;
-	const unsigned char status_command[] = {
-		5, 5, 0, 0, 0, 0,
-		0,
-		0, 0, 0, 0,
-		0, 0, 0, 0,
-		0
+	static const struct sdp_command status_command = {
+		.cmd = SDP_ERROR_STATUS,
+		.addr = 0,
+		.format = 0,
+		.cnt = 0,
+		.data = 0,
+		.rsvd = 0,
 	};
 
 	for (;;) {
-		err = transfer(1, (unsigned char*)status_command, 16, &last_trans);
+		err = transfer(1, (unsigned char *) &status_command, 16,
+			       &last_trans);
 
 		if (verbose > 2)
 			printf("report 1, wrote %i bytes, err=%i\n", last_trans, err);
@@ -408,14 +426,13 @@ int do_status(void)
 
 static int read_memory(unsigned addr, void *dest, unsigned cnt)
 {
-	static unsigned char read_reg_command[] = {
-		1,
-		1,
-		V(0),		/* address */
-		0x20,		/* format */
-		V(0x00000004),	/* data count */
-		V(0),		/* data */
-		0x00,		/* type */
+	static struct sdp_command read_reg_command = {
+		.cmd = SDP_READ_REG,
+		.addr = 0,
+		.format = 0x20,
+		.cnt = 0,
+		.data = 0,
+		.rsvd = 0,
 	};
 
 	int retry = 0;
@@ -423,18 +440,12 @@ static int read_memory(unsigned addr, void *dest, unsigned cnt)
 	int err;
 	int rem;
 	unsigned char tmp[64];
-	read_reg_command[2] = (unsigned char)(addr >> 24);
-	read_reg_command[3] = (unsigned char)(addr >> 16);
-	read_reg_command[4] = (unsigned char)(addr >> 8);
-	read_reg_command[5] = (unsigned char)(addr);
-
-	read_reg_command[7] = (unsigned char)(cnt >> 24);
-	read_reg_command[8] = (unsigned char)(cnt >> 16);
-	read_reg_command[9] = (unsigned char)(cnt >> 8);
-	read_reg_command[10] = (unsigned char)(cnt);
+	read_reg_command.addr = htonl(addr);
+	read_reg_command.cnt = htonl(cnt);
 
 	for (;;) {
-		err = transfer(1, read_reg_command, 16, &last_trans);
+		err = transfer(1, (unsigned char *) &read_reg_command, 16,
+			       &last_trans);
 		if (!err)
 			break;
 		printf("read_reg_command err=%i, last_trans=%i\n", err, last_trans);
@@ -485,47 +496,40 @@ static int write_memory(unsigned addr, unsigned val, int width)
 	int last_trans;
 	int err = 0;
 	unsigned char tmp[64];
-	unsigned char ds;
-	unsigned char write_reg_command[] = {
-		2,
-		2,
-		V(0),		/* address */
-		0x0,		/* format */
-		V(0x00000004),	/* data count */
-		V(0),		/* data */
-		0x00,		/* type */
+	static struct sdp_command write_reg_command = {
+		.cmd = SDP_WRITE_REG,
+		.addr = 0,
+		.format = 0,
+		.cnt = 0,
+		.data = 0,
+		.rsvd = 0,
 	};
-	write_reg_command[2] = (unsigned char)(addr >> 24);
-	write_reg_command[3] = (unsigned char)(addr >> 16);
-	write_reg_command[4] = (unsigned char)(addr >> 8);
-	write_reg_command[5] = (unsigned char)(addr);
+
+	write_reg_command.addr = htonl(addr);
+	write_reg_command.cnt = htonl(4);
 
 	if (verbose > 1)
 		printf("write memory reg: 0x%08x val: 0x%08x width: %d\n", addr, val, width);
 
 	switch (width) {
 		case 1:
-			ds = 0x8;
+			write_reg_command.format = 0x8;
 			break;
 		case 2:
-			ds = 0x10;
+			write_reg_command.format = 0x10;
 			break;
 		case 4:
-			ds = 0x20;
+			write_reg_command.format = 0x20;
 			break;
 		default:
 			return -1;
 	}
 
-	write_reg_command[6] = ds;
-
-	write_reg_command[11] = (unsigned char)(val >> 24);
-	write_reg_command[12] = (unsigned char)(val >> 16);
-	write_reg_command[13] = (unsigned char)(val >> 8);
-	write_reg_command[14] = (unsigned char)(val);
+	write_reg_command.data = htonl(val);
 
 	for (;;) {
-		err = transfer(1, write_reg_command, 16, &last_trans);
+		err = transfer(1, (unsigned char *) &write_reg_command, 16,
+			       &last_trans);
 		if (!err)
 			break;
 		printf("write_reg_command err=%i, last_trans=%i\n", err, last_trans);
@@ -580,15 +584,15 @@ static int modify_memory(unsigned addr, unsigned val, int width, int set_bits, i
 
 static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char type)
 {
-	static unsigned char dl_command[] = {
-		0x04,
-		0x04,
-		V(0),		/* address */
-		0x00,		/* format */
-		V(0x00000020),	/* data count */
-		V(0),		/* data */
-		0xaa,		/* type */
+	static struct sdp_command dl_command = {
+		.cmd = SDP_WRITE_FILE,
+		.addr = 0,
+		.format = 0,
+		.cnt = 0,
+		.data = 0,
+		.rsvd = 0,
 	};
+
 	int last_trans, err;
 	int retry = 0;
 	unsigned transfer_size = 0;
@@ -596,19 +600,13 @@ static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char typ
 	void *p;
 	int cnt;
 
-	dl_command[2] = (unsigned char)(dladdr >> 24);
-	dl_command[3] = (unsigned char)(dladdr >> 16);
-	dl_command[4] = (unsigned char)(dladdr >> 8);
-	dl_command[5] = (unsigned char)(dladdr);
-
-	dl_command[7] = (unsigned char)(len >> 24);
-	dl_command[8] = (unsigned char)(len >> 16);
-	dl_command[9] = (unsigned char)(len >> 8);
-	dl_command[10] = (unsigned char)(len);
-	dl_command[15] =  type;
+	dl_command.addr = htonl(dladdr);
+	dl_command.cnt = htonl(len);
+	dl_command.rsvd = type;
 
 	for (;;) {
-		err = transfer(1, dl_command, 16, &last_trans);
+		err = transfer(1, (unsigned char *) &dl_command, 16,
+			       &last_trans);
 		if (!err)
 			break;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
