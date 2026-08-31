Delivery-date: Mon, 31 Aug 2026 16:47:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x13Hy-009JT1-1G
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 16:47:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 95E6A201922
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 16:47:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IccprYwM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wNLQPjdYKsrdZqmi0i1R/5MkSAo2kBe+0yL4isTq+Vo=; b=IccprYwMZZcEeTeQKl3K6rfUik
	mnaJhx5qgt9NBV5+ZfD36M7t4gQLd7JkqdBQJBG0Vzjth0ojqPBMDYb0by3GwJZdZCSNBgf73bxYM
	L40QvzZ59CSyG6yYedyoUU8gsO1D4kscuYJf11ApMMrAR83HheIvsfauhNWFqS6fUNytmLOWtMRk5
	NxtHGa5hA78629bIaM5oBJSb8yy4CB1Hcmq+tgG2Hsx77EbIc+1M7wmvsxvrF0MwbvsEBwNYDa5Hd
	dKGn2y391M3YcC+yXQhQuJkpRA938y4SLtfvbPLZXQKSA9e0IMqDAixxNCk4ZIbTXDNacYayJGxQv
	gcRswdZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13HA-00000009fgr-1qzw;
	Mon, 31 Aug 2026 14:46:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13H7-00000009ff3-0qeR
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 14:46:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6C217202433;
	Mon, 31 Aug 2026 16:46:11 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13H1-004H3c-1B;
	Mon, 31 Aug 2026 16:46:11 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13H1-00000004L4a-13Wk;
	Mon, 31 Aug 2026 16:46:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] treewide: replace inappropriate printk
Date: Mon, 31 Aug 2026 16:46:09 +0200
Message-ID: <20260831144610.1034307-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_074617_396324_DAAF0415 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In preparation for making printk loglevel-aware in the future,
    replace bare printk in command handlers with printf, as it's user-facing
   output, and in library code with pr_err/pr_warn to get proper lo [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 9jpnjamhaikp99f4nopo5u47oyw6jebw
X-Rspamd-Queue-Id: 95E6A201922
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

In preparation for making printk loglevel-aware in the future, replace bare
printk in command handlers with printf, as it's user-facing output,
and in library code with pr_err/pr_warn to get proper log level annotations.

Remaining instances of printk are mostly in driver code and will be fine
when we switch to logging instead of printf.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx6-mmdc.c      | 8 ++++----
 arch/mips/lib/cpuinfo.c            | 8 ++++----
 commands/ethlog.c                  | 4 ++--
 drivers/mtd/nand/raw/nand_denali.c | 1 -
 drivers/pci/pci-tegra.c            | 7 +++----
 drivers/usb/gadget/udc/fsl_udc.c   | 2 +-
 fs/cramfs/uncompress.c             | 6 +++---
 lib/gui/png_lode.c                 | 6 +++---
 lib/gui/png_pico.c                 | 6 +++---
 9 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 134a41bad58b..8d0dc5c496d9 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -829,10 +829,10 @@ int mmdc_do_software_calibration(void)
 			mmdc_sw_read_calib(ch, s);
 	}
 
