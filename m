Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr140052.outbound.protection.outlook.com
 ([40.107.14.52] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaKb-0004BG-Cm
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 10:27:03 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Thu, 24 Oct 2019 10:26:51 +0000
Message-ID: <1571912781-17152-6-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
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
Subject: [PATCH 5/5] firmware: zynqmp-fpga: print Xilinx bitstream header
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>

From: Michael Tretter <m.tretter@pengutronix.de>

The bitstream header has 5 fields, that start with a char for the type.
Four fields have a big-ending length and a null-terminated string for
the design name, the part number, and the date and time of creation. The
last field is a big-endian 32 bit unsigned int for the size of the
bitstream.

Print this info when loading the bitstream.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 51 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 6a32d28..7bf880f 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -39,6 +39,19 @@ struct fpgamgr {
 	u32 features;
 };
 
+struct bs_header {
+	__be16 length;
+	u8 padding[9];
+	__be16 size;
+	char entries[0];
+} __attribute__ ((packed));
+
+struct bs_header_entry {
+	char type;
+	__be16 length;
+	char data[0];
+} __attribute__ ((packed));
+
 /* Xilinx binary format header */
 static const u32 bin_format[] = {
 	DUMMY_WORD,
@@ -100,6 +113,42 @@ static int get_header_length(const char *buf, size_t size)
 	return -EINVAL;
 }
 
+static void zynqmp_fpga_show_header(const struct device_d *dev,
+			 struct bs_header *header, size_t size)
+{
+	struct bs_header_entry *entry;
+	unsigned int i;
+	unsigned int length;
+
+	for (i = 0; i < size - sizeof(*header); i += sizeof(*entry) + length) {
+		entry = (struct bs_header_entry *)&header->entries[i];
+		length = __be16_to_cpu(entry->length);
+
+		switch (entry->type) {
+		case 'a':
+			printf("Design: %s\n", entry->data);
+			break;
+		case 'b':
+			printf("Part number: %s\n", entry->data);
+			break;
+		case 'c':
+			printf("Date: %s\n", entry->data);
+			break;
+		case 'd':
+			printf("Time: %s\n", entry->data);
+			break;
+		case 'e':
+			/* Size entry does not have a length but is be32 int */
+			printf("Size: %d bytes\n",
+			       (length << 16) + (entry->data[0] << 8) + entry->data[1]);
+			return;
+		default:
+			dev_warn(dev, "Invalid header entry: %c", entry->type);
+			return;
+		}
+	}
+}
+
 static int fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
@@ -121,6 +170,8 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		status = header_length;
 		goto err_free;
 	}
+	zynqmp_fpga_show_header(&mgr->dev,
+			      (struct bs_header *)mgr->buf, header_length);
 
 	byte_order = get_byte_order((u32 *)&mgr->buf[header_length],
 			mgr->size - header_length);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
