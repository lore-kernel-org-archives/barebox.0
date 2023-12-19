Delivery-date: Tue, 19 Dec 2023 14:02:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjW-004Yob-23
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:02:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjV-0001ZA-LA
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:02:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCchWIo5wD9BwMKB7tIZQ3leA9Ph8BqW0uWK5PtT8Dg=; b=N9fFcCmNHkjnnWmpQDTPb55+z8
	YbAfoZeLnCMseBxy43rmjTKi8jeWBXfhxrvjm2gvXT4dxBz+F6/8Pw2wkMx7chRSShyLVwnLDKang
	xD+CRB6Tfzz8VrOVT2Q5Z8t4Y2RMBt7tFoJUL5JCE/X4YN/JkRKcyS+ROGzPWuu5q2MRVvDemYH05
	98JGq5z2/53scciz7pWs32qu9i0xBSrTxDid7d9HsT6+TWi0BJAwpy9OFNIdSBOxNlRY7tW9/3EnG
	iHyFB51iLw8FAcKjmwn8BXWKndNxC2T6aVB5t3Zyn9ksDIf+PJ6vlkZqWjRyFJ2wM1uhgRk53cA5k
	dcoy+ZuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiJ-00E7ov-0R;
	Tue, 19 Dec 2023 13:00:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiF-00E7oE-0r
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:00:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiE-0000gG-3g; Tue, 19 Dec 2023 14:00:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiC-0001Ks-Is; Tue, 19 Dec 2023 14:00:41 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiD-00015C-1z;
	Tue, 19 Dec 2023 14:00:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:00:40 +0100
Message-Id: <20231219130040.4115-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219130040.4115-1-s.hauer@pengutronix.de>
References: <20231219130040.4115-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_050043_448635_FB0C324F 
X-CRM114-Status: GOOD (  22.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] pblimage: Add LS1028a support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL images for the LS1028a are a bit different from the ones for the
LS1046a, but can be supported in the same pblimage tool. This adds
support for the LS1028a. To accomplish this the SoC type has to be
passed on the command line, so adjust the Makefiles calling pblimage
accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.layerscape |  16 ++---
 scripts/pblimage.c         | 122 ++++++++++++++++++++++++++++++++-----
 2 files changed, 116 insertions(+), 22 deletions(-)

diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 062e7263b5..e36dc5000a 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -13,30 +13,30 @@ quiet_cmd_lspbl_image = LSPBL-IMG $@
       cmd_lspbl_image = $(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-rcw-tmp) $(word 2,$^) ; \
 			$(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-pbi-tmp) $(word 3,$^) ; \
 			$(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) \
-			-m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
+			-c $(2) -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
 quiet_cmd_lspbl_spi_image = LSPBL-SPI-IMG $@
       cmd_lspbl_spi_image = $(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-rcw-tmp) $(word 2,$^) ; \
 			    $(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-pbi-tmp) $(word 3,$^) ; \
 			    $(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) -s \
-			    -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
+			    -c $(2) -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
 pbl-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb.pbl
 
 $(obj)/barebox-ls1046ardb-sd.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_sd.cfg \
 		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
-	$(call if_changed,lspbl_image)
+	$(call if_changed,lspbl_image,ls1046a)
 
 $(obj)/barebox-ls1046ardb-emmc.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_emmc.cfg \
 		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
-	$(call if_changed,lspbl_image)
+	$(call if_changed,lspbl_image,ls1046a)
 
 $(obj)/barebox-ls1046ardb-qspi.image: $(obj)/start_ls1046ardb.pblb \
 		$(board)/ls1046ardb/ls1046ardb_rcw_qspi.cfg \
 		$(board)/ls1046ardb/ls1046ardb_pbi.cfg
-	$(call if_changed,lspbl_spi_image)
+	$(call if_changed,lspbl_spi_image,ls1046a)
 
 image-$(CONFIG_MACH_LS1046ARDB) += barebox-ls1046ardb-sd.image barebox-ls1046ardb-qspi.image \
 	barebox-ls1046ardb-emmc.image
