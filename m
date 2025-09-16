Delivery-date: Tue, 16 Sep 2025 02:17:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJO7-003V0h-1A
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 02:17:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJO6-00015w-Hh
	for lore@pengutronix.de; Tue, 16 Sep 2025 02:17:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=; b=yIsEpY8E0zORXVIH7BQuLLpXsr
	22cCxa7Be0eiUXASLVZ4aCq9tF3WlUoxOSlHoqvjvLrIpzu2ynyJLK868w+ArUu61Vfxm4WMODSkS
	wwX3NUR6aS7H8yV5qYC7Y3OJyNmLJ54qyHwIl6NEJPHNS9QtFVn/kAKqXckhJzKXsQ3ljRQq5kO3D
	6Ml/my+MFTSS/U8RVoZfrY5BRYluUzhl7w1Lz5BHTGqnsdnOnuQ6EVUwNDR6W5/N+rHCPpwXO0SS9
	/0wJ31cs4cTFkROVcNxQgATwZLKk0f+z6rUjjmUqk7T/UxEDdqhUKmwQJDNCKMuXoT7t39t7d8CSP
	BRimTxzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNX-00000005yU3-23Ui;
	Tue, 16 Sep 2025 00:17:03 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNV-00000005ySD-1s7c
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 00:17:02 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4b5ed9d7e20so53727751cf.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 17:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757981820; x=1758586620; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=HD0/JOWxUHvgT62uH/WmHCMeKIpCfJuAK/RKBoKP531iEa+UTlMncDT6fDTPY6iCQI
         oIfo7cDWpQXcjkCHIJJxLAoljD1ASubo8uU9vfn3X5L1vxzksLZqZILb6zG12IwzY/qT
         p8fTLrM8UFU+PsCSul/xJTO6Sx/y49CKq9D7Jxo/SliBgwFq5W9mWcHLUrOybPis9wKB
         xonTn1CI/U7o/rOaDgWKjY3Rvw3QI3Mdxtjy/4IjmvM2XveaAc7jnj1viXN4BNknomPK
         xwnRRHhTlcltWBOLI/QoRACCM8gZ9o9AuXIbutpiW+Yvi8j/grTufz9uqJxJa4wfcd8o
         2ccw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757981820; x=1758586620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=lR8OPGZD3K8MFoEYnGeuQ7/W7WJIG7dQAbNqjPXDO8PGk8Vkk1GYnAA+bej7YaUR5V
         UBFPWpzmPg1Oh6obmOzPE/85MTQ8cTvuYIC+9t50MkT8/ENP4kHoz3n/g/sZne6M6ty0
         Sij9FarwNxazWhfTmFTunytduG4BIeiI+nfJ1b5fAA+d+ygT+O2Q8kesIdAuEf03thJ5
         +0GaPf0zBHkGMnSHdrOj6jzQNXBap+d5HO+ckrCq+y10iw+m0WsknygF1LUhmRNSA/N5
         p7Uu94hhycv1aaVnVEw/nHg8zwplwmQdckR/X/OfwTPBGxXCO3t/QLeVV1rdqHG4U6lf
         ozMA==
X-Gm-Message-State: AOJu0Yw3ObgVnyAuhS7eSlLTVoIzm8kywkABCJCZhhEkw9mGn4wE7Ot2
	qabUMnivjjlIme/+P58BllfOGw1KeidBTiukFWN5ab9EU+DbZ5sxz1upy5eRDk9TzevHHQ==
X-Gm-Gg: ASbGncu6hWXpWNNxZkW31SMi4e1FQWiLMqt/2EMZctJd/v6wj2j1XGnZmOzsbot+iBc
	xVsbkzsoPBBOoDd1LjOpE2szvw85JjDk+fbtMlt16DUGC62dQ2oToHODC42FHsXMRKHuQbst1pE
	V3PA3cle1+Nvk330rROxql+K1eevLajyMmVTr6jg+XIB/2O+mHu7q6gZBphc0+hDrmwPqkuh6p6
	QqrMbBZkSEa83viVBE8KQIO5YIZ4ubv1en3XNTrx1bGyojRjJXpJS91AJsHHH1xjplTn2cilm9u
	hztpGLyrxQpNZaS4QYexBF5El/SZqsR6L4Z0jUTwhQ86KMC4L7s2dJtQJbPLEnZQOAU3Z7PANaN
	hJykxrK6XXOy+q2qSHMsJdd+4BgdmD2nv2tmtshWmf2wv0a8CJHNaXTVkvkx9bQPPDpg7BwWs1U
	aYe18zXEiQ7uzaHhupRA53rZvOsxMN1/lBeJFN
X-Google-Smtp-Source: AGHT+IHAm4WxIz/GonxXVgVorwr2WORV+OHNYcr7cK3L3KK37qaiRKH4/7YtLHlJ7R3POC4/AcriIw==
X-Received: by 2002:a05:622a:1348:b0:4b0:677d:d8e1 with SMTP id d75a77b69052e-4b77cfc1f98mr172004961cf.17.1757981820091;
        Mon, 15 Sep 2025 17:17:00 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:db10:d083:890b:6e1f])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639cb4212sm73732431cf.19.2025.09.15.17.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 17:16:59 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 20:16:47 -0400
Message-Id: <20250916001649.591989-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916001649.591989-1-chalianis1@gmail.com>
References: <20250916001649.591989-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_171701_487869_580D9283 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] efi: payload: make selectable without COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/Kconfig b/efi/Kconfig
index 5f4c6713d539..5ae7ec92e5f8 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -6,7 +6,7 @@ config HAVE_EFI_PAYLOAD
 	bool
 
 config EFI_PAYLOAD
-	bool "Build as EFI payload" if COMPILE_TEST
+	bool "Build as EFI payload"
 	depends on HAVE_EFI_PAYLOAD
 	select PBL_FULLY_PIC if ARM64
 	select EFI
-- 
2.34.1



