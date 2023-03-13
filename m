Delivery-date: Mon, 13 Mar 2023 14:44:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiTl-0061qY-78
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:44:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiTk-0005mY-6g
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:44:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kaTKKQ4SUKuRf3V4a5Pq9al8vORV9zTeXWDAa0UXeFU=; b=PbFXmJ/YL572CTPnNdc9TRRQaF
	ylTewVm7OHOGbR3FXhv1r0hD8s76SccD8MVr7lIsY92X7Zw6glRTaD09TBwTynvs7FFUC9uJb97JO
	75zCm9c/k8Mhl9QruKWSDaRzpHeX8Gu3zgFgR2n+ebdewQ14GkdQn/Ds6HkESNLv5irwrBgQXVWBv
	xn0v6xnDigwBRp2aG8/DKd+Em16qKcnn0N/rdBy9R/+cy8sI+Jr6wlJG14OHLQC4dPEasfIN+WaZl
	OBvxW4BRWy96a3jniEPWQ+CzekH7bbbaK/FBCIRYnZSMHRjwL68VT1chIkZpcKuUffTiBuWRynqO2
	D3ujp04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiSD-005whC-Be; Mon, 13 Mar 2023 13:43:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQs-005vmO-1U
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQq-0004N9-SQ
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-15-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064146_276286_47C8827E 
X-CRM114-Status: GOOD (  22.58  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/23] scripts: imx-image: add FlexSPI image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By this commit board files can request building FlexSPI compatible
images via the .imxcfg parameters:
 - flexspi_fcfbofs,
 - flexspi_ivtofs.

If specified imx-image will build one image which can be deployed to
eMMC/SD/QSPI using the appropriate update handlers.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/imx-header.h | 118 ++++++++++++++++++++++++++++++++++++++++
 scripts/imx/imx-image.c       | 124 +++++++++++++++++++++++++++++++++++++++++-
 scripts/imx/imx.c             |  26 +++++++++
 3 files changed, 267 insertions(+), 1 deletion(-)

