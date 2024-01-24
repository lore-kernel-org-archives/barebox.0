Delivery-date: Wed, 24 Jan 2024 14:49:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdct-00GGUA-0a
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 14:49:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSdct-0006Ug-RF
	for lore@pengutronix.de; Wed, 24 Jan 2024 14:49:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VTVrY8uJd6T5055FQ4ntreoxkWzoEUqqtVAl5ROHuBI=; b=mxJsbZ9HYHQQMDdvpe8TA81RnL
	qJL0c/w7Otv1EGnuHaIeyWaxbZIPxD8uu8SHPaEjfDwMW1auvrcXTFvVWtBDZNLQkM+/NmmeSy2Wz
	WwNkt91B09wsvAPGUI3RfBpwuuXu27ioPjXbKDamazViT/3X2wGzAH3ToJ4zIVlePrOEeWFRe/vUu
	Bt8RA/pThUq5CDEzpf8SJcOlFfZW5qi/p02zPWDaymX32Ec8yjNVqoyISAtuvJENn/atAIn8QqRZ0
	cP3XD1ODyCrSfGeOc+Ob5j5nsqPKHUOL17yX4Et0z2HXq2sHdhfQphOv3Kywi2StmjAORHyRQhEUq
	eSPVeGeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdbe-003WN1-2S;
	Wed, 24 Jan 2024 13:47:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdbY-003WJw-0n
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 13:47:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rSdbS-0006By-Fd
	for barebox@lists.infradead.org; Wed, 24 Jan 2024 14:47:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Jan 2024 14:47:36 +0100
Message-Id: <20240124134738.133782-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240124134738.133782-1-m.felsch@pengutronix.de>
References: <20240124134738.133782-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_054748_286291_3838FA5B 
X-CRM114-Status: GOOD (  10.79  )
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
Subject: [PATCH 1/3] filetype: add zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to detect ZSTD compressed files.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 14948db4469f..7f1ce20d0094 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -17,6 +17,7 @@
 #include <disks.h>
 #include <image-sparse.h>
 #include <elf.h>
+#include <linux/zstd.h>
 
 #include <mach/imx/imx-header.h>
 
@@ -78,6 +79,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_mxs_sd_image] = { "i.MX23/28 SD card image", "mxs-sd-image" },
 	[filetype_rockchip_rkns_image] = { "Rockchip boot image", "rk-image" },
 	[filetype_fip] = { "TF-A Firmware Image Package", "fip" },
+	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -320,6 +322,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_rockchip_rkns_image;
 	if (le32_to_cpu(buf[0]) == le32_to_cpu(0xaa640001))
 		return filetype_fip;
+	if (le32_to_cpu(buf[0]) == le32_to_cpu(ZSTD_MAGICNUMBER))
+		return filetype_zstd_compressed;
 
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
diff --git a/include/filetype.h b/include/filetype.h
index e5aa050ebc27..a1f98f2a983a 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -60,6 +60,7 @@ enum filetype {
 	filetype_fip,
 	filetype_qemu_fw_cfg,
 	filetype_nxp_fspi_image,
+	filetype_zstd_compressed,
 	filetype_max,
 };
 
@@ -84,6 +85,7 @@ static inline bool file_is_compressed_file(enum filetype ft)
 	case filetype_gzip:
 	case filetype_bzip2:
 	case filetype_xz_compressed:
+	case filetype_zstd_compressed:
 		return true;
 	default:
 		return false;
-- 
2.39.2



