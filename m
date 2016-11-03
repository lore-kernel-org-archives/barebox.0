Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2Mrl-0003rP-HV
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 18:35:58 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu,  3 Nov 2016 19:32:37 +0100
Message-Id: <1478197957-27579-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] scripts imx-image: add DCD NOP command support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The DCD NOP command is available for all flash header v2 devices (i.MX28,
50, 53, 6 and 7).

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/README      |  1 +
 scripts/imx/imx-image.c | 28 ++++++++++++++++++++++++++++
 scripts/imx/imx.c       | 11 +++++++++++
 scripts/imx/imx.h       |  1 +
 4 files changed, 41 insertions(+)

diff --git a/scripts/imx/README b/scripts/imx/README
index 474b387..b5cdb48 100644
--- a/scripts/imx/README
+++ b/scripts/imx/README
@@ -32,6 +32,7 @@ check <width> <cond> <addr> <mask>    Poll until condition becomes true.
                                       while_any_bit_set
 set_bits <width> <addr> <bits>        set <bits> in register <addr>
 clear_bits <width> <addr> <bits>      clear <bits> in register <addr>
+nop                                   do nothing
 
 the i.MX SoCs support a wide range of fancy things doing with the flash header.
 We limit ourselves to a very simple case, that is the flash header has a fixed
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 650a67f..dd5799c 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -482,6 +482,33 @@ static int write_mem(const struct config_data *data, uint32_t addr,
 	}
 }
 
+static int nop(const struct config_data *data)
+{
+	const struct imx_ivt_header nop_header = {
+		.tag = TAG_NOP,
+		.length = htobe16(4),
+		.version = 0,
+	};
+
+	switch (data->header_version) {
+	case 1:
+		fprintf(stderr, "DCD command NOP not implemented on DCD v1\n");
+		return -EINVAL;
+	case 2:
+		if (curdcd > MAX_DCD - 1) {
+			fprintf(stderr, "At maximum %d DCD entries allowed\n",
+				MAX_DCD);
+			return -ENOMEM;
+		}
+
+		check_last_dcd(*((uint32_t *) &nop_header));
+		dcdtable[curdcd++] = *((uint32_t *) &nop_header);
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
 /*
  * This uses the Freescale Code Signing Tool (CST) to sign the image.
  * The cst is expected to be executable as 'cst' or if exists, the content
@@ -653,6 +680,7 @@ int main(int argc, char *argv[])
 		.image_dcd_offset = 0xffffffff,
 		.write_mem = write_mem,
 		.check = check,
+		.nop = nop,
 	};
 
 	prgname = argv[0];
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index c8ee309..fba049e 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -131,6 +131,14 @@ static int do_cmd_check(struct config_data *data, int argc, char *argv[])
 	return data->check(data, cmd, addr, mask);
 }
 
+static int do_cmd_nop(struct config_data *data, int argc, char *argv[])
+{
+	if (!data->nop)
+		return -ENOSYS;
+
+	return data->nop(data);
+}
+
 static int write_mem(struct config_data *data, int argc, char *argv[],
 		     int set_bits, int clear_bits)
 {
@@ -365,6 +373,9 @@ struct command cmds[] = {
 		.name = "check",
 		.parse = do_cmd_check,
 	}, {
+		.name = "nop",
+		.parse = do_cmd_nop,
+	}, {
 		.name = "loadaddr",
 		.parse = do_loadaddr,
 	}, {
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index ae3702c..57c7525 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -77,6 +77,7 @@ struct config_data {
 		     uint32_t addr, uint32_t mask);
 	int (*write_mem)(const struct config_data *data, uint32_t addr,
 			 uint32_t val, int width, int set_bits, int clear_bits);
+	int (*nop)(const struct config_data *data);
 	int csf_space;
 	char *csf;
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
