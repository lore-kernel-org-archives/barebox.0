Delivery-date: Thu, 28 Oct 2021 03:32:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGx-0001y7-Fv
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 03:32:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGw-000116-KM
	for lore@pengutronix.de; Thu, 28 Oct 2021 03:32:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imZDb3GGSttZbbfUkXR2+WFZb8vQDDAQUYfNaj/bRhY=; b=fDzYbRB9VV1ZdG
	9TX1qgPYskDRovhof9adzGKR7zcx0bAub/tO2WOUV4iA0nDaa+bgbXWVye5mpqzPGQcUCuxNQo/88
	326S78qVgE2+1loaZ91bNN0pVVtQCiPPTkw2IHYrvWenJpr+pyoWDHdmYRoImNHwwwmQXedCRRg+u
	0jvWenz8XDdzCOl5DnxpEtqx2ckGZbejx/F2rloGNiXwi759ojv9O5Eww7TM0WwAhWsaHxf5vq+jw
	GRRPmxK57nDPMyRcF4i7N49+z+VKCBa6thwYxs5t5otKIboGX/UK9kjAoKDqmgcnVuamlHq4aihv+
	CG4hv077zvoJ8PSWMeyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfuDb-006cC6-Q5; Thu, 28 Oct 2021 01:28:35 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfuDP-006c8W-8Z
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 01:28:24 +0000
Received: by mail-lf1-x134.google.com with SMTP id i13so483349lfe.4
 for <barebox@lists.infradead.org>; Wed, 27 Oct 2021 18:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r9H1mmsbtKD8WCby4+y1ftk9gMYtb+ugsx92VS0X+68=;
 b=qGy/qdEBV3xm2iQ3+eYz+t4hdFlhmF4ajkc/3CaioOCcBZWPAaODvIURm2RxJ5ZUpQ
 VZM2JNAAJwgKD7TdwgleJ1m8Q7vMP4FUqhCBdz84qE9Sjba0BSLm4oTGYI9iDnShrG/o
 UJbl4aQUddZ/eJh5T4YPWT4HUDePu8U5yilqz/87RiGHQ1o3LYR6XhHxb63TAX9Rj7ws
 r37rxPBC9icGpThcgJH1j8CSbwDn4i48aCos1XO3zl7mc5GU2QqjPMVYZULjt9NBkth8
 pUmnR5/QQDjQr+2akis1d2B1XG/BqRF+xGSkB3+3/f0UOeYW7gEKnYRo5IE2QplZcjdu
 c1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r9H1mmsbtKD8WCby4+y1ftk9gMYtb+ugsx92VS0X+68=;
 b=R2cNXGEqQZqfmamdYaxjD58vYgXz+yLndg+a31wrVJt+a9pUytkNi0nj2Ar7A1Jj64
 rQb5u9at+OK3RUOLvAke18F9PZU7aapcfi7WUT51IjBe3fjgeIWULUR5k4gzKQuvem2+
 txanpQ58DZehoyof+U7ZkcwGJglaOgqhAMul7Uge4AmtFBgU6VLgvn/R1d13Et6CSD9e
 eDys2YAlj6CN0JzU9ajtB73QT2cRLYi4v86ciCWfZA7GbShwOiz/8YCBYgmjS6SmpJoO
 RtD3z5i2alv/cv/iemcl9TkEPJbbdVqFKuNkLjettUxWBKkG8lut/cAcrTHSsarZcJLz
 OW/w==
X-Gm-Message-State: AOAM53352CAU6hZj9yi9Q8KvHQ2voTXhkmWXDJ0/HI4xUzse84iJb61D
 UJB7LoyBsvvjvlYv1CBGLj1y6pZmf94=
X-Google-Smtp-Source: ABdhPJxBx4Ee0/6+kWslG4UmRrGzVRbnsorOsv7lhkJTyRVVkK5jgn85C/EbBPQUvVwilxHd5mnZ7w==
X-Received: by 2002:a19:5e56:: with SMTP id z22mr1116544lfi.146.1635384500980; 
 Wed, 27 Oct 2021 18:28:20 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id h14sm153111lfv.83.2021.10.27.18.28.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 18:28:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Oct 2021 04:28:13 +0300
Message-Id: <20211028012816.929611-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211028012816.929611-1-antonynpavlov@gmail.com>
References: <20211028012816.929611-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_182823_358336_9FE7913C 
X-CRM114-Status: GOOD (  11.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] imd: fix imd_is_crc32()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/image-metadata.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/image-metadata.h b/include/image-metadata.h
index a9cb9cfe8f..439a0cba81 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -67,7 +67,7 @@ struct imd_entry_crc32 {
 
 static inline int imd_is_crc32(uint32_t type)
 {
-	return (type & IMD_TYPE_CRC32) ? 1 : 0;
+	return type == IMD_TYPE_CRC32;
 }
 
 static inline int imd_crc32_is_valid(uint32_t flags)
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