-	printk("ch0 total lower: %d upper: %d avg: 0x%02x\n",
+	printf("ch0 total lower: %d upper: %d avg: 0x%02x\n",
 			total_lower[0], total_upper[0],
 			(total_lower[0] + total_upper[0]) / 2);
-	printk("ch1 total lower: %d upper: %d avg: 0x%02x\n",
+	printf("ch1 total lower: %d upper: %d avg: 0x%02x\n",
 			total_lower[1], total_upper[1],
 			(total_lower[1] + total_upper[1]) / 2);
 
@@ -857,10 +857,10 @@ int mmdc_do_software_calibration(void)
 			mmdc_sw_write_calib(ch, s);
 	}
 
-	printk("ch0 total lower: %d upper: %d avg: 0x%02x\n",
+	printf("ch0 total lower: %d upper: %d avg: 0x%02x\n",
 			total_lower[0], total_upper[0],
 			(total_lower[0] + total_upper[0]) / 2);
-	printk("ch1 total lower: %d upper: %d avg: 0x%02x\n",
+	printf("ch1 total lower: %d upper: %d avg: 0x%02x\n",
 			total_lower[1], total_upper[1],
 			(total_lower[1] + total_upper[1]) / 2);
 
diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index 41ec7b8d532b..f7472ab169d1 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -19,18 +19,18 @@ static int do_cpuinfo(int argc, char *argv[])
 	unsigned int icache_size, dcache_size, scache_size;
 	struct cpuinfo_mips *c = &current_cpu_data;
 
-	printk(KERN_INFO "CPU revision is: %08x (%s)\n",
+	printf("CPU revision is: %08x (%s)\n",
 		current_cpu_data.processor_id, __cpu_name);
 
 	icache_size = c->icache.sets * c->icache.ways * c->icache.linesz;
 	dcache_size = c->dcache.sets * c->dcache.ways * c->dcache.linesz;
 
-	printk("Primary instruction cache %ukB, %s, %s, linesize %d bytes.\n",
+	printf("Primary instruction cache %ukB, %s, %s, linesize %d bytes.\n",
 	       icache_size >> 10,
 	       c->icache.flags & MIPS_CACHE_VTAG ? "VIVT" : "VIPT",
 	       way_string[c->icache.ways], c->icache.linesz);
 
-	printk("Primary data cache %ukB, %s, %s, %s, linesize %d bytes\n",
+	printf("Primary data cache %ukB, %s, %s, %s, linesize %d bytes\n",
 	       dcache_size >> 10, way_string[c->dcache.ways],
 	       (c->dcache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
 	       (c->dcache.flags & MIPS_CACHE_ALIASES) ?
@@ -39,7 +39,7 @@ static int do_cpuinfo(int argc, char *argv[])
 	if (c->scache.flags & MIPS_CACHE_NOT_PRESENT)
 		return 0;
 	scache_size = c->scache.sets * c->scache.ways * c->scache.linesz;
-	printk("Secondary data cache %ukB, %s, %s, %s, linesize %d bytes\n",
+	printf("Secondary data cache %ukB, %s, %s, %s, linesize %d bytes\n",
 	       scache_size >> 10, way_string[c->scache.ways],
 	       (c->scache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
 	       (c->scache.flags & MIPS_CACHE_ALIASES) ?
diff --git a/commands/ethlog.c b/commands/ethlog.c
index d641fd90ddb8..69da0479e1fb 100644
--- a/commands/ethlog.c
+++ b/commands/ethlog.c
@@ -14,7 +14,7 @@ static void ethlog_rx_monitor(struct eth_device *edev, void *packet,
 {
 	dev_print_hex_dump(&edev->dev, MSG_DEBUG, "rx data <: ",
 			   DUMP_PREFIX_OFFSET, 16, 1, packet, length, true);
-	printk("\n");
+	pr_print(MSG_DEBUG, "\n");
 }
 
 static void ethlog_tx_monitor(struct eth_device *edev, void *packet,
@@ -22,7 +22,7 @@ static void ethlog_tx_monitor(struct eth_device *edev, void *packet,
 {
 	dev_print_hex_dump(&edev->dev, MSG_DEBUG, "tx data >: ",
 			   DUMP_PREFIX_OFFSET, 16, 1, packet, length, true);
-	printk("\n");
+	pr_print(MSG_DEBUG, "\n");
 }
 
 static int do_ethlog(int argc, char *argv[])
diff --git a/drivers/mtd/nand/raw/nand_denali.c b/drivers/mtd/nand/raw/nand_denali.c
index 8fef992ef89f..216979832d03 100644
--- a/drivers/mtd/nand/raw/nand_denali.c
+++ b/drivers/mtd/nand/raw/nand_denali.c
@@ -1011,7 +1011,6 @@ static int denali_attach_chip(struct nand_chip *chip)
 	ret = nand_ecc_choose_conf(chip, denali->ecc_caps,
 				   mtd->oobsize - denali->oob_skip_bytes);
 	if (ret) {
-		printk("%s: %d\n", __func__, ret);
 		dev_err(denali->dev, "Failed to setup ECC settings.\n");
 		return ret;
 	}
diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
index dabe63500a4a..1c89caaf33e1 100644
--- a/drivers/pci/pci-tegra.c
+++ b/drivers/pci/pci-tegra.c
@@ -1249,10 +1249,9 @@ static int tegra_pcie_probe(struct device *dev)
 	pcie->soc_data = device_get_match_data(dev);
 
 	err = tegra_pcie_parse_dt(pcie);
-	if (err < 0) {
-		printk("parse DT failed\n");
-		return err;
-	}
+	if (err < 0)
+		return dev_err_probe(dev, err,
+				     "failed to parse device tree\n");
 
 	err = tegra_pcie_get_resources(pcie);
 	if (err < 0) {
diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index 54fc0df65567..f118a252a98f 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -680,7 +680,7 @@ static void fsl_free_request(struct usb_ep *_ep, struct usb_request *_req)
 	req = container_of(_req, struct fsl_req, req);
 
 	if (!list_empty(&req->queue)) {
-		printk("%s: Freeing queued request\n", __func__);
+		pr_err("%s: Freeing queued request\n", __func__);
 		dump_stack();
 	}
 
diff --git a/fs/cramfs/uncompress.c b/fs/cramfs/uncompress.c
index 82c82adf044c..500ad8d28169 100644
--- a/fs/cramfs/uncompress.c
+++ b/fs/cramfs/uncompress.c
@@ -41,7 +41,7 @@ int cramfs_uncompress_block(void *dst, int dstlen, void *src, int srclen)
 
 	err = zlib_inflateReset(&stream);
 	if (err != Z_OK) {
-		printk("zlib_inflateReset error %d\n", err);
+		pr_warn("zlib_inflateReset error %d\n", err);
 		zlib_inflateEnd(&stream);
 		zlib_inflateInit(&stream);
 	}
@@ -52,8 +52,8 @@ int cramfs_uncompress_block(void *dst, int dstlen, void *src, int srclen)
 	return stream.total_out;
 
 err:
-	printk("Error %d while decompressing!\n", err);
-	printk("%p(%d)->%p(%d)\n", src, srclen, dst, dstlen);
+	pr_err("Error %d while decompressing: %p(%d)->%p(%d)\n",
+	       err, src, srclen, dst, dstlen);
 	return -EIO;
 }
 
diff --git a/lib/gui/png_lode.c b/lib/gui/png_lode.c
index 68149c848d5b..d1709b84b880 100644
--- a/lib/gui/png_lode.c
+++ b/lib/gui/png_lode.c
@@ -27,7 +27,7 @@ unsigned lodepng_custom_zlib_decompress(unsigned char** out, size_t* outsize,
 
 	err = zlib_inflateReset(&png_stream);
 	if (err != Z_OK) {
-		printk("zlib_inflateReset error %d\n", err);
+		pr_warn("zlib_inflateReset error %d\n", err);
 		zlib_inflateEnd(&png_stream);
 		zlib_inflateInit(&png_stream);
 	}
@@ -38,8 +38,8 @@ unsigned lodepng_custom_zlib_decompress(unsigned char** out, size_t* outsize,
 	return 0;
 
 err:
-	printk("Error %d while decompressing!\n", err);
-	printk("%p(%zd)->%p(%zd)\n", in, insize, *out, *outsize);
+	pr_err("Error %d while decompressing: %p(%zd)->%p(%zd)\n",
+	       err, in, insize, *out, *outsize);
 	return -EIO;
 }
 
diff --git a/lib/gui/png_pico.c b/lib/gui/png_pico.c
index bf6eddb74b4d..cadbd52de7d1 100644
--- a/lib/gui/png_pico.c
+++ b/lib/gui/png_pico.c
@@ -26,7 +26,7 @@ unsigned picopng_zlib_decompress(unsigned char* out, size_t outsize,
 
 	err = zlib_inflateReset(&png_stream);
 	if (err != Z_OK) {
-		printk("zlib_inflateReset error %d\n", err);
+		pr_warn("zlib_inflateReset error %d\n", err);
 		zlib_inflateEnd(&png_stream);
 		zlib_inflateInit(&png_stream);
 	}
@@ -37,8 +37,8 @@ unsigned picopng_zlib_decompress(unsigned char* out, size_t outsize,
 	return 0;
 
 err:
-	printk("Error %d while decompressing!\n", err);
-	printk("%p(%zd)->%p(%zd)\n", in, insize, out, outsize);
+	pr_err("Error %d while decompressing: %p(%zd)->%p(%zd)\n",
+	       err, in, insize, out, outsize);
 	return -EIO;
 }
 
-- 
2.47.3