diff --git a/include/mach/imx/imx-header.h b/include/mach/imx/imx-header.h
index 8e968e6efb..b11b57c372 100644
--- a/include/mach/imx/imx-header.h
+++ b/include/mach/imx/imx-header.h
@@ -97,6 +97,8 @@ static inline bool is_imx_flash_header_v2(const void *blob)
 struct config_data {
 	uint32_t image_load_addr;
 	uint32_t image_ivt_offset;
+	uint32_t image_flexspi_ivt_offset;
+	uint32_t image_flexspi_fcfb_offset;
 	uint32_t image_size;
 	uint32_t max_load_size;
 	uint32_t load_size;
@@ -149,4 +151,120 @@ enum imx_dcd_v2_check_cond {
 	until_any_bit_set = 3, /* until ((*address & mask) != 0) { ...} */
 } __attribute__((packed));
 
+/* FlexSPI conifguration block FCFB */
+#define FCFB_HEAD_TAG			0x46434642	/* "FCFB" */
+#define FCFB_VERSION			0x56010000	/* V<major><minor><bugfix> = V100 */
+#define FCFB_SAMLPE_CLK_SRC_INTERNAL	0
+#define FCFB_DEVTYPE_SERIAL_NOR		1
+#define FCFB_SFLASH_PADS_SINGLE		1
+#define FCFB_SFLASH_PADS_DUAL		2
+#define FCFB_SFLASH_PADS_QUAD		4
+#define FCFB_SFLASH_PADS_OCTAL		8
+#define FCFB_SERIAL_CLK_FREQ_30MHZ	1
+#define FCFB_SERIAL_CLK_FREQ_50MHZ	2
+#define FCFB_SERIAL_CLK_FREQ_60MHZ	3
+#define FCFB_SERIAL_CLK_FREQ_75MHZ	4
+#define FCFB_SERIAL_CLK_FREQ_80MHZ	5
+#define FCFB_SERIAL_CLK_FREQ_100MHZ	6
+#define FCFB_SERIAL_CLK_FREQ_133MHZ	7
+#define FCFB_SERIAL_CLK_FREQ_166MHZ	8
+
+/* Instruction set for the LUT register. */
+#define LUT_STOP			0x00
+#define LUT_CMD				0x01
+#define LUT_ADDR			0x02
+#define LUT_CADDR_SDR			0x03
+#define LUT_MODE			0x04
+#define LUT_MODE2			0x05
+#define LUT_MODE4			0x06
+#define LUT_MODE8			0x07
+#define LUT_NXP_WRITE			0x08
+#define LUT_NXP_READ			0x09
+#define LUT_LEARN_SDR			0x0A
+#define LUT_DATSZ_SDR			0x0B
+#define LUT_DUMMY			0x0C
+#define LUT_DUMMY_RWDS_SDR		0x0D
+#define LUT_JMP_ON_CS			0x1F
+#define LUT_CMD_DDR			0x21
+#define LUT_ADDR_DDR			0x22
+#define LUT_CADDR_DDR			0x23
+#define LUT_MODE_DDR			0x24
+#define LUT_MODE2_DDR			0x25
+#define LUT_MODE4_DDR			0x26
+#define LUT_MODE8_DDR			0x27
+#define LUT_WRITE_DDR			0x28
+#define LUT_READ_DDR			0x29
+#define LUT_LEARN_DDR			0x2A
+#define LUT_DATSZ_DDR			0x2B
+#define LUT_DUMMY_DDR			0x2C
+#define LUT_DUMMY_RWDS_DDR		0x2D
+
+/*
+ * Macro for constructing the LUT entries with the following
+ * register layout:
+ *
+ *  -----------------------
+ *  | INSTR | PAD | OPRND |
+ *  -----------------------
+ */
+#define PAD_SHIFT		8
+#define INSTR_SHIFT		10
+#define OPRND_SHIFT		16
+
+/* Macros for constructing the LUT register. */
+#define LUT_DEF(ins, pad, opr)	\
+	(((ins) << INSTR_SHIFT) | ((pad) << PAD_SHIFT) | (opr))
+
+struct imx_fcfb_common {
+	uint32_t tag;
+	uint32_t version;
+	uint32_t reserved1;
+	uint8_t read_sample;
+	uint8_t datahold;
+	uint8_t datasetup;
+	uint8_t coladdrwidth;
+	uint8_t devcfgenable;
+	uint8_t reserved2[3];
+	uint32_t devmodeseq;
+	uint32_t devmodearg;
+	uint8_t cmd_enable;
+	uint8_t reserved3[3];
+	uint32_t cmd_seq[4];
+	uint32_t cmd_arg[4];
+	uint32_t controllermisc;
+	uint8_t dev_type;
+	uint8_t sflash_pad;
+	uint8_t serial_clk;
+	uint8_t lut_custom;
+	uint32_t reserved4[2];
+	uint32_t sflashA1;
+	uint32_t sflashA2;
+	uint32_t sflashB1;
+	uint32_t sflashB2;
+	uint32_t cspadover;
+	uint32_t sclkpadover;
+	uint32_t datapadover;
+	uint32_t dqspadover;
+	uint32_t timeout_ms;
+	uint32_t commandInt_ns;
+	uint32_t datavalid_ns;
+	uint16_t busyoffset;
+	uint16_t busybitpolarity;
+	struct {
+		struct {
+			uint16_t instr[8];
+		} seq[16];
+	} lut;
+	uint16_t lut_custom_seq[24];
+	uint8_t reserved5[16];
+} __attribute__((packed));
+
+struct imx_fcfb_nor {
+	struct imx_fcfb_common	memcfg;
+	uint32_t		page_sz;
+	uint32_t		sector_sz;
+	uint32_t		ipcmd_serial_clk;
+	uint8_t			reserved[52];
+} __attribute__((packed));
+
 #endif
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index aaec4cc0fd..1f96b38390 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -20,6 +20,7 @@
 #include "imx.h"
 
 #include <include/filetype.h>
+#include <include/linux/sizes.h>
 
 #define FLASH_HEADER_OFFSET 0x400
 #define ARM_HEAD_SIZE_INDEX	(ARM_HEAD_SIZE_OFFSET / sizeof(uint32_t))
@@ -289,6 +290,18 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
 	return 0;
 }
 
