Delivery-date: Thu, 20 Mar 2025 10:15:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzb-001pZf-2Z
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBza-0007pR-Fv
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CuG4+Lnagvp6+YMSrevu/yAH0lADoUtFEdETLn4bP3s=; b=glPcFF1/Oe54YACyKwmiMCV6Eb
	aLoje7KbaAH2yeFjMEulJmxfI3C49JfKQ4MZA/v97WtTnk2L1D7sjmz+7iu3etj5S26Lp738olLkQ
	Xw+TY0rIPW+cl7sw8/QO4p4VI5gU1oA0V1Ifoq8GmRgtEadPj/6o/YWcDNErMtdLNX5u/2rOerc/2
	SULWgQ6H72NDdh3zg6ysYwUPJVSlVOOx36e47ZGoOBixX1z3+auJcDQq44lROBtD75Akyt5v56inW
	Kan4p9xdMr7F/px05ZHalApy3QHn7U+WAK5UAoTB0yJFSz6Hjmn8PMD6XCKCD04wbcCNdwATI1Im9
	DBtQf68Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz6-0000000Bers-2lYl;
	Thu, 20 Mar 2025 09:14:40 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz3-0000000Bepa-1prS
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:38 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-307c13298eeso6586971fa.0
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462075; x=1743066875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CuG4+Lnagvp6+YMSrevu/yAH0lADoUtFEdETLn4bP3s=;
        b=M8msw36exNBBvHF4yjcDMemOzXbeZBKHBUP5SjIAWfk6NSHzXzmP7OtEYwxCOwHlpm
         JLP+ZDuFuGijkJ2+6BKcFb83G5XIcfVMsbnr0xjHT4qr3STPD79NICSVq+H9+0+oD3/n
         bWysxoI/sbnXVyec5nydgbtXGEyVFTVWIw8IIS/08Uo4lL1jxToDMCKEGcba4P1rDNmF
         FbDAZ6+MLdgxDOLWJW/JWIJj7+NuO+U+LvmYhT4CYtrMlq5iNO8uBhGFUDUZsN6kKjGn
         TGkrOohLlLZ/JATpMu5HEUHn+wXmDc/DBXpX52elEFtKRGfqMbmE76jQ/aBYcw8A0RzN
         Lsfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462075; x=1743066875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CuG4+Lnagvp6+YMSrevu/yAH0lADoUtFEdETLn4bP3s=;
        b=u1po8WCI2jjzIYr1ZlMQ47k2YJQOWxAoSNxqIVdxpHa6eKdCIsdOaraK5zUdk1qI+y
         xCE8heWcDyVzgQ+/1A+BwE7/2RD6wkSkmc/77JGIpa+j3+spsRRj4QsSq/0CE0dWQL25
         8MyZXcAzNlJUUm/keUw78S1/Zdr5gbKgTxdzRKaK0zYIFB42gEnZrXmU7klhlfbJvNoP
         h6GmOkJDTekSp0kCRY/g7nLbMEVa3iiI699sKH0M1C88mYgpejvwdPhO93atRaKAQ3ir
         2sXTtrDPoxTsg07HQZGtJ9XwsaVFon5ncmAPpYCVK/hK7jS3Stz3bafyx4FQcq7DMPAr
         3ZfQ==
X-Gm-Message-State: AOJu0Yw0QHBOLc5hSakBgi6jO2OfGl4hFI3f5PBOGAjzfZap+vKwgXzF
	SNKjiSLSEEus2q69mvl+KrvuQ8SJPjOh9mpai5XqRwuGKbsk2gEG/RxiZQ==
X-Gm-Gg: ASbGncs1qv/CdpIpi2zTijSY1g0Hu8Gs0c+XQyJgLT31RX38nABwZokN6+axI9Iu3lq
	/MyRLe9ufuDGQojQLuggjDHLr4zL171qt/7cVMJuy7bT6CmG79M05KxO6aeQ/kkWtG9ju8ybyuq
	eleMrii1c4XEyFMygiaoH0AgWYdkRKzQmuZw6qigryJrvkhZB34Nx38SyjrnxLc154jqZn5A1tH
	SaOqwDMGiQY/iKlX+YRHq/YVp8BI9DczsPULD3tAJKYybI1AzvoUhr4bCRvQklVPE2lpzq+AXAn
	W/+4uyv5sLjk83VTeLnC3sNwJivTT+kzQ3i19QJig0FkbOeB6hSRIXIwZDCWnp/h1jVoPMRewSf
	g+A==
X-Google-Smtp-Source: AGHT+IHAr6aODmLw9LyWuB4/jSClJSvuGESearMtKtbqwBW2uGG2UTYedIH5oJ/gYV7VLdRPQdt15Q==
X-Received: by 2002:a2e:9b4d:0:b0:30b:aaca:9b2e with SMTP id 38308e7fff4ca-30d7251d6famr10523981fa.0.1742462075060;
        Thu, 20 Mar 2025 02:14:35 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:34 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:17 +0300
Message-Id: <20250320091419.42095-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021437_473536_00FEA092 
X-CRM114-Status: GOOD (  10.19  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] ARM: at91: xload: Remove intermediate variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 94be353c9e..7a990f35c8 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -20,7 +20,6 @@ struct xload_instance {
 
 static void at91_fat_start_image(struct pbl_bio *bio, void *buf, u32 r4)
 {
-	void __noreturn (*bb)(void);
 	int ret;
 
 	ret = pbl_fat_load(bio, "barebox.bin", buf, SZ_2M);
@@ -29,11 +28,9 @@ static void at91_fat_start_image(struct pbl_bio *bio, void *buf, u32 r4)
 		return;
 	}
 
-	bb = buf;
-
 	sync_caches_for_execution();
 
-	sama5_boot_xload(bb, r4);
+	sama5_boot_xload(buf, r4);
 }
 
 static const struct xload_instance sama5d2_mci_instances[] = {
-- 
2.39.1