@@ -46,12 +46,12 @@ pbl-$(CONFIG_MACH_TQMLS1046A) += start_tqmls1046a.pbl
 $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
 		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
-	$(call if_changed,lspbl_image)
+	$(call if_changed,lspbl_image,ls1046a)
 
 $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
 		$(board)/tqmls1046a/tqmls1046a_pbi.cfg
-	$(call if_changed,lspbl_spi_image)
+	$(call if_changed,lspbl_spi_image,ls1046a)
 
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
 	barebox-tqmls1046a-qspi.image
@@ -61,6 +61,6 @@ pbl-$(CONFIG_MACH_LS1021AIOT) += start_ls1021aiot.pbl
 $(obj)/barebox-ls1021aiot-qspi.image: $(obj)/start_ls1021aiot.pblb \
 		$(board)/ls1021aiot/ls102xa_rcw_sd_qspi.cfg \
 		$(board)/ls1021aiot/ls102xa_pbi.cfg
-	$(call if_changed,lspbl_spi_image)
+	$(call if_changed,lspbl_spi_image,ls1046a)
 
 image-$(CONFIG_MACH_LS1021AIOT) += barebox-ls1021aiot-qspi.image
diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index e8108bbb17..8cb473d5bc 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -14,6 +14,7 @@
 #include <getopt.h>
 #include <endian.h>
 #include <byteswap.h>
+#include <stdbool.h>
 #include <linux/kernel.h>
 
 #include "common.h"
@@ -55,6 +56,32 @@ static int spiimage;
 static uint32_t pbi_crc_cmd1;
 static uint32_t pbi_crc_cmd2;
 
+enum soc_type {
+	SOC_TYPE_INVALID,
+	SOC_TYPE_LS1046A,
+	SOC_TYPE_LS1028A,
+};
+
+struct soc_type_entry {
+	const char *name;
+	enum soc_type soc;
+	bool big_endian;
+};
+
+static struct soc_type_entry socs[] = {
+	{
+		.name = "ls1046a",
+		.soc = SOC_TYPE_LS1046A,
+		.big_endian = true,
+	}, {
+		.name = "ls1028a",
+		.soc = SOC_TYPE_LS1028A,
+		.big_endian = false,
+	},
+};
+
+static enum soc_type soc_type;
+
 static char *rcwfile;
 static char *pbifile;
 static char *outfile;
@@ -113,9 +140,16 @@ static void check_get_hexval(const char *filename, int lineno, char *token)
 		exit(EXIT_FAILURE);
 	}
 
-	for (i = 3; i >= 0; i--) {
-		*pmem_buf++ = (hexval >> (i * 8)) & 0xff;
-		pbl_size++;
+	if (socs[soc_type].big_endian) {
+		for (i = 3; i >= 0; i--) {
+			*pmem_buf++ = (hexval >> (i * 8)) & 0xff;
+			pbl_size++;
+		}
+	} else {
+		for (i = 0; i < 4; i++) {
+			*pmem_buf++ = (hexval >> (i * 8)) & 0xff;
+			pbl_size++;
+		}
 	}
 }
 
@@ -181,24 +215,55 @@ static void pbl_load_image(void)
 	int size;
 	unsigned int n;
 	uint64_t *buf64 = (void *)mem_buf;
+	uint32_t *buf32 = (void *)mem_buf;
 
 	/* parse the rcw.cfg file. */
 	pbl_parser(rcwfile);
 
+	if (soc_type == SOC_TYPE_LS1028A) {
+		uint32_t chksum = 0;
+		int i;
+
+		for (i = 0; i < 34; i++)
+			chksum += buf32[i];
+
+		buf32[0x22] = chksum;
+		pbl_size += 4;
+		pmem_buf += 4;
+	}
+
 	/* parse the pbi.cfg file. */
 	if (pbifile)
 		pbl_parser(pbifile);
 
