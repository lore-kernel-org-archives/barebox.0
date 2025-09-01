Delivery-date: Mon, 01 Sep 2025 10:02:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUf-006q3o-1e
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 10:02:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUe-0000dA-4G
	for lore@pengutronix.de; Mon, 01 Sep 2025 10:02:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s3AclXGwAQ1ep3+BZHj1PsYqtNoS+/Lg/Bu9l+mct8o=; b=Nc82O1OahWH5rKCACMw6Aysl9b
	hXzFcZWYpzclFQ0UYqaGnPVsmsbZklxA7kBwPyOe0/u7FuahWAX0z1jEN3s6vKd2sLHG+v6aqQXXo
	alZlmc9gCJ6S4xACWG+hYtdf1Qtp+ZGTieaXtCOUP35HSQxrWyg3dYkjkJ7jhF2Zb+5boZ7lG/I3d
	LDczERlYYdsWvqLUeK74d7YaB03yHVXjzRqJS/pgFbLj/MiuE3R6bLRSqBKpbxVSurTt7MgnMYhma
	JJ1E8ojheGJAMcGLRPz/uupOOaj8OxhIWSM3ob6MF6j3RSy/M2YF8sCVEty15+rTi49/S+UqLsqa1
	MA81wYtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszTz-0000000BVuy-1y6G;
	Mon, 01 Sep 2025 08:01:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usz4r-0000000BSE9-08NR
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 07:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-0008Vh-Fz; Mon, 01 Sep 2025 09:35:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-003BNp-0o;
	Mon, 01 Sep 2025 09:35:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-00000000kLH-0g1g;
	Mon, 01 Sep 2025 09:35:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Sep 2025 09:35:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-imx6-usb-uuu-v1-2-1194bb6135ae@pengutronix.de>
References: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
In-Reply-To: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756712139; l=4717;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=V83QYjLBTWivxwqEbM206ceDE8C9ZJMWHeAgHCUYxCw=;
 b=obZglHckYeGsQ50bdL9oaVczegeGe0ayt13pzESGFz95We4eWaS/4z/XtV2Z/e/kF9UDD9kds
 CFS5lbhLSHpAW/T1DVZml0IHh/0wYqUdKvxEHi7aQP0Ci8txFGJYIlL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_003545_080829_F583B5DF 
X-CRM114-Status: GOOD (  18.38  )
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
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] scripts: imx-image: support DCD_WRITE on closed dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>

If an image is loaded by serial download protocol with DCD_WRITE ROM
command on closed i.mx6 devices, the DCD table block loaded into the
OCRAM must be signed.
This patch adds the option '-a' to apply the additional authentication
block for the OCRAM section into the CSF.
The load address for the block is fixed to '0x00910000' which is the
default address configured in mfg-tools of NXP.

Signed-off-by: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
---
 include/mach/imx/imx-header.h |  2 ++
 scripts/imx/imx-image.c       | 19 ++++++++++++++++++-
 scripts/imx/imx.c             | 22 ++++++++++++++++++++++
 3 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/include/mach/imx/imx-header.h b/include/mach/imx/imx-header.h
index 08329e3d056171ff1b4b5d9399f68fb8e0387f77..e8ead33a9ead4024da63574a71afc96923d54671 100644
--- a/include/mach/imx/imx-header.h
+++ b/include/mach/imx/imx-header.h
@@ -115,6 +115,7 @@ struct config_data {
 	int (*write_mem)(const struct config_data *data, uint32_t addr,
 			 uint32_t val, int width, int set_bits, int clear_bits);
 	int (*nop)(const struct config_data *data);
+	int (*get_dcd_length)(void);
 	char *csf;
 	char *flexspi_csf;
 	int sign_image;
@@ -122,6 +123,7 @@ struct config_data {
 	int encrypt_image;
 	size_t dek_size;
 	bool hab_qspi_support;
+	bool dcd_usb_image;
 };
 
 #define MAX_RECORDS_DCD_V2 1024
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index a8ac34091fc0811ad76064b178416056a02ea2c9..c08857a6157e92ae7cb4a395a618b3eaeaedae9f 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -495,6 +495,9 @@ static void usage(const char *prgname)
 		"             variable 'CST'\n"
 		"-u           create USB image suitable for imx-usb-loader\n"
 		"             necessary for signed images (-s) only\n"
+		"-a           authenticate additionaly the DCD block loaded via\n"
+		"             'SDP: DCD_WRITE' to the internal RAM on i.mx6 devices\n"
+		"             necessary for usb images (-u) only\n"
 		"-h           this help\n", prgname);
 	exit(1);
 }
@@ -662,6 +665,11 @@ static int nop(const struct config_data *data)
 	}
 }
 
+static int get_dcd_length(void)
+{
+	return sizeof(uint32_t) + (curdcd * sizeof(uint32_t));
+}
+
 /*
  * This uses the Freescale Code Signing Tool (CST) to sign the image.
  * The cst is expected to be executable as 'cst' or if exists, the content
@@ -875,6 +883,7 @@ int main(int argc, char *argv[])
 		.write_mem = write_mem,
 		.check = check,
 		.nop = nop,
+		.get_dcd_length = get_dcd_length
 	};
 	uint32_t *bb_header;
 	size_t sizeof_bb_header;
@@ -883,7 +892,7 @@ int main(int argc, char *argv[])
 
 	prgname = argv[0];
 
-	while ((opt = getopt(argc, argv, "c:hf:o:p:bduse")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:p:bduase")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -909,6 +918,9 @@ int main(int argc, char *argv[])
 		case 'u':
 			create_usb_image = true;
 			break;
+		case 'a':
+			data.dcd_usb_image = true;
+			break;
 		case 'e':
 			data.encrypt_image = 1;
 			break;
@@ -969,6 +981,11 @@ int main(int argc, char *argv[])
 		create_usb_image = 0;
 	}
 
+	if (data.dcd_usb_image && !create_usb_image) {
+		fprintf(stderr, "Warning: the -a option only has effect with usb images\n");
+		data.dcd_usb_image = false;
+	}
+
 	if (data.image_ivt_offset == 0xffffffff) {
 		if (create_usb_image)
 			data.image_ivt_offset = 0x0;
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 6dabaf59c159b582dfe84eff81cec039c4863b77..26efe6d813dca5ecc7b2a06459df2b2f26673e0f 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -430,6 +430,28 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"",
 			data->image_load_addr + data->image_ivt_offset, offset,
 			signed_size - data->image_ivt_offset, data->outfile);
+
+		if (data->dcd_usb_image && (data->cpu_type == IMX_CPU_IMX6)) {
+			char *str_dcd_blk;
+			uint32_t dcd_offset = offset + offsetof(struct imx_flash_header_v2, dcd_header);
+			uint32_t dcd_length = data->get_dcd_length();
+
+			if(!dcd_length) {
+				fprintf(stderr, "failed to get dcd length\n");
+				return -EINVAL;
+			}
+
+			ret |= asprintf(&str_dcd_blk, ", \\\n 0x00910000 0x%08x 0x%08x \"%s\"",
+				dcd_offset, dcd_length, data->outfile);
+
+			str = strcata(str, str_dcd_blk);
+			free(str_dcd_blk);
+
+			if(!str) {
+				return -ENOMEM;
+			}
+		}
+
 		if (data->flexspi_csf)
 			ret |= asprintf(&flexspi_str,
 					"Blocks = 0x%08x 0x%08x 0x%08x \"%s\"",

-- 
2.47.2



