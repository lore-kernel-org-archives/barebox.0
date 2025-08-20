Delivery-date: Wed, 20 Aug 2025 14:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-002cDN-1U
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmS-0007qB-9f
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zTSTboTejOVndRVclsmIcdMuZbTqiqub6vUFiSHxFsc=; b=UcvyyIoz0xAFl/5pb6vJwn+2ux
	Qhq/Xv85RqL5mlwZiMBrKPF+mhYB8Z3Z0OXZOxnOWZJ3Yoj/Uy/ctyTjdDE3lHbEwBE7D2w1WKbQh
	uxZOOXDJBkjU37Au3vMlklNCrPaE+2u7VurXlctj0IuQmfeYHi532kTGV0taZWQTGVFO/MFVMHbO1
	i7rlZ9H4C8/MBB6owVD796IF+jbiqovn2s6Gf47/LAlGhPygx6i7EJhOuNJ+8tyBh1fI/sF4i+u5D
	vkSmbVt253zr57bQkuSbuJ4056fc5VbJXu6mLLXNYTNVBlXbl8p21F4t9MfLGqhr1EFej6mrNEmfr
	QFf6BGhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmI-0000000DXCp-1nP8;
	Wed, 20 Aug 2025 12:18:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofsQ-0000000D6uw-0oJD
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:17:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uofsN-0005Ap-Os; Wed, 20 Aug 2025 12:17:03 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 20 Aug 2025 12:16:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-rkimage-signed-v1-1-0ad3d1d1c952@pengutronix.de>
References: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
In-Reply-To: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031706_241599_51F64F98 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] filetype: detect Rockchip signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rockchip signed images use the RKSS magic instead of the RKNS magic.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 019f34811103ac66dae05e8c09b15fc061602eb8..eb397a175cb63df06e4426d2b99e4fde360c5b11 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -85,6 +85,8 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_rockchip_rkns_image] = { "Rockchip boot image", "rk-image" },
 	[filetype_fip] = { "TF-A Firmware Image Package", "fip" },
 	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
+	[filetype_rockchip_rkss_image] = { "Rockchip signed boot image",
+					   "rk-image" },
 };
 
 static const char *file_type_to_nr_string(enum filetype f)
@@ -385,6 +387,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 
 	if (strncmp(buf8, "RKNS", 4) == 0)
 		return filetype_rockchip_rkns_image;
+	if (strncmp(buf8, "RKSS", 4) == 0)
+		return filetype_rockchip_rkss_image;
 	if (le32_to_cpu(buf[0]) == le32_to_cpu(0xaa640001))
 		return filetype_fip;
 
diff --git a/include/filetype.h b/include/filetype.h
index e66237878615ecf039e12ac68055000b60fc13a9..6f4a103df3040ef259660d06ca878f72e2245c12 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -66,6 +66,7 @@ enum filetype {
 	filetype_qemu_fw_cfg,
 	filetype_nxp_fspi_image,
 	filetype_zstd_compressed,
+	filetype_rockchip_rkss_image,
 	filetype_max,
 };
 

-- 
2.39.5



