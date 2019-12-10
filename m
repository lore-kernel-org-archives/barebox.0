Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedql-00014s-LW
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 11:38:45 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 10 Dec 2019 12:38:33 +0100
Message-Id: <20191210113833.9461-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v2] firmware: zynqmp-fpga: drop example bin format header
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@wolfvision.net, Michael Tretter <m.tretter@pengutronix.de>

Avoid the example bitstream header to validate the bitstream that should
be loaded into the FPGA. The header is mostly 0xFFFFFFFF with a few
special values at a certain offsets and can be better described with the
offsets and their magic values.

As a drive by, this fixes/removes a broken check in the header
validation. The != operator has a higher precedence than ?: and this
check should have had parenthesis around the ?: expression:

	bin_header[i] != (byte_order == XILINX_BYTE_ORDER_BIT) ?
              bin_format[i] : __swab32(bin_format[i])

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Reviewed-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
Changes in v2:
 - Fix subject zynmp-fpga -> zynqmp-fpga

 drivers/firmware/zynqmp-fpga.c | 121 +++++++++++++++++----------------
 1 file changed, 62 insertions(+), 59 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 1728e2a954..e02667355f 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -24,11 +24,32 @@
 #define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
 					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
 
+/*
+ * Xilinx KU040 Bitstream Composition:
+ *
+ * Bitstream can be provided with an optinal header (`struct bs_header`).
+ * The true bitstream starts with the binary-header composed of 21 words:
+ *
+ *  0: 0xFFFFFFFF (Dummy pad word)
+ *     ...
+ * 15: 0xFFFFFFFF (Dummy pad word)
+ * 16: 0x000000BB (Bus width auto detect word 1)
+ * 17: 0x11220044 (Bus width auto detect word 2)
+ * 18: 0xFFFFFFFF (Dummy pad word)
+ * 19: 0xFFFFFFFF (Dummy pad word)
+ * 20: 0xAA995566 (Sync word)
+ *
+ * See Xilinx UG570 (v1.11) September 30 2019, Chapter 9 "Configuration
+ * Details - Bitstream Composition" for further details.
+ */
 #define DUMMY_WORD			0xFFFFFFFF
-#define BUS_WIDTH_WORD_1		0x000000BB
-#define BUS_WIDTH_WORD_2		0x11220044
+#define BUS_WIDTH_AUTO_DETECT1_OFFSET	16
+#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
+#define BUS_WIDTH_AUTO_DETECT2_OFFSET	17
+#define BUS_WIDTH_AUTO_DETECT2		0x11220044
+#define SYNC_WORD_OFFSET		20
 #define SYNC_WORD			0xAA995566
-#define SYNC_WORD_OFFS			20
+#define BIN_HEADER_LENGTH		21
 
 enum xilinx_byte_order {
 	XILINX_BYTE_ORDER_BIT,
@@ -58,48 +79,6 @@ struct bs_header_entry {
 	char data[0];
 } __attribute__ ((packed));
 
-/*
- * Xilinx KU040 Bitstream Composition:
- * Bitstream can be provided with an optinal header (`struct bs_header`).
- * The true bitstream starts with the binary-header composed of 21 words:
- *
- *  1: 0xFFFFFFFF (Dummy pad word)
- *     ...
- * 16: 0xFFFFFFFF (Dummy pad word)
- * 17: 0x000000BB (Bus width auto detect word 1)
- * 18: 0x11220044 (Bus width auto detect word 2)
- * 19: 0xFFFFFFFF (Dummy pad word)
- * 20: 0xFFFFFFFF (Dummy pad word)
- * 21: 0xAA995566 (Sync word)
- *
- * Please refer to  Xilinx UG570 (v1.11) September 30 2019,
- * Chapter 9 Configuration Details - Bitstream Composition
- * for further details!
- */
-static const u32 bin_format[] = {
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	BUS_WIDTH_WORD_1,
-	BUS_WIDTH_WORD_2,
-	DUMMY_WORD,
-	DUMMY_WORD,
-	SYNC_WORD,
-};
-
 static void copy_words_swapped(u32 *dst, const u32 *src, size_t size)
 {
 	int i;
@@ -111,36 +90,59 @@ static void copy_words_swapped(u32 *dst, const u32 *src, size_t size)
 static int get_byte_order(const u32 *bin_header, size_t size,
 			  enum xilinx_byte_order *byte_order)
 {
-	if (size < sizeof(bin_format))
+	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))
 		return -EINVAL;
 
-	if (bin_header[SYNC_WORD_OFFS] == SYNC_WORD) {
+	if (bin_header[SYNC_WORD_OFFSET] == SYNC_WORD) {
 		*byte_order = XILINX_BYTE_ORDER_BIT;
 		return 0;
 	}
 
-	if (bin_header[SYNC_WORD_OFFS] == __swab32(SYNC_WORD)) {
-		*byte_order =  XILINX_BYTE_ORDER_BIN;
+	if (bin_header[SYNC_WORD_OFFSET] == __swab32(SYNC_WORD)) {
+		*byte_order = XILINX_BYTE_ORDER_BIN;
 		return 0;
 	}
 
 	return -EINVAL;
 }
 
-static int is_bin_header_valid(const u32 *bin_header, size_t size,
-			       enum xilinx_byte_order byte_order)
+static bool is_bin_header_valid(const u32 *bin_header, size_t size,
+				enum xilinx_byte_order byte_order)
 {
-	int i;
+	size_t i;
 
-	if (size < ARRAY_SIZE(bin_format))
-		return 0;
+	if (size < BIN_HEADER_LENGTH * sizeof(*bin_header))
+		return false;
+
+	for (i = 0; i < BIN_HEADER_LENGTH; i++, bin_header++) {
+		u32 current;
+		u32 expected;
+
+		if (byte_order == XILINX_BYTE_ORDER_BIT)
+			current = *bin_header;
+		else
+			current = __swab32(*bin_header);
 
-	for (i = 0; i < ARRAY_SIZE(bin_format); i++)
-		if (bin_header[i] != (byte_order == XILINX_BYTE_ORDER_BIT) ?
-				  bin_format[i] : __swab32(bin_format[i]))
-			return 0;
+		switch (i) {
+		case BUS_WIDTH_AUTO_DETECT1_OFFSET:
+			expected = BUS_WIDTH_AUTO_DETECT1;
+			break;
+		case BUS_WIDTH_AUTO_DETECT2_OFFSET:
+			expected = BUS_WIDTH_AUTO_DETECT2;
+			break;
+		case SYNC_WORD_OFFSET:
+			expected = SYNC_WORD;
+			break;
+		default:
+			expected = DUMMY_WORD;
+			break;
+		}
+
+		if (current != expected)
+			return false;
+	}
 
-	return 1;
+	return true;
 }
 
 static int get_header_length(const char *header, size_t size)
@@ -227,6 +229,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		goto err_free;
 
 	if (!is_bin_header_valid(body, body_length, byte_order)) {
+		dev_err(&mgr->dev, "Invalid bitstream header\n");
 		status =  -EINVAL;
 		goto err_free;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
