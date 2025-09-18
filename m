Delivery-date: Thu, 18 Sep 2025 09:45:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L0-004Nxu-0h
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Ky-0001m1-Pt
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tsb6Z011rCyQUQbm0Q60hWud12vmAnF+dUyOM5n0Ulc=; b=fk3YEDinZy+vsl8+5b7Dya2jcT
	SgrGGenBoQ+je5Qc1gdoL1LOIhbDr7dvpi7BZ/2HcsHOYb63IEfGmnZb7xHnyBkrEZNeBNY5PUGID
	D86jzf4MedIBg/l2zWKua808XA/mMjjdjKAjcfNxxB/yPXbVSnyZDyZX8fAE97E1iV1uPl21mxpbG
	Y6o5x8Oj25HboaxasngG37fzmTNixeQr84egpXUOFcRZZrLT2bEyvwZtCdKU3OTgm1Z4w+xxu4CID
	+JZ+Fkzz/+anSvUTDcneuSCQOwiDion9ptNN+Bn12MzUhJgbgGYrJBrm39Otd+HWFbDKN6yt5V7ab
	hle8LKPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KP-0000000GaRv-3wCj;
	Thu, 18 Sep 2025 07:45:17 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KK-0000000GaMC-20rr
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:13 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b03fa5c5a89so124541466b.2
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181510; x=1758786310; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tsb6Z011rCyQUQbm0Q60hWud12vmAnF+dUyOM5n0Ulc=;
        b=xq+z7xNeghU/0ZLO5If8Zw2YQFPqBQoCKWsZkTnx7EOTnawmSkYEgWsyvz/KBoqPk8
         qTUVCh7tNjZ7xi8sGZW9gYyLTPr24du3i5pJgdVbDPj64D8XiWq3engWdvHDvKScdqe4
         Zi908EnXhFkhcexsUIFTJSgbUws7C8U9w4KakwQjp9hURkAvQVzmTCTA56UcwfKmLlL4
         kGN2aLYfyIz78SX5dZh6fu00Y2JxZXO13+BxORlSkpFdpjK/nCBmZPLo8EGEVYEHixqW
         5NUVXTKhk8hZXSWIPge4Z0p2svBgJL+5409QDMq1BWcTb8anaPRdOEH8g5KE89EAkbNM
         AafQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181510; x=1758786310;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tsb6Z011rCyQUQbm0Q60hWud12vmAnF+dUyOM5n0Ulc=;
        b=J0ZckQBnIySR2sP4TAN/AH4Xh9yyLI6yVE7FpxuZj6IVCc76XgmUa0gBLtLo0xPeKy
         7a1FhCqtnsTI/DzyRbxZ+a29tJUttuOfEqdcqvZ3yRuBy1p/1oQkcGmXs3iFG9SgbzQu
         lRosWlukcV4uWP2r1Viab48rzwvlJPN/nzOUlc1NnC+xUVreXmIJ+RjxaTf5y/6sqMAs
         ctmYMGW8q0DaWN7H3zI3oBGgHWxvtaMMxeiHrU6EMQWbtErOzuDx0WuepaVrgC+IZ/Lo
         RfmM5fBIynqUlVd2RwxIopa0hlhTaPAOz6RZKf/bed5WfDehkdLI47+vOUAFmFPpEHUc
         aJEg==
X-Gm-Message-State: AOJu0YzcqzW8ewNsdL7W0eQrtvF+ETgriPrU3ervWq5knvQqaW7ADsbY
	DFfEVdZmCXBIhkyOsL6dxAuoneh2EzVn4pJAtlPaZorAyKtEwcsaYlRfVRCy63EuZdoEro0QB47
	7pojH
X-Gm-Gg: ASbGncsnpzrGnlJrLR+wWaR51zEfEL0eNL4flVrnCt0w6JW80npcuTHpqUkkoAxScwW
	8uuEL+dU86vmtfloOtst5HKYlgrzGm7Bq6d9d/d0JuegxliUv2zqquwXuGSClx5cr8KPAhWIgKk
	JoBgaDvRNvKheM/8yNAqwmDZ89QrDRvkrCtHT2u2wTIDlqwNa4zRmwWX5UtCUPwz3w4E56LDsec
	NmnRa4ZVCwUBLxPicg1+Ba+tNoBeLeKcM3W++vOV9+KkI/BFBqwcRhk8WNfFvnDB9ezXWFVnQPd
	ehK0xaZ0qeFiT5PNaRZ7C3eY/JpYgkWn0LJ8tf7IuHYwqyt7XWmv68MgDJQMFQbZviiaQIenOFd
	MWfUSDWSo6xKevYvdLnvOxO3T/h9kX7x0rQf60v7mNusFEgKYSFmzKA9OijXPlDXYXfXCizruvp
	DX2PE15KRj