+static bool flexspi_image(const struct config_data *data)
+{
+	/*
+	 *           | FlexSPI-FCFB  | FlexSPI-IVT
+	 * -----------------------------------------
+	 * i.MX8MM   |   0x0         |  0x1000
+	 * i.MX8MN/P |   0x400       |  0x0
+	 */
+
+	return data->image_flexspi_ivt_offset || data->image_flexspi_fcfb_offset;
+}
+
 /*
  * ============================================================================
  * i.MX flash header v2 handling. Found on i.MX50, i.MX53 and i.MX6
@@ -363,6 +376,114 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
 	return imagesize;
 }
 
+#define LUT_PAD_1	0
+#define LUT_PAD_2	1
+#define LUT_PAD_4	2
+#define LUT_PAD_8	3
+
+static size_t add_flexspi_fcfb_header(const struct config_data *data, void *buf)
+{
+	uint32_t fcfb_offset = data->image_flexspi_fcfb_offset;
+	const struct imx_fcfb_nor nor_conf = {
+		.memcfg = {
+			.tag = htobe32(FCFB_HEAD_TAG),
+			.version = htole32(FCFB_VERSION),
+			.read_sample = FCFB_SAMLPE_CLK_SRC_INTERNAL,
+			/* flash CS hold time, recommended by RM */
+			.datahold =  0x03,
+			/* flash CS setup time, recommended by RM */
+			.datasetup = 0x03,
+			/* 3 - Hyperflash, 12/13 serial NAND, 0 - other */
+			.coladdrwidth = 0,
+			.devcfgenable = 0,
+			.cmd_enable =  0,
+			.controllermisc =  0,
+			.dev_type = FCFB_DEVTYPE_SERIAL_NOR,
+			.sflash_pad = FCFB_SFLASH_PADS_SINGLE,
+			.serial_clk = FCFB_SERIAL_CLK_FREQ_50MHZ,
+			.sflashA1 = htole32(SZ_256M),
+			.lut.seq[0] = {
+				.instr = {
+					htole16(LUT_DEF(LUT_CMD, LUT_PAD_1, 0x0b)),
+					htole16(LUT_DEF(LUT_ADDR, LUT_PAD_1, 24)),
+					htole16(LUT_DEF(LUT_DUMMY, LUT_PAD_1, 8)),
+					htole16(LUT_DEF(LUT_NXP_READ, LUT_PAD_1, 4)),
+					htole16(LUT_DEF(LUT_STOP, LUT_PAD_1, 0)),
+				},
+			},
+		},
+	};
+
+	buf += fcfb_offset;
+	memcpy(buf, &nor_conf, sizeof(nor_conf));
+
+	return sizeof(nor_conf);
+}
+
+#define FLEXSPI_HEADER_LEN	HEADER_LEN
+
+static size_t
+add_flexspi_header(const struct config_data *data, void **_buf, size_t *header_len)
+{
+	uint32_t ivt_offset = data->image_flexspi_ivt_offset;
+	size_t size;
+	size_t len;
+	void *buf;
+
+	if (!flexspi_image(data))
+		return 0;
+
+	if (data->signed_hdmi_firmware_file) {
+		free(*_buf);
+		fprintf(stderr, "Signed HDMI firmware and FlexSPI compatible image is not supported!\n");
+		exit(1);
+	}
+
+	/*
+	 * Extend the header to be able to build build one image which can be
+	 * used for: USB/SD/eMMC/eMMC-Boot/QSPI/barebox-chainload.
+	 */
+	buf = realloc(*_buf, *header_len + FLEXSPI_HEADER_LEN);
+	if (!buf)
+		exit(1);
+
+	*_buf = buf;
+
+	size = add_flexspi_fcfb_header(data, buf);
+
+	/*
+	 * The following table list the offsets we need to ensure for
+	 * the one image approach.
+	 *
+	 *                              | i.MX8MM | i.MX8MN/P |
+	 * -----------------------------+---------+-----------+
+	 * SD/eMMC primary image offset |    0    |   0/32K   |
+	 * FlexSPI primary image offset |    0    |     4K    |
+	 * SD/eMMC-IVT offset           |    1K   |     0     |
+	 * SD/eMMC-IVT image entry      |    8K   |     8K    |
+	 * FlexSPI-IVT offset           |    4K   |     0     |
+	 * FlexSPI-IVT image entry      |    8K   |     4K    |
+	 *
+	 * According the above table the rom-loader for i.MX8MM will
+	 * search for the image on the same place (8K). On the other
+	 * hand the rom-loader for the i.MX8MN/P will look for it at
+	 * 8K for SD/eMMC case or at 4K for FlexSPI case.
+	 */
+	len = *header_len;
+	if (data->cpu_type == IMX_CPU_IMX8MM)
+		len += FLEXSPI_HEADER_LEN;
+
+	if (data->cpu_type == IMX_CPU_IMX8MP ||
+	    data->cpu_type == IMX_CPU_IMX8MN)
+		buf += SZ_4K;
+
+	size += add_header_v2(data, buf, ivt_offset, len);
+
+	*header_len += FLEXSPI_HEADER_LEN;
+
+	return size;
+}
+
 static void usage(const char *prgname)
 {
 	fprintf(stderr, "usage: %s [OPTIONS]\n\n"
@@ -905,9 +1026,10 @@ int main(int argc, char *argv[])
 			}
 		}
 
+		barebox_image_size += add_flexspi_header(&data, &buf, &header_len);
 		barebox_image_size += add_header_v2(&data, buf +
 						    signed_hdmi_firmware_size,
-						    data.image_ivt_offset, HEADER_LEN);
+						    data.image_ivt_offset, header_len);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 87560ad27d..844b549b1c 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -609,6 +609,26 @@ do_signed_hdmi_firmware(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
+static int do_flexspi_ivtofs(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->image_flexspi_ivt_offset = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
+static int do_flexspi_fcfbofs(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->image_flexspi_fcfb_offset = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
 struct command cmds[] = {
 	{
 		.name = "wm",
@@ -667,6 +687,12 @@ struct command cmds[] = {
 	}, {
 		.name = "signed_hdmi_firmware",
 		.parse = do_signed_hdmi_firmware,
+	}, {
+		.name = "flexspi_fcfbofs",
+		.parse = do_flexspi_fcfbofs,
+	}, {
+		.name = "flexspi_ivtofs",
+		.parse = do_flexspi_ivtofs,
 	},
 };
 

-- 
2.30.2



