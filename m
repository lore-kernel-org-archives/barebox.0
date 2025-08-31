Delivery-date: Sun, 31 Aug 2025 05:56:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBG-006Q3x-1A
	for lore@lore.pengutronix.de;
	Sun, 31 Aug 2025 05:56:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1usZBE-0007V5-V5
	for lore@pengutronix.de; Sun, 31 Aug 2025 05:56:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VaWKldo4qCTwEmgI4/KiWYrAR8aeSUBpYzyc8Pds3zU=; b=ygiQfVkBOXv920rPt63uT0OkUQ
	pkWy/+kKrdOULYiaxK4j1VNpT7rUxaaY5SwH0r3MFvC/6nsfi/XPktGb3Wk6T2yYEVs4R6qE45T1p
	znq3t6L8+bnngibJs2G5nN0SBjN66eMCGIm0DbpeBqsQF0xEtAllKCON+4z90c35mDGpN2AGaO1Ff
	SJUoV9WtYKa3PDhJM+hmEm5aBh1sGlr9Z7RIRxPRafisTCadR89xgT1e5YUocHgLM7bdHGw0mJ/eM
	FbO8FRoO82uYvbC8bF3Zb17l2AJ2kf6qcybh09d8eh1mY8vM0btGhz1bWWOzV3lzqik0nPnVOswNQ
	a5sXvIeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAW-000000092EJ-1vIG;
	Sun, 31 Aug 2025 03:55:52 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usZAT-000000092CF-45ew
	for barebox@lists.infradead.org;
	Sun, 31 Aug 2025 03:55:51 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-7f8ea864d63so331904285a.0
        for <barebox@lists.infradead.org>; Sat, 30 Aug 2025 20:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756612549; x=1757217349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VaWKldo4qCTwEmgI4/KiWYrAR8aeSUBpYzyc8Pds3zU=;
        b=EkqIeMVgKN5Bu8Ev3TPmupaGOHor55drf2uFHVhYyMTkSam7ozoOB5bovbgWuOhZfN
         m40c+/bb4q/Y3ZM4m4A4hv7FXas+rMadVeDnlzGxDZHebsWj2DP+GpM91zjAUilGtNDo
         a2QeDs8o+wAwL8vnQ6zdoQAMBK/SvFASZH840tu2x5RzF7yn/bWbVj3Dq10eqO9oSEbF
         g1daKVLa5LcKbYci56FP1Nj9LTZgKNBiEzrRv+nyMad1ddoXEYmkMqAL3CsSjQ5pQiL1
         pPcAEEvqe1Ye2AVEi82KPtDdl1Bp9rG3wKUODOd4DZJdwMltQIxZkCEgl4Mrz9jJhz6k
         KksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756612549; x=1757217349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VaWKldo4qCTwEmgI4/KiWYrAR8aeSUBpYzyc8Pds3zU=;
        b=hTGMaPa1T1KJcDKGVHFE5XMdDEJI8PJ9JirN4Y1Rd9zopBLRi8VNOg6HTwsK7LUFyz
         sPTledrqXE8qrTcsQZMUSFsNJx8u/rG/8aqeUTIHeRYFGdAcarVdC7Oodcs0AYMV8Wvv
         kba/dVw8YRxQaDa8ob93XgAB3rTmQGmrS2tL1I8gE4JrysFgm8MvdSXhSK+ueOBLuz8i
         ZV4Yy9CNIOy33h+BwbkF12hxDGyaihslmNikPddRVaoH3MDltKNx5Almkcy3UEfH6JhE
         cekvmDo1xmUm49OY6nAxb8VHO/+pnTTTywFAEhsTVXUCB2AkG5NSrgzYUHpiTAIPhIQ9
         JeJw==
X-Gm-Message-State: AOJu0Yza8Ai81IBtpoVAQsGd1npFvk2zLIwHRvROn963VuRwHYZQY5Lu
	UGFblKWMHuuCE1PPket/9S9+qUAXF9700zrKcUGuQdArSPZF2uBUMihD
X-Gm-Gg: ASbGncuUk+1IFxk+OnNFY/EPpHRTHKAYdvGftzsIixVkaZFQoGj3kOOWbmlyKv+HIQv
	eSZRn2c6QJRvqpomcaTUaEYLtBs5tjG/8g/frFzsi4O8supd9HN7qg6TDTcLZ8bdbPPLc39bF4m
	e5M5Uv/c6kpVTQcj9MRHy8PBQj2KDh9dpNQm5GjSz2gsGLLrDoT8SP9YaX+dEuDDsGXz3Q/pECN
	gJ6KIb0Nj27lqQPCwRqprxRt2/HOcsRiFD24Czgqc4ULq98XdcQS+nlJ6RwgkWyR+dsf6penw3n
	d3ofaaVEBA0w3rymCBi6f02khdH3UqkrACaWuC3ztPBIMXbJqg7TojuJDdNjRlsAN7oOMo9yw8p
	BcI0UU8CW9QPYgSMnqY/0cEmRcyAI2h/RsQ/UjVI7DL3d/bDcO1jc2GGdR8XdrrGbONgGETxslt
	QCIzAkoXK26cu5BXyhhhKGAr0puA==
X-Google-Smtp-Source: AGHT+IF2ZBlMCfbNYgGmD/lcrUCNowqdoE/tdeqba4XXTpERTnHsuWZF3a2tRF2YZLopvdQeV4JxQQ==
X-Received: by 2002:a05:620a:19a8:b0:7f3:1b0e:32c6 with SMTP id af79cd13be357-7ff2b69e132mr339574885a.44.1756612548813;
        Sat, 30 Aug 2025 20:55:48 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:10aa:d623:fe15:9cbf])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc0f097401sm433366985a.30.2025.08.30.20.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 20:55:48 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sat, 30 Aug 2025 23:55:37 -0400
Message-Id: <20250831035542.1623695-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250831035542.1623695-1-chalianis1@gmail.com>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_205550_013783_2AB18729 
X-CRM114-Status: UNSURE (   8.23  )
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
Subject: [PATCH 2/7] efi: video: gop: remove dependency to x86.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

efi GOP work also in arm64, the efi has drivers that implements
LCDs and expose them as GOP protocol.
Tested on QEMU ramfb and RPi3b 64 bit.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/video/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 9a0e54bddbaf..b2eccd5db7fe 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -32,7 +32,6 @@ config DRIVER_VIDEO_ATMEL_HLCD
 config DRIVER_VIDEO_EFI_GOP
 	bool "EFI Graphics Output Protocol (GOP)"
 	depends on EFI_PAYLOAD
-	depends on X86
 
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
-- 
2.34.1



