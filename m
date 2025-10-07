Delivery-date: Tue, 07 Oct 2025 03:00:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4S-0054cr-1L
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4Q-00044S-UU
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+eQKvgqYXMC2/6G2+TT5rHYEwUvp1AhmGfQ992wsg6o=; b=Ua9Chv1GgbCyHaCF20ddEifpwq
	OkyV3OywTt7y6jtBYrRX+t6N8MyC8pljzXxU9ZLHNkwmP0kqCuRymwhdRh8ErNlrBCrmaNbMoHqrA
	Um4da+ZLWyhtvi/RxRMqhWipt0M+LhTWJvWoeu4yQtc66RKL6BzyAHBZa3La6GaVaIEcdwdo64fpe
	S7SChdanvQaLO0ttae1tmjotTubmQw8RswUfl6mcD3PAHBlxyD7Hz4eQ0nUsxGAv3ipHtKf6/Gf0T
	vp7LRC58/dbXKotjxN6ktixky8g20tKj48jc/u3OYskQQBe7LagtbmT6Zez7kupntFmQqw11AeoV4
	e5V+AoXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3n-0000000153U-3dIy;
	Tue, 07 Oct 2025 01:00:11 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3l-0000000150E-2AsF
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:10 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-8738c6fdbe8so64409766d6.1
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798808; x=1760403608; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+eQKvgqYXMC2/6G2+TT5rHYEwUvp1AhmGfQ992wsg6o=;
        b=Sr5t0nnEszWV7hqhXs0m/UwD/e51Li7NEiZa2Zcdx3dao/CsOjwV+IFdqMY7LrZ3H/
         6Zw8nXJW/SIqbDJQysf04cVGtOhiiT61ZKqLf/jciwvqL3HxwP3F+S4dn1vwmih1ws/7
         +DM4c1kLgtmhz5u4oLZvAFM5kMA/ni07ODNhZKkLPwQZ4tPaBanqgz21GK40fkmFw8kZ
         smEuU1bV6vzdtdMMxtKcplwLucPbwe+bKTlkhA8z/pKuHt0rbPRUvrz4rgLGTdpcUYKj
         H/4Zk/FNIFcQqbG/a1cipRbIbIYTqJgNjqV8QfYzsTcK1dHD1GQliu4XZUbHnqDwQjq9
         05gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798808; x=1760403608;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+eQKvgqYXMC2/6G2+TT5rHYEwUvp1AhmGfQ992wsg6o=;
        b=K6eMWsVEFEG1EQ0eDfxE3IGEXghvD208gx5f7oUti+T8wy1IqvDGd1ALxUCugx/Oxs
         63xWKkddWkHE4Cgwkvn07X0vwmE7qxvQelfuGbwBbSD0XbfB4PUJ1cmxWr9HmCW/jubM
         sZMjWFZfaR3HAVNOLPlLlJwM1WezmlNf50X6bzxneV3ML6sm2PV0WK8RFXtrp7uVqoNt
         9+FbvZ/y5/IfUH0wR6MKlN8Avt6T+WzPMDWTblM4gUXHLNRWF1fHSmNgowh/UyoLl8RD
         pVKMboeRKNTnR3kiwT/dQ3GSIXIb9yEGPANGUlY2d0k4/wi7v8hYW9FhlgrI6BchTxwc
         V9fw==
X-Gm-Message-State: AOJu0YwWN8rQRljFQEOM7wmdNSgFYyrV4r23WvDOg4VGcQYcLtZdC3aN
	WGAjSKdD2ndKYNfVIYAMWP2pTeM66VRlYfCPI6YZyQpxDBSJfBHs1dBx
X-Gm-Gg: ASbGncsBZv3YExzFCbcHhXUt4p4JA/WhT1pcMrn1JVzdXOyXWPnxdXCysiYYYv7sJsN
	Mp5YveYQy5JnGVMyEPuT9CllCuVyxYkw336+yrrGj+JW3wDhaLfyOroQCb5SiRJesq1PF7mB2xS
	Jdaqtn7KI9WcKMT18x/d4nQLAa1BamfebmLbP8AVDWQmnqU/Dy3XjJ1ofJiqp3In7jLtsuPYDOT
	0Rsrl/Xa69mlIY6/s0nWwFATxfsjEIhkm725ZHgciemdEjaODSqoJ6BxWDQsGXZnjXBx8CI3v7m
	9iuuan5KMkmU/UUt5hkhsF86qj2Q7ilqImP0ih7D3qcoIRgMZRQ3OVHfqCUzmovdxy2vYkPz9gX
	5rMbIIdklKojMqPSSan72y2U3OTC3u8ngYIOYietFqMfujrzS3aTPZrEyVfRlIE1hiC1JhpKTEb
	4=
X-Google-Smtp-Source: AGHT+IH0dUDsogS3tpct1cnSKfhtBepbU6PfEpW92Xp2rxv76MdgPHEL5DbFMPZVnLHnD/DaquTbGA==
X-Received: by 2002:a05:6214:250d:b0:70f:abbb:609a with SMTP id 6a1803df08f44-87a052874a9mr25494246d6.19.1759798808532;
        Mon, 06 Oct 2025 18:00:08 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.18.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:00:08 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 20:59:54 -0400
Message-Id: <20251007005955.1427990-9-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007005955.1427990-1-chalianis1@gmail.com>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180009_552379_477F4938 
X-CRM114-Status: GOOD (  10.80  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 09/10] efi: payload: make selectable without COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Now that the barebox EFI payload has support for a non-x86 boot method,
let's drop the COMPILE_TEST dependency.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 4fb866210a69..3b4a16e1e80c 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -4,7 +4,7 @@ config HAVE_EFI_PAYLOAD
 	bool
 
 config EFI_PAYLOAD
-	bool "Build as EFI payload" if COMPILE_TEST
+	bool "Build as EFI payload"
 	depends on HAVE_EFI_PAYLOAD
 	select PBL_FULLY_PIC if ARM64
 	select EFI
-- 
2.34.1



