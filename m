Delivery-date: Tue, 24 Feb 2026 12:33:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuqfV-005A8R-3A
	for lore@lore.pengutronix.de;
	Tue, 24 Feb 2026 12:33:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuqfW-0007lh-A1
	for lore@pengutronix.de; Tue, 24 Feb 2026 12:33:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A3zrlEiIocfAFOcDkifXMMCkEQ7JqM1b+30tLkt2kjw=; b=C76xm/n/OSLmmUAzO07JPwZsAg
	5bCgMJfSPQf2oMmC2d6xzBSAFTmkhkp2J8VGC9lI+m2/Gm/quZWIFN5okA8zb0LuY9qTsqcXjCO6+
	ym4i6wB1vN0OLbdYjVCoH8CyYH27/cyNIPsnAFsycssJPPX1kw6WmcLcucW0tQr0XBfG/NUGMGe3p
	HvvOjfwwM+3qAE5p2DE65aat8SXSl/2x63hvbaUv5SoyKfFjWnj3Nr1Tj97rHYiP3LZ5u0/cWpTso
	vcMIwFhVvGSgNa05xYQUfrjLuHdEJnhdYZS+xaSvlsFRVljit0GcLNXBLIHklWidRub44bjHtbcvz
	QWvTAtZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqf4-00000001zSe-1GiV;
	Tue, 24 Feb 2026 11:33:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqf1-00000001zSJ-40qV
	for barebox@lists.infradead.org;
	Tue, 24 Feb 2026 11:33:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqf0-0007er-75; Tue, 24 Feb 2026 12:33:02 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqey-002ODY-2D;
	Tue, 24 Feb 2026 12:33:02 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqez-0000000AGyP-3vxN;
	Tue, 24 Feb 2026 12:33:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Feb 2026 12:33:00 +0100
Message-ID: <20260224113301.2448480-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_033303_996288_28B626DB 
X-CRM114-Status: GOOD (  10.91  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootm: give bootm_load_ functions an end address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

booti: fix use of uninitialized end variable

If a fixed OS load address is set, get_kernel_address() will not set end
leading to an uninitialized end value to be passed to bootm_load_os().

Fix this by determining the gap the fixed OS load address is located in
and passing that along instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/common/booti.c b/common/booti.c
index 4f6ccf95f85c..ba7e6081e6ce 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -14,6 +14,7 @@ static unsigned long get_kernel_address(unsigned long os_address,
 					resource_size_t *end)
 {
 	resource_size_t start;
+	struct resource *sdram, gap;
 	int ret;
 
 	if (!UIMAGE_IS_ADDRESS_VALID(os_address)) {
@@ -24,6 +25,12 @@ static unsigned long get_kernel_address(unsigned long os_address,
 		return ALIGN(start, SZ_2M) + text_offset;
 	}
 
+	sdram = memory_bank_lookup_region(os_address, &gap);
+	if (sdram != &gap)
+		return UIMAGE_INVALID_ADDRESS;
+
+	*end = gap.end;
+
 	if (os_address >= text_offset && IS_ALIGNED(os_address - text_offset, SZ_2M))
 		return os_address;
 
@@ -52,7 +59,8 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 
 	kernel = get_kernel_address(data->os_address, text_offset, &end);
 
-	pr_debug("Kernel to be loaded to %lx+%lx\n", kernel, image_size);
+	pr_debug("Kernel (size: %lx) to be loaded into %lx+%llx\n",
+		 image_size, kernel, end);
 
 	if (kernel == UIMAGE_INVALID_ADDRESS)
 		return ERR_PTR(-ENOENT);
-- 
2.47.3



