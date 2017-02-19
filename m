Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfWgu-0005nG-H3
 for barebox@lists.infradead.org; Sun, 19 Feb 2017 18:58:38 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 19 Feb 2017 19:57:58 +0100
Message-Id: <1487530678-7615-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] scripts: imx-usb-loader: implement DCD v2 check command
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The DCD v2 check command supported by i.MX53 and later SoC polls a given
memory location as long as a given condition is true.
Enable imx-usb-loader to perform this check. When the timeout is hit,
imx-usb-loader returns an error. For practical reasons the timeout
computation will differ from the native implementation, since performing
check commands via USB will be much slower compared to native processing.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 95 +++++++++++++++++++++++++++++++++++++++++++-
 scripts/imx/imx.h            | 16 ++++++++
 2 files changed, 109 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 9de7bb3..4105ade 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -798,6 +798,98 @@ static int do_dcd_v2_cmd_write(const unsigned char *dcd)
 	return 0;
 }
 
+static int do_dcd_v2_cmd_check(const unsigned char *dcd)
+{
+	uint32_t mask;
+	uint32_t poll_count = 0;
+	int bytes;
+	enum imx_dcd_v2_check_cond cond;
+	struct imx_dcd_v2_check *check = (struct imx_dcd_v2_check *) dcd;
+	switch (ntohs(check->length)) {
+	case 12:
+		/* poll indefinitely */
+		poll_count = 0xffffffff;
+		break;
+	case 16:
+		poll_count = ntohl(check->count);
+		if (poll_count == 0)
+			/* this command behaves as for NOP */
+			return 0;
+		break;
+	default:
+		fprintf(stderr, "Error: invalid DCD check length\n");
+		return -1;
+	}
+
+	switch (check->param & 7) {
+	case 1:
+	case 2:
+	case 4:
+		bytes = check->param & 7;
+		break;
+	default:
+		fprintf(stderr, "Error: invalid DCD check size\n");
+		return -1;
+	}
+
+	switch ((check->param & 0xf8) >> 3) {
+	case check_all_bits_clear:
+	case check_all_bits_set:
+	case check_any_bit_clear:
+	case check_any_bit_set:
+		cond = (check->param & 0xf8) >> 3;
+		break;
+	default:
+		fprintf(stderr, "Error: invalid DCD check condition\n");
+		return -1;
+	}
+
+	mask = ntohl(check->mask);
+
+	fprintf(stderr, "DCD check condition %i on address 0x%x\n",
+		cond, ntohl(check->addr));
+	/* Reduce the poll count to some arbitrary practical limit.
+	   Polling via SRP commands will be much slower compared to
+	   polling when DCD is interpreted by the SOC microcode.
+	*/
+	if (poll_count > 1000)
+		poll_count = 1000;
+
+	while (poll_count > 0) {
+		uint32_t data = 0;
+		int ret = read_memory(ntohl(check->addr), &data, bytes);
+		if (ret < 0)
+			return ret;
+
+		data &= mask;
+
+		switch (cond) {
+		case check_all_bits_clear:
+			if (data != 0)
+				return 0;
+			break;
+		case check_all_bits_set:
+			if (data != mask)
+				return 0;
+			break;
+		case check_any_bit_clear:
+			if (data == mask)
+				return 0;
+			break;
+		case check_any_bit_set:
+			if (data == 0)
+				return 0;
+			break;
+		}
+		poll_count--;
+	}
+
+	fprintf(stderr, "Error: timeout waiting for DCD check condition %i "
+		"on address 0x%08x to match 0x%08x\n", cond,
+		ntohl(check->addr), ntohl(check->mask));
+	return -1;
+}
+
 static int process_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
 			       const unsigned char *file_start, unsigned cnt)
 {
@@ -850,8 +942,7 @@ static int process_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
 			ret = do_dcd_v2_cmd_write(dcd);
 			break;
 		case TAG_CHECK:
-			fprintf(stderr, "DCD check not implemented yet\n");
-			usleep(50000);
+			ret = do_dcd_v2_cmd_check(dcd);
 			break;
 		case TAG_UNLOCK:
 			fprintf(stderr, "DCD unlock not implemented yet\n");
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 57c7525..f32ae52 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -95,4 +95,20 @@ struct imx_dcd_v2_write {
 	struct imx_dcd_v2_write_rec data[MAX_RECORDS_DCD_V2];
 } __attribute__((packed));
 
+struct imx_dcd_v2_check {
+	uint8_t tag;
+	uint16_t length;
+	uint8_t param;
+	uint32_t addr;
+	uint32_t mask;
+	uint32_t count;
+} __attribute__((packed));
+
+enum imx_dcd_v2_check_cond {
+	check_all_bits_clear = 0,
+	check_all_bits_set = 1,
+	check_any_bit_clear = 2,
+	check_any_bit_set = 3,
+} __attribute__((packed));
+
 int parse_config(struct config_data *data, const char *filename);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