-	for (n = 0; n < image_size; n += 0x40) {
-		uint32_t pbl_cmd;
+	if (soc_type == SOC_TYPE_LS1046A) {
+		for (n = 0; n < image_size; n += 0x40) {
+			uint32_t pbl_cmd;
 
-		pbl_cmd = (loadaddr & PBL_ADDR_24BIT_MASK) | PBL_ACS_CONT_CMD;
-		pbl_cmd += n;
-		generate_pbl_cmd(pbl_cmd);
-		pbl_fget(64, in_fd);
-	}
+			pbl_cmd = (loadaddr & PBL_ADDR_24BIT_MASK) | PBL_ACS_CONT_CMD;
+			pbl_cmd += n;
+			generate_pbl_cmd(pbl_cmd);
+			pbl_fget(64, in_fd);
+		}
 
-	add_end_cmd();
+		add_end_cmd();
+	} else if (soc_type == SOC_TYPE_LS1028A) {
+		buf32 = (void *)pmem_buf;
+
+		buf32[0] = 0x80000008;
+		buf32[1] = 0x2000;
+		buf32[2] = 0x18010000;
+		buf32[3] = image_size;
+		buf32[4] = 0x80ff0000;
+		pbl_size += 20;
+		pmem_buf += 20;
+
+		read(in_fd, mem_buf + 0x1000, image_size);
+		pbl_size = 0x1000 + image_size;
+		printf("%s imagesize: %d\n", rcwfile, image_size);
+	} else {
+		exit(EXIT_FAILURE);
+	}
 
 	if (spiimage) {
 		int i;
@@ -236,7 +301,12 @@ static int pblimage_check_params(void)
 	}
 
 	/* For the variable size, pad it to 64 byte boundary */
-	image_size = roundup(pbl_end, 64);
+	if (soc_type == SOC_TYPE_LS1046A)
+		image_size = roundup(pbl_end, 64);
+	else if (soc_type == SOC_TYPE_LS1028A)
+		image_size = roundup(pbl_end, 512);
+	else
+		exit(EXIT_FAILURE);
 
 	if (image_size > MAX_PBL_SIZE) {
 		fprintf(stderr, "Error: pbl size %d in %s exceeds maximum size %d\n",
@@ -289,10 +359,11 @@ static int copy_fd(int in, int out)
 
 int main(int argc, char *argv[])
 {
-	int opt, ret;
+	int opt, ret, i;
 	off_t pos;
+	char *cputypestr = NULL;
 
-	while ((opt = getopt(argc, argv, "i:r:p:o:m:s")) != -1) {
+	while ((opt = getopt(argc, argv, "i:r:p:o:m:sc:")) != -1) {
 		switch (opt) {
 		case 'i':
 			infile = optarg;
@@ -312,6 +383,9 @@ int main(int argc, char *argv[])
 		case 's':
 			spiimage = 1;
 			break;
+		case 'c':
+			cputypestr = optarg;
+			break;
 		default:
 			exit(EXIT_FAILURE);
 		}
@@ -332,6 +406,26 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}
 
+	if (!cputypestr) {
+		fprintf(stderr, "No CPU type given\n");
+		exit(EXIT_FAILURE);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(socs); i++) {
+		if (!strcmp(socs[i].name, cputypestr)) {
+			soc_type = socs[i].soc;
+			break;
+		}
+	}
+
+	if (soc_type == SOC_TYPE_INVALID) {
+		fprintf(stderr, "Invalid CPU type %s. Valid types are:\n", cputypestr);
+		for (i = 0; i < ARRAY_SIZE(socs); i++)
+			printf("  %s\n", socs[i].name);
+
+		exit(EXIT_FAILURE);
+	}
+
 	pblimage_check_params();
 
 	out_fd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-- 
2.39.2



