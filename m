Delivery-date: Tue, 11 Mar 2025 13:42:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw9-00Cg17-1P
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:42:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw6-0006Ke-3H
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:42:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pnGUBnyKr+YerXx2Eqa2wUcaOY7BXPUc8DCn8t0k4qA=; b=EjZNABJ4z/N59nTfRLx9yGBrF3
	qIubzMDOYxOqANnYDArfqB3yN3894+tr9MVIx18yCZ87XYVKHnkjMOOvBL6271N/8epUesiMGF21D
	41fezXiVP/mL2tZBte0LaKOdRaaL8rFiEvj+1fWOi677UtcF8QIAbHOcM14kvRZ6Kr5PTqQOnOT2x
	Q6z45w27uIm5JGIOzJtZeHUegoI0QfEYCnk4JOGm3Cis7amKq+Nq1rQ61nWUAE+feEgBOCCkqvGP9
	kFKKcliMCWlTGVoIHVsdkSf8rdH4TsSdaFygjl2hg499LU8itfi/pePhnI1dYN+C9ogeR15VHMLwy
	v+uEO9eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryvX-00000005gvx-05No;
	Tue, 11 Mar 2025 12:41:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tryfd-00000005d1f-0kxl
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:25:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-0003B6-Ui; Tue, 11 Mar 2025 13:25:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-005B6T-1a;
	Tue, 11 Mar 2025 13:25:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1F;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-9-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=4319;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=zeu0ZysGzdpj70NRU4tt1avbvygiJ1Fa/AmLdxBLvCE=;
 b=8hqaJTdXod7z7tpM5hoMfzf6qhK31UtgXyaBInqu/ET0I8mLvBvU1cD/2ZJtrfmlhiQVWnJHD
 NDAeKDMV4zgAk+ECIrhPaj7LoIi/tLx0fIg+TFiI0mZVoeTgk857ZBn
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052517_292076_0F6E99F4 
X-CRM114-Status: GOOD (  18.07  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/14] ARM: k3: add support for authenticating images
 against the ROM API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for authenticating an image against the K3 ROM API.
Also included in this patch is a new command for testing the
authentication.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig  |  7 ++++
 arch/arm/mach-k3/common.c | 99 +++++++++++++++++++++++++++++++++++++++++++++++
 include/mach/k3/common.h  |  1 +
 3 files changed, 107 insertions(+)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 561ad1dac4..37d5155577 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -37,4 +37,11 @@ config MACH_BEAGLEPLAY
 	help
 	  Say Y here if you are using a TI AM62x based BeaglePlay board
 
+config ARCH_K3_COMMAND_AUTHENTICATE
+	bool "k3_authenticate_image command"
+	depends on COMMAND_SUPPORT
+	help
+	  Add k3_authenticate_image command to test authenticating images
+	  against the K3 ROM API.
+
 endmenu
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 8dc9d3bc9e..a324e2d5f6 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <of.h>
 #include <io.h>
+#include <dma.h>
 #include <deep-probe.h>
 #include <init.h>
 #include <envfs.h>
@@ -8,11 +9,15 @@
 #include <stdio.h>
 #include <xfuncs.h>
 #include <malloc.h>
+#include <command.h>
+#include <getopt.h>
+#include <libfile.h>
 #include <pm_domain.h>
 #include <bootsource.h>
 #include <linux/bits.h>
 #include <linux/bitfield.h>
 #include <mach/k3/common.h>
+#include <soc/ti/ti_sci_protocol.h>
 
 static const struct of_device_id k3_of_match[] = {
 	{
@@ -334,3 +339,97 @@ static int omap_env_init(void)
 	return 0;
 }
 late_initcall(omap_env_init);
+
+int k3_authenticate_image(void **buf, size_t *size)
+{
+	const struct ti_sci_handle *ti_sci;
+	u64 image_addr;
+	int ret;
+	unsigned int s = *size;
+
+	ti_sci = ti_sci_get_handle(NULL);
+	if (IS_ERR(ti_sci))
+		return -EINVAL;
+
+	image_addr = dma_map_single(NULL, *buf, *size, DMA_BIDIRECTIONAL);
+
+	ret = ti_sci->ops.proc_ops.proc_auth_boot_image(ti_sci, &image_addr, &s);
+
+	dma_unmap_single(NULL, image_addr, *size, DMA_BIDIRECTIONAL);
+
+	if (ret)
+		*size = 0;
+	else
+		*size = s;
+
+	return ret;
+}
+
+#ifdef CONFIG_ARCH_K3_COMMAND_AUTHENTICATE
+static int do_k3_authenticate_image(int argc, char *argv[])
+{
+	void *buf;
+	size_t size;
+	int ret;
+	int opt;
+	const char *outfile = NULL;
+	const char *filename;
+
+	while ((opt = getopt(argc, argv, "o:")) > 0) {
+		switch (opt) {
+		case 'o':
+			outfile = optarg;
+			break;
+		}
+	}
+
+	argc -= optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	filename = argv[0];
+
+	ret = read_file_2(filename, &size, &buf, FILESIZE_MAX);
+	if (ret)
+		return ret;
+
+	ret = k3_authenticate_image(&buf, &size);
+	if (ret) {
+		printf("authenticating %s failed: %pe\n", filename, ERR_PTR(ret));
+		ret = COMMAND_ERROR;
+		goto err;
+	}
+
+	printf("%s successfully authenticated\n", filename);
+
+	if (outfile) {
+		ret = write_file(outfile, buf, size);
+		if (ret) {
+			printf("Failed to write output file: %pe\n", ERR_PTR(ret));
+			goto err;
+		}
+	}
+
+	ret = 0;
+err:
+	free(buf);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(k3_authenticate_image)
+BAREBOX_CMD_HELP_TEXT("Authenticate image with K3 ROM API")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-o <out>",  "store unpacked authenticated image in <out>")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(k3_authenticate_image)
+	.cmd = do_k3_authenticate_image,
+	BAREBOX_CMD_DESC("authenticate file with K3 ROM API")
+	BAREBOX_CMD_OPTS("[-o <out>] file")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(k3_authenticate_image)
+BAREBOX_CMD_END
+#endif
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 871e9f39e3..94c5fba19d 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -13,6 +13,7 @@ bool k3_boot_is_emmc(void);
 u64 am625_sdram_size(void);
 void am625_register_dram(void);
 void am625_enable_32k_crystal(void);
+int k3_authenticate_image(void **buf, size_t *size);
 
 #define K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE	SZ_1M
 

-- 
2.39.5



