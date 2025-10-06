Delivery-date: Mon, 06 Oct 2025 06:16:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdw-004lrJ-1b
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdv-0002ra-9G
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3wcYv0uUlC+8453x4W661k11atzKYWEGvEjUCbuj/Qw=; b=Ytudadvz3Md+WGyDlBD0y/FPoU
	J0tcFiiD1FdQjOg9G38qgLYFB/lFPN2ffCpMBx8CV8uVoeK+R9XEsSXBXC09RBmK/v4fM4QjcmmK0
	ZLc87AmhgsHmNZlbAlEI+CUXxYx4+r8wfrALdHrGnqE2d56f/OrNQr/QZhD209+53tomaeyNW7oUf
	9Q7RL9D9D1cQeJ1xlz4sraxcBiHUPMGbwaeprTVvEkqEoq3vxkXWsg1SzeEH9hMogtXP3Ymo+DQ1t
	bW6Sif8WSYFkEm1qJXYvvBVwRq6VHEhhKESAODxHmykTsp04H9XbtwXWa4/UHv5zOZmIfRc7Kuq0b
	KT7bBELQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cd7-0000000GuG6-0HLP;
	Mon, 06 Oct 2025 04:15:21 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cd4-0000000GuFI-1b2B
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:19 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-4e56cd8502aso47580511cf.0
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724117; x=1760328917; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3wcYv0uUlC+8453x4W661k11atzKYWEGvEjUCbuj/Qw=;
        b=RDJQ/pSQexnffGZ9mQM5YtR6cFDd2VRV3pFLpeBU/ixCR5R50UXy0O4oJt7buquzbo
         l0dHIyXZU+9yBP7tGe0K2bgIM2E06J6qyM8iXPQezKabRtaSy/CqEDGuWaJ736I3RU9U
         W3PLFYwnJ754u2+G017OZubYGvxzOsWcY2/HKvzUKaF+ZyQiAVfE1uosUMJXw/3YdNl/
         Fwpy2AtjYWx9BRYAQ0ZQVV1dERLxTCIOm7Vtw4Ph6t3f8GhwXRADGxRlo2aMt54E8zJd
         mVCZ8BlsuW5B0xMiNIEKE3F0bOo4V7RRdkqxfJs5Y38IpIq+6qhWDPFTymyoXBby8Uh4
         C5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724117; x=1760328917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3wcYv0uUlC+8453x4W661k11atzKYWEGvEjUCbuj/Qw=;
        b=aPORId1OGDJ7uLYVAxFBFK9DBGlKR43ahmykoqWAEmM7mPHlVyY3SZb6/TEUE/XAh0
         Jfnl5DsHGMPxDC2TLwlzXmwYa1C29c5rUL6Q3mfVQnszU2qQVe87XyTyyNYnovFn/rq6
         MAK6ocsquG2uGw1l2APoHmc/djjUSQIotKVkYYbj1ZEQaloboyrOU9JQWRcSgpMksSWL
         HenZvSC6y3U0z0FOoOJn7Z/54WIx5BgxAOV9IHm1APe62SIG8hMEmrhDYRYW1rQAB4Cv
         cT717SjrCUQgWB4kaxzf/6gNmkoQBNrxihum9KhGCPJoneGsROLswnvCahPt0SlM5BmY
         fZyw==
X-Gm-Message-State: AOJu0Yy7FYVmkY10yrMhYkVH/Yr/HEFwCL8mV71Zn2ElGYwoCLZRQnTe
	Fw3ZV/ywmykIXY1fUESKVKORWIs5/GI3muoteFGiXJHCbF6FtTrCwoNT
X-Gm-Gg: ASbGncv8wE2ETY4wsJVrory05vaweA82Ps1JQPIkRj2PBintZVDhqU7s1poVtO3Aw5S
	hUDZvlUhhIkRya0xkY+sXnzS6nWBEbdWfth3DzCdKB3pv2864Um7jHFi8nulo2u2mFZz1sTNjLb
	Yb6ZzLKPpGIafe7mJnGan0Pbz3LeQS0lpKx3ST9oLKBbcMo89Q6N6BXZtkS113cwkCNsnlY7n9U
	tlV/HMdZHKZCbiBvphBFvwb+XXkIEnaThVY0ly5b3Nrgak8foq9zs/SNrmtCEJU7j6VQZYzdMdw
	xj6FbqQNdQqScbBSJGlLrIw7b9RpW/994d1oWBPVWd4hH0KGkXVLK5Ta49MuMF4AUMPsEJXa4Yj
	AXv4gIDLqK2Pxy9zQlT8a8HnLnXsgSQdrMTVqdkIZGncYW5gnyyFz8ehZkA0OWFpp
X-Google-Smtp-Source: AGHT+IGM8zfwx1DpN4mDfrnk2b7zjLWjQLMS8nX60FAt16/CLgXd2NIjO4me9Uk0WPTiRsXOHgXPIw==
X-Received: by 2002:a05:622a:13d3:b0:4e0:b5ef:2ba3 with SMTP id d75a77b69052e-4e576a959e4mr146163401cf.37.1759724116947;
        Sun, 05 Oct 2025 21:15:16 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:16 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 00:15:02 -0400
Message-Id: <20251006041512.1360284-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211518_431984_2D403065 
X-CRM114-Status: GOOD (  10.85  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/11] common: filetype: add detection for x86 Linux kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Introduce a new filetype for x86 Linux kernel images by checking for
the "HdrS" magic (0x53726448) at offset 0x202 in the setup header.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index eb397a175cb6..72f84442cae9 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -87,6 +87,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
 	[filetype_rockchip_rkss_image] = { "Rockchip signed boot image",
 					   "rk-image" },
+	[filetype_x86_linux_image] = { "x86 Linux image", "x86-linux" },
 };
 
 static const char *file_type_to_nr_string(enum filetype f)
@@ -435,6 +436,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
 	if (is_riscv_linux_bootimage(buf) && !memcmp(&buf[12], "barebox", 8))
 		return filetype_riscv_barebox_image;
+	if (bufsize > 0x206 && is_x86_linux_bootimage(buf))
+		return filetype_x86_linux_image;
 
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
diff --git a/include/filetype.h b/include/filetype.h
index 6f4a103df304..ff4d54ee3c45 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -67,6 +67,7 @@ enum filetype {
 	filetype_nxp_fspi_image,
 	filetype_zstd_compressed,
 	filetype_rockchip_rkss_image,
+	filetype_x86_linux_image,
 	filetype_max,
 };
 
@@ -150,4 +151,9 @@ static inline bool is_riscv_linux_bootimage(const void *header)
 	return le32_to_cpup(header + 56) == 0x05435352;
 }
 
+static inline bool is_x86_linux_bootimage(const void *header)
+{
+	return le32_to_cpup(header + 0x202) == 0x53726448;
+}
+
 #endif /* __FILE_TYPE_H */
-- 
2.34.1



