Delivery-date: Mon, 15 Jan 2024 18:02:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPQM9-000QPk-3C
	for lore@lore.pengutronix.de;
	Mon, 15 Jan 2024 18:02:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPQMA-000360-Hz
	for lore@pengutronix.de; Mon, 15 Jan 2024 18:02:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=87VVdiG3blYtTkva186EK4jfam2j5Qch+JL10Tb1u9A=; b=dII0uRFHvKT2JtzajpUwSnzmas
	Tq127HEzfJ+JYFUFYE4kYdjz3R3ql6DOfn5jHnv7BKpUVqvpL3fq45oHIdFquLQqXWGoywZ1CvOeE
	DQhzB6dSKSbLcQ+JH658PV4SxiMK3Vq5zmBbunTIrJXtrPXuEwRS1mG5uDNJK2fjs4bEZT/5CLUDI
	rA1dMR8/xEpWbsyFm3//mwzXHqbwJjrBEo8AgMgshvlgMFfjWG+wgNwJ4yzNQ4VpyzgMIIj1r0c7g
	RFByOuqPr1UnP0chH+VJLRDEk/j4DRzFhs8/TfyRAhKO64yZgC6xyLCVwqAl6U0bi6tYJrEHXppel
	teIMUjaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQKt-009klv-2w;
	Mon, 15 Jan 2024 17:01:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQKq-009kja-2R
	for barebox@lists.infradead.org;
	Mon, 15 Jan 2024 17:01:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-0002aA-T7; Mon, 15 Jan 2024 18:01:11 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-0003bS-GX; Mon, 15 Jan 2024 18:01:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-001Lgg-1N;
	Mon, 15 Jan 2024 18:01:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.felsch@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Jan 2024 18:01:09 +0100
Message-Id: <20240115170110.321676-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240115170110.321676-1-a.fatoum@pengutronix.de>
References: <20240115170110.321676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_090116_799318_63246751 
X-CRM114-Status: GOOD (  21.66  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: i.MX8M: return error if imx_load_image can't honour entry address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX6 and 7, we call imx_load_image with start == true and address
equal to entry.

On i.MX8M, we call imx_load_image with start == false and address
unequal to entry.

imx_load_image interprets the address being unequal to entry as a
directive to move the image, so that the barebox entry point without
the i.MX header starts at exactly the entry address.

If we were to change this, say on an i.MX8MN, so address is equal
to entry, the system will no longer boot:

  - i.MX header is loaded to offset 0 from start of SDRAM (like on i.MX6/7)
  - barebox PBL entry point is loaded to offset 32K
  - imx8mX_load_bl33 will copy the running barebox PBL to offset 0

The result of this is that the TF-A will be able to return to barebox
(non-executable i.MX header overwritten with executable PBL), but
uncompressing barebox will fail (remainder of partially overwritten
PBL is interpreted as start of piggydata).

Add some documentation explaining this complexity, a hint on how we
could improve it and change the condition, so entry == address results
in an explicit warning message immediately.

Reported-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/xload-common.c | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 03eb2ef109e3..32f12cd7f574 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -78,6 +78,25 @@ imx_search_header(struct imx_flash_header_v2 **header_pointer,
 	return 0;
 }
 
+/**
+ * imx_load_image - Load i.MX barebox image from boot medium
+ * @address: Start address of SDRAM where barebox can be loaded into
+ * @entry: Address where barebox entry point should be placed.
+ *         This is ignored unless @start == false
+ * @offset: Start offset for i.MX header search
+ * @ivt_offset: offset between i.MX header and IVT
+ * @start: whether image should be started after loading
+ * @alignment: If nonzero, image size hardcoded in PBL will be aligned up
+ *             to this value
+ * @read: function pointer for reading from the beginning of the boot
+ *        medium onwards
+ * @priv: private data pointer passed to read function
+ *
+ * Return: A negative error code on failure.
+ * On success, if @start == true, the function will not return.
+ * If @start == false, the function will return 0 after placing the
+ * barebox entry point (without header) at @entry.
+ */
 int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 		   u32 ivt_offset, bool start, unsigned int alignment,
 		   int (*read)(void *dest, size_t len, void *priv),
@@ -102,7 +121,7 @@ int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 
 	ofs = offset + hdr->entry - hdr->boot_data.start;
 
-	if (entry != address) {
+	if (!start) {
 		/*
 		 * Passing entry different from address is interpreted
 		 * as a request to place the image such that its entry
@@ -129,6 +148,17 @@ int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 		buf = (void *)(entry - ofs);
 	}
 
+	/*
+	 * For SD/MMC High-Capacity support (> 2G), the offset for the block
+	 * read command is in blocks, not bytes. We don't have the information
+	 * whether we have a SDHC card or not, when we run here though, because
+	 * card setup was done by BootROM. To workaround this, we just read
+	 * from offset 0 as 0 blocks == 0 bytes.
+	 *
+	 * A result of this is that we will have to read the i.MX header and
+	 * padding in front of the binary first to arrive at the barebox entry
+	 * point.
+	 */
 	ret = read(buf, ofs + len, priv);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
-- 
2.39.2