X-Google-Smtp-Source: AGHT+IH45zwboRKEv3wBH39g6vQeRawHfxD/Z+5+cQ/ysnq/IKl81g+1MOxtGD2bZfSvymQUl44j7w==
X-Received: by 2002:a17:907:72ce:b0:b07:c814:adc6 with SMTP id a640c23a62f3a-b1bb88c1a86mr575178866b.55.1758181510330;
        Thu, 18 Sep 2025 00:45:10 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.09
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:10 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:14 +0200
Message-ID: <20250918074455.891780-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004512_549139_791116A7 
X-CRM114-Status: GOOD (  12.94  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/11] dm: verity: Add helper to parse superblock information
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For hash devices that have been created with metadata information in
the first block (superblock), parse this information into a dm-verity
table entry.

Primary user of this will be the upcoming veritysetup command.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/dm-verity.c | 54 ++++++++++++++++++++++++++++++++++++
 include/device-mapper.h      |  5 ++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/block/dm/dm-verity.c b/drivers/block/dm/dm-verity.c
index b7ed3dcc93..d7b212fba6 100644
--- a/drivers/block/dm/dm-verity.c
+++ b/drivers/block/dm/dm-verity.c
@@ -16,6 +16,7 @@
 #include <disks.h>
 #include <fcntl.h>
 #include <xfuncs.h>
+#include <unistd.h>
 
 #include <linux/bitmap.h>
 #include <linux/bitops.h>
@@ -461,3 +462,56 @@ static int __init dm_verity_init(void)
 	return dm_target_register(&dm_verity_ops);
 }
 device_initcall(dm_verity_init);
+
+struct dm_verity_sb {
+	    u8 signature[8];    /* "verity\0\0" */
+	__le32 version;         /* superblock version, 1 */
+	__le32 hash_type;       /* 0 - Chrome OS, 1 - normal */
+	    u8 uuid[16];        /* UUID of hash device */
+	    u8 algorithm[32];   /* hash algorithm name */
+	__le32 data_block_size; /* data block in bytes */
+	__le32 hash_block_size; /* hash block in bytes */
+	__le64 data_blocks;     /* number of data blocks */
+	__le16 salt_size;       /* salt size */
+	    u8 _pad1[6];
+	    u8 salt[256];       /* salt */
+	    u8 _pad2[168];
+} __packed;
+
+char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
+			       const char *root_hash)
+{
+	struct dm_verity_sb sb;
+	blkcnt_t sects;
+	ssize_t n;
+	int fd;
+
+	fd = open(hash_dev, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(-ENOENT);
+
+	n = read(fd, &sb, sizeof(sb));
+	close(fd);
+	if (n != sizeof(sb))
+		return ERR_PTR((n < 0) ? n : -EIO);
+
+	if (memcmp(sb.signature, "verity\0\0", sizeof(sb.signature)))
+		return ERR_PTR(-EINVAL);
+
+	if (le32_to_cpu(sb.version) != 1)
+		return ERR_PTR(-ENOTSUPP);
+
+	sects = le32_to_cpu(sb.data_block_size) >> SECTOR_SHIFT;
+	if (!sects)
+		return ERR_PTR(-ERANGE);
+
+	sects *= le64_to_cpu(sb.data_blocks);
+
+	return xasprintf("0 %llu verity %u %s %s %u %u %llu 1 %s %s %*phN",
+			 sects, le32_to_cpu(sb.hash_type), data_dev, hash_dev,
+			 le32_to_cpu(sb.data_block_size),
+			 le32_to_cpu(sb.hash_block_size),
+			 le64_to_cpu(sb.data_blocks), sb.algorithm, root_hash,
+			 le16_to_cpu(sb.salt_size), sb.salt);
+}
+EXPORT_SYMBOL(dm_verity_config_from_sb);
diff --git a/include/device-mapper.h b/include/device-mapper.h
index 255796ca2f..d7080101b0 100644
--- a/include/device-mapper.h
+++ b/include/device-mapper.h
@@ -13,4 +13,9 @@ char *dm_asprint(struct dm_device *dm);
 void dm_destroy(struct dm_device *dm);
 struct dm_device *dm_create(const char *name, const char *ctable);
 
+#if defined(CONFIG_DM_BLK_VERITY)
+char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
+			       const char *root_hash);
+#endif
+
 #endif /* __DM_H */
-- 
2.43.0



