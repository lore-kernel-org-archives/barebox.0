Delivery-date: Wed, 18 Jun 2025 08:38:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRJ-008WgE-0i
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 08:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRI-00038y-Bx
	for lore@pengutronix.de; Wed, 18 Jun 2025 08:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FplPJls3fo2QnkyxNNQ6cHmKqIsJ2vgKVpCympx1rjo=; b=B8iNpsy94o/FHLnxuz+inddTbx
	wDw4uiMX15gbTBCABLTAZov4DYSwzKhPFidW5ztIyXEvV/SjqgVtsrIrWtw+lHlcEROGhYT+ihQPO
	SvjWgOmQdGLvaRvs7HGj3pmGGZj16wCRzgksFc11aUIXluIL925S+GUQjuyS1G2c1a6nSvTdmwhox
	9mD5iFJSN23x0KS3YNaIkC4ptMtMQJeSfH0tehpN2O0ckBXRJKy9VI8U5c6TLYmJvFOkackz3pt5l
	eqRzzvy7bwPPUFTYcxxGzNYH4M3Z1NYYdgMqSENzjgIgn6ZhOaXn3EqguEnVy1+3TZu7UnQU6sRoi
	PkR6URhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmQk-00000009BvB-0YQn;
	Wed, 18 Jun 2025 06:37:54 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmPA-00000009BjF-3dCg
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 06:36:17 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-30f30200b51so71805851fa.3
        for <barebox@lists.infradead.org>; Tue, 17 Jun 2025 23:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750228575; x=1750833375; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FplPJls3fo2QnkyxNNQ6cHmKqIsJ2vgKVpCympx1rjo=;
        b=jU3MsdaCRrATHzPDpOXMM3ei9bSfxZ/dW7vpe0lBA75/LvxT34dgS/oY9MlW6fN3IU
         QFSJGV/Pm5Mb0K4YavHCRZU3u2rA+l33gFrriAIZ2BIbb19F2kD1F2kJofQVrf0a1IJm
         w5LXtpByQZy1BRDVM3LsBg6gijlZk6SYPGHHOI2D0710gvIPmSDLiw0Vo5A58Mu2xVdc
         H57btA6m5l0kOpCESoDZt397xQbFE5Bm9MtiOi2Qt6kjRb0ZGGl2UWHA2J/AI+6qrpOz
         gUn9TVP8TH+ZXI1h+dGYLb4CLyWlfw7V+SDwNUJtF1gwrb17z4atL5zEYyeAS5G1xrgC
         RPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750228575; x=1750833375;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FplPJls3fo2QnkyxNNQ6cHmKqIsJ2vgKVpCympx1rjo=;
        b=P+mVwgFvuUw85sMRqPR7YU3dznOh3I6PwCAtGfuY4N+ZaoFBjyfQeHH7tcQKFYKhnH
         k19wl08tKrbjT7UtHoQaIJiMnSHMYJeRshNJacrstYUiWJ+w5Tg2OBWBfxzelMpadWJO
         axuk0flPozBckkIKZHL8rFT2qQjC9zT0e9BgXT7RWsO0QGAM7QpJWxFFMwpTuwasMJxb
         IFlzS9t/PWEVWdnPhWX8Zv1vRiM9WDlryJQgFbtNUuI7hQPR1UdTzCAwaC7ERBEp7v5a
         FYLPwSVAmNIrcIXqGKCZOBABtFbwCydV46ZjU8J9G9EjUTp0OjNM8YLcOhwenBBY0IxR
         sGiA==
X-Gm-Message-State: AOJu0YwVigPWk4zjwp2pCTScc6lOCpYbSCiOJqMiGzDE36vKGAMoITwF
	DcK0BSoXEoBOQgQe0iaGhUiPDSpeiKhQhF7tImMfkuUtocPYtzmXKvc7AEUkoA==
X-Gm-Gg: ASbGncu+cbns+xl00Bx6d3b98GCaLdf0n4EkmvnaIj/PE4oQtnWJOHylOtpw5vy7lBb
	7gY7v5hc4HZfIK1Z7WvHAlji1xoc+KeBO8XwmD2fENgddgVBxmDLIWotMnQ99AAJMWos58O4zt1
	mSSSVIhz5YcbKNrNt3hjAnytXdATDVyv+kyPqP8WZMkl3yjHgC//DFQKbP3QBPlMiK6vCsnrfIF
	Rt8CUuGpJUzav8Ob3T0/14Gv1Ny1DwNeIYD5KN4kF88JEwIytwSsbTz55pw6sOqO4Zb3VmNwX4J
	f1kbj5GQkKB7C7cGGnr6nxwWqIB6ZyCW6pu/uNfsXGrWIYxqM7TuwZ3uDNW7WugXg5ozPH4pZJ6
	/FlTndPsGNw==
X-Google-Smtp-Source: AGHT+IFzxdo9CLdtpYhsa3oexxQkrT2AwY//99AHOaEZU55wV2y4xMua6zQUYmc8ghQmXfxWZeKNzw==
X-Received: by 2002:a05:651c:1987:b0:32a:5fe2:81bf with SMTP id 38308e7fff4ca-32b4a5b9774mr36059061fa.24.1750228574486;
        Tue, 17 Jun 2025 23:36:14 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3c7decb8sm19038121fa.49.2025.06.17.23.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 23:36:13 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 18 Jun 2025 09:35:50 +0300
Message-Id: <20250618063552.23777-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250618063552.23777-1-eagle.alexander923@gmail.com>
References: <20250618063552.23777-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233616_901776_0714DEB5 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [PATCH] ARM: at91: setup: improve address handling for DBGU and CHIPID detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch enhances type safety and replaces hardcoded addresses with
SoC-specific constants for DBGU and CHIPID detection.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/setup.c   | 6 +++---
 include/mach/at91/hardware.h | 2 --
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index e8d45c30dd..e726495726 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -186,7 +186,7 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 	}
 }
 
-static void __init chipid_soc_detect(u32 chipid_base)
+static void __init chipid_soc_detect(void __iomem *chipid_base)
 {
 	u32 cidr, socid;
 
@@ -345,9 +345,9 @@ static int at91_detect(void)
 	if (!at91_soc_is_detected())
 		dbgu_soc_detect(AT91_BASE_DBGU1);
 	if (!at91_soc_is_detected())
-		dbgu_soc_detect(AT91_BASE_DBGU2);
+		dbgu_soc_detect(SAMA5D4_BASE_DBGU);
 	if (!at91_soc_is_detected())
-		chipid_soc_detect(0xfc069000);
+		chipid_soc_detect(SAMA5D2_BASE_CHIPID);
 
 	if (!at91_soc_is_detected())
 		panic("AT91: Impossible to detect the SOC type");
diff --git a/include/mach/at91/hardware.h b/include/mach/at91/hardware.h
index 5d2fd872ab..104ad11648 100644
--- a/include/mach/at91/hardware.h
+++ b/include/mach/at91/hardware.h
@@ -12,8 +12,6 @@
 #define AT91_BASE_DBGU0	0xfffff200
 /* 9263, 9g45 */
 #define AT91_BASE_DBGU1	0xffffee00
-/* sama5d4 */
-#define AT91_BASE_DBGU2	0xfc069000
 
 #include <mach/at91/at91rm9200.h>
 #include <mach/at91/at91sam9260.h>
-- 
2.39.1



