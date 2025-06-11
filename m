Delivery-date: Wed, 11 Jun 2025 22:42:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPSH5-006H6R-1P
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 22:42:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPSH4-00009X-To
	for lore@pengutronix.de; Wed, 11 Jun 2025 22:42:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QGXh7fxGs0zuUiSiKzD2TPgZ0AzzVMbVhDRhCOOoxaQ=; b=x4BIkeUFDWFG0buMO46gf2OWDc
	4nQLHuRBV+TKs1pQcuPb5PCJK/iLi5l7w0wZC/qYfc1dTuJKmxPV+x7SfY78YB9d/j3lLFqFh0dV4
	k/ieFisaUXkhsOjZs5aNnBcnZ7Dnq3HHW3/RvpWgz7Mx3gNi5ZR2Xi8gzXjfPUF06PnUyFxPfyWI0
	5+C1xlozAkkvwaYvwmawa6dpaUJNxw5OYid2HXb1s4bSILywHfp+A+zK6L9tutza6x0ysqSnLZIEu
	o/AyfSJgPMpWn+0JRxUbsb1vphFXk+G3x7f53NLBsRYVhFSzgqIJwngXvKWY7xwIRbXiaIPdWpIMw
	D9EGzLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPSGa-0000000BBoK-2I62;
	Wed, 11 Jun 2025 20:41:48 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPPh7-0000000AlOS-0gT1
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 17:57:02 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so610655e9.1
        for <barebox@lists.infradead.org>; Wed, 11 Jun 2025 10:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749664619; x=1750269419; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QGXh7fxGs0zuUiSiKzD2TPgZ0AzzVMbVhDRhCOOoxaQ=;
        b=es9KH1WljLckcQl/6UmBRYIyHrNQu+dTLZq95F7tGKQith5VzCBE0fLDXmCTaGuVgZ
         skDqwXYr722XrltEUfeU+teYtU5B/Hs9gn2cftCkQ04SuvdMRqe39o6mZuwRgfWKYz+i
         /GWV1Z2UZWQS/IWkNiw1BSsXjswrSlASmll8J0IvfL5u0R+PnaEaxfnMMsHBEGYShGoy
         NM/mHEE5iem6cYGNH7eNxK4TuiNb63vGf3KeYT25BrwszQzxtc78CpL8OduKZZQ0wcfQ
         H4znqvRkNTkcfKP6X88LREsRbyFsw3gron7J9LsBwdLCMvExcqQREwmOYGsI849H6sHH
         xSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749664619; x=1750269419;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QGXh7fxGs0zuUiSiKzD2TPgZ0AzzVMbVhDRhCOOoxaQ=;
        b=ty8yvNAag3PvKGhaG07aU0MqIMGFVRgLokEw8QiX6fT5T7S9KV8l22ghAKVIivJ4yS
         CUMZyNS4ODkqPBVimcL/Jv/ZddHBntzYDj7gTplxjz4Wz0bSIuLa09+cXodMnGQ33Xud
         4SIKUPRHwGWH5YlBgYW7WyGdYptgxO+Q2s+yk6i46masROAm4lFMslBqk6+iZk4P4vDn
         da//AwMco9pOWA1AVyVA3Qv/9DeZkP7J2RXR32wTgKdZyjvzoje/Vls8BRiu35SE5tVj
         vdJlChNjxgGd02ORLJWBXnvoTq4VtZhLKG+jR/Qdcf4vf86Q9zzdtSVb6sTcCRnqOseP
         P+Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUQn25NBbj12+fbt/xmqukDgiveiRfYBaelrj5ht0ucnzoi0ZGo02RhcH0fN9d5QlWC9Jz6VSP+@lists.infradead.org
X-Gm-Message-State: AOJu0Yz489oNL5XftKS/Q4v+Z8YL479ROhgNT82DF/4KfXB+rLD3mvPC
	7TbreC3SNAW2+5y2YZ/1jiMwNiVurOUo3LfEchEXKgKimF4BkLCfd9S1
X-Gm-Gg: ASbGnctx2Dqqi0alGOBO3dT83Zefh/TePvYrsvH12tJ55Q0vC0muWPvEq/xWnRK7gX+
	NwR7SCUQD+GAbMmde+g1EpmrgnW+zMPZSj+tON7IZp5DaxAo7rrXDUlwxxhgQym2RQC6vfUNNeO
	ki3/S5rLADITbfc7VQrVlcw2Oe+/pYUeRuiZ1VkofR1ipANkPq1dy9JTRfqSiUNN3eZLYf9AHKd
	GvPbAQ9GpnVK+SQuA2LeNEsaN+MBhbPH0Utc0SCob/yaGqGN76Byy/TWtruuBo+WsjuAizHyw5N
	Xx1MapYcQtyXwrAaFsWYov45pzKjDml0zrRBhtS0IoBCaM8lUOPMA9Azj0+4Vk2k5/zzSedOK+M
	A2FMMTEDhO4GdpCAqULjl37Jmrv+IkAT52YPkhV8TcKY4czkM5Cy63NZRkZoywjAClgKhtZOW8F
	t86HxuNvRXWAg9f1s=
X-Google-Smtp-Source: AGHT+IEg7oJ6OuJLanuHWho7fy7GU8+DU9/bUdyhrHj2buRZ417vezQRuy5ajcvXsTjNbKZ0bNjyIw==
X-Received: by 2002:a05:600c:1c81:b0:43d:aed:f7d0 with SMTP id 5b1f17b1804b1-453248e2bc2mr32403955e9.28.1749664618747;
        Wed, 11 Jun 2025 10:56:58 -0700 (PDT)
Received: from thinkpad-p52.telekom.ip (2a02-8388-e103-2700-ebc0-27a3-cde8-9846.cable.dynamic.v6.surfer.at. [2a02:8388:e103:2700:ebc0:27a3:cde8:9846])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53229d9adsm15793213f8f.9.2025.06.11.10.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 10:56:58 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
To: s.hauer@pengutronix.de
Cc: andrey.lalaev@gmail.com,
	barebox@lists.infradead.org
Date: Wed, 11 Jun 2025 19:56:45 +0200
Message-ID: <20250611175645.144025-1-andrey.lalaev@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_105701_203907_E054CD45 
X-CRM114-Status: UNSURE (   9.27  )
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
Subject: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

According to doc [1], new implementations should send FAIL if the
variable specified in the getvar command does not exist.

[1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 common/fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 56bc4e82c4..3df3c227a3 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -372,7 +372,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 		goto out;
 
 skip_partitions:
-	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
+	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "");
 out:
 	fastboot_free_variables(&partition_list);
 }
-- 
2.49.0



