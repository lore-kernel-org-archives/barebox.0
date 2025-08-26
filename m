Delivery-date: Tue, 26 Aug 2025 21:10:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqz49-004p49-2i
	for lore@lore.pengutronix.de;
	Tue, 26 Aug 2025 21:10:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqz48-00081E-Nl
	for lore@pengutronix.de; Tue, 26 Aug 2025 21:10:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kTUwwoPowzBJKGCUrbYC6lVaQoks4XbKuoAePdhC6ug=; b=r9RvDwis76+p0i58L4EEkFGPfM
	oSG8HMk7a0ngzNGP/9U05ADt8eQGbeqvrgggK4HOS/pE+DCajWY887QQvW3tkJRu4tVxDZ0pQwkIg
	ZjzmtL0Fgk5BLKq0c4xKZhWcafhKxCO4EkuA5aoBmm+0k9YBT68ct9b9+G1LlzBm5LMwYe/AZ55zJ
	DB9SVWTyLtbsQW656aQIxFAY8YkDerDmffoK/LvKJX4b3d7SrOHWJQVdwKhGw/7CqdRFYbBI1GG28
	77qFfP9+FRto+R+tSe+2cmkmBGoyrHdxGzxguNtMi7Jaeyb58i/NGWplHipR8jobslvAhlijX9IGM
	NKJ1q2NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqz3N-0000000Cxl6-123y;
	Tue, 26 Aug 2025 19:09:57 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqz3K-0000000Cxkg-0tVn
	for barebox@lists.infradead.org;
	Tue, 26 Aug 2025 19:09:55 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-4b109914034so78792601cf.0
        for <barebox@lists.infradead.org>; Tue, 26 Aug 2025 12:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756235393; x=1756840193; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kTUwwoPowzBJKGCUrbYC6lVaQoks4XbKuoAePdhC6ug=;
        b=OGMfg+mydHI3k6CHcjquO0fmRaMS0M4V1odZyBglWU8/w+TWqH4D2zTylYSKRV02Ak
         4CvzcCe+RHwO4OB5gODDUK51bfgq9QzI2K7nFLv5M1bSEerbaDnMQKL6pToTH1jD2IDF
         yNZ9N2GA1S1cEAqZRV9k2GF8PIXN/CbhokS1zfPVygtTiQ0bK5J1K2ny+iLh8QvFpGF7
         TX8jM8ifEWQ6t2KQWiEDMO+ozuwuz6RwIIkGcxgSPw3gohf5RabN9L/lVjOj6EtYK45H
         0nVgu0o3rlk6CLOfdcJxVfI+Ft/Rfbn1ZBJjgmoPGRUZEMCG3jogCMVDrl8oxoCYu3rt
         dsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756235393; x=1756840193;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTUwwoPowzBJKGCUrbYC6lVaQoks4XbKuoAePdhC6ug=;
        b=X0P33wFjvqFLtIwBG/+3zyF9zJQsB1v+Qwuaq+jAIuMisYjumpJPunR3G+mN6/fJ5d
         QovmdSsahtcq+fS7TRUXhourFtCc/wjYWfCfP8z66atsZEP8ZiKpVpvOfCEvAyzu5+lE
         Qdba5JyrzGiRpW946YahM+/rMLP4xy5HSVgWt2p9LeJ3ReIB1VW1KRBH/B1GO79fn4L0
         qOABvkuz4dOhECj6kWyjLVQF65aXMm9pWWfaOMzzN0LyX/4Be0jlLEQlkfl50HimFR+b
         /ezggBBRt2sjfU+2CJy1NkYqEIb7MbiyMHxuMT7GeASfmuKPKrONdFygKQUQ6h2utKNn
         nsiw==
X-Gm-Message-State: AOJu0Yx33budQd/e03zJQLhVA/GgFbonWNkuk4+nNYzisTkgNqBAMKu9
	EU+VP0d32Nh8AVeuDdgnzSwVUBZP+CKYTfW9w/OkhomhGNKkmK6ggF7/
X-Gm-Gg: ASbGnctA71A4kEuIclDo9SUG89pR5IlgEvot4lj7R7wqd4STFAElMRUAQgqcy/jih3W
	5/N0yLEnjatxgHbDsb2Gc5hxLOjo0jwJ2aYbDg+f01dz2z+DhoVK31V8HJ4zF/3VJHsolWAbR5Z
	TKUV9WGMTjzH5UM9NJ9ELilhFl1nvJZ6aQapawnQBREDcXgzAHMF6IuvElumMf86RVS0u8gUROu
	icPhbVdGH+rE1MB628un256U98dpM9WsISkVkzhm1hHEldxzbwcRaRiQ6WiiWzBGhYkdSnb3akj
	mcLV7wQBHr7+hb79HOqUgmkI8Qujhw3eBxcQZYCmxVwaFdN20ui/z9lbAdCI/uqqbwANWxS0+2g
	qXH4970crhn5Vvz/wFVdTyfWZxB65YnNsYlo5WBIE+5CacVHuqesG7uuryA7OgesiTMYg6D99QA
	BzOVVJivu3WeNQl52YKPtsHGT4uA==
X-Google-Smtp-Source: AGHT+IGyo7gli64Ezmyizq2o/xq/VbIS1jYR0euBZNhubbPo/7TP48vatFBYH8Ds0DT7dmUPNpCK8Q==
X-Received: by 2002:a05:622a:488:b0:4af:90d6:336c with SMTP id d75a77b69052e-4b2aab38d48mr193608201cf.41.1756235393031;
        Tue, 26 Aug 2025 12:09:53 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:3fd8:43e6:b138:1e91])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ebe6069a17sm739504885a.0.2025.08.26.12.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 12:09:52 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 26 Aug 2025 15:09:50 -0400
Message-Id: <20250826190950.3648779-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_120954_269205_794429B1 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: configs: raspberry-pi: add support for fit image.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/configs/rpi_defconfig     | 1 +
 arch/arm/configs/rpi_v8a_defconfig | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index ed583f80a0d7..ab146d755133 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -22,6 +22,7 @@ CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_FITIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 734f02e7f2bf..6c85209546e4 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -18,6 +18,7 @@ CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_FITIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
@@ -110,4 +111,4 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
+CONFIG_ZLIB=y
\ No newline at end of file
-- 
2.34.1



