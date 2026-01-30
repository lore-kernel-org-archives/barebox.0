Delivery-date: Fri, 30 Jan 2026 06:18:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtU-006s2l-2Z
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtR-0002Sg-91
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gBesHqYemKoSXFi/vr+jiaHa4ITKCDmHsF0zGN7HsEk=; b=EBndmb3qWwIeCgTCy2PlHZjP6i
	QQBZdKzyTRHzhixDQPfALREri2MtxKnWDi4yRo/7mnRDVnK9DPBZ+v9+bOkjb06vomhQE292SoD5m
	16erVbyRKVb33Td/KIHmb3+FpRNjQ2fBPyrfvWtCv6+oQ7cdbnYGCiGDE94VJtNnCn2Ew9h2atF+4
	xN/VriTosnhoxvvsSfSh34PlMOufDqjcmskw/yD+2p0V2Gj+o5IHPZ51pH97T7lE7MBERf0+keLMz
	8X2l5+IL/ToZrSQ6p5+kf2RrI63vuFdMrHZRIB0fDcgyHia1/EsV9cso+tGqO/T5nXoDRWae0jBv0
	XFSE/EBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgso-000000012Eq-3BFu;
	Fri, 30 Jan 2026 05:17:26 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsh-00000001255-2hRc
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:21 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4359108fd24so1004692f8f.2
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750238; x=1770355038; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBesHqYemKoSXFi/vr+jiaHa4ITKCDmHsF0zGN7HsEk=;
        b=ZmhbpWdFjt+ErGgqJXtTW2RW/3LYkxMwdkru+2oJaQs+AJfNhHcVfLCAf89cRWjAHw
         5B9KOFCxpcpwe0emnF+wiq4Gt5HCZlSArmJMvS4FZQPJVaebNCzX3Tck6mY3ZjDmVQEy
         fMOvupWg63xenmdr4ovLJ47cXnVKWJwmR1nuU25jjpz56rL8UUh04zGCOj7RQJteWdpN
         peWRxyxmq2AMpjycjzIcTpYLqwts4IDOzIjObHmCUbaplESvQlEuV+P1MnK09ksPhgs8
         G0xHK6Ybgs1rFtAyRNbzmmha4h92BuQ+4X2s548mOyvXoa3Xtus+5YaHnV9/lgeQqe2W
         yfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750238; x=1770355038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gBesHqYemKoSXFi/vr+jiaHa4ITKCDmHsF0zGN7HsEk=;
        b=oxGqJu7RYRap/ruM2+RFh+4uLN//Cs7Hu6Dge2bYoyT8lNg8SRawP6fKEE1gXqr5jU
         wquUM1IN8P/i7Y62pKO6OhKnduMnkcwGz50+3yCIP7iDK4SaJBwJRQksXLiw/uSzRTJn
         uhR8yc38zCiKIXeyp1qR9Ne5WT6bMrh8O6T7b2LAg08nPm1we0iBmkbnCo8ViU7Q1/Yy
         1bG2o50z5eEaiif7CNJCTMvkEqhJymV+WwcBRqiinRkdZlg9jo69uXLZ97npEdEakq74
         Y+JMCAakOYRSd9zKVIv4y1FhpqMyHUX1CxrvNX/kkDs5b6O8JLplAcqLWUagxCWGCE99
         XouQ==
X-Forwarded-Encrypted: i=1; AJvYcCUz4r/nB4Jg+9mxMBZtUn+5bUbCrnuyVvxU8hSd9WhEfWpTfTL2tktoDsLYL0B/avk2toxK5ZDb@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4vHWj7vYuh9z+cGqvq37r7A6ncs2yf3kD9YK9pBqN8VqIUglK
	QRjchW5N658wwWXInjTejPsFtzd/CArKK8eyu2zAICOuZjbYLp2Khck1
X-Gm-Gg: AZuq6aJcjR1I5LIFuSSJnlf7UDvB2h2CgoB12rdeWam0TVHxjoSHRSqSx0bNCNHTlnb
	HvROoCvvZoDVB1GOh2vex/OOBAmZspKuup8X7ROVZSphpLG1l5e0Mz6lkPv7/rdgycclKSPlfD8
	oBls3361aZ8Ask2q+VFHnVCt21Uksv7LFpbXPcHZuVV85fOp6/TVXusvDD/F8F3ORw2Q6ZatqMV
	3t1Sidh1MmSNbwRcXHT1VH21W+QedwrmFNBoyitMTyRh2vwffamTmYieVnYn2vCMrbCLJGQwZx8
	ymvr/MPoHFYqcyFEjbvnScDBh6ymm5Wefzi76+dA4Mj1LWxC1WXqhZLjWcB51gW5vFim5UDM/zL
	fx2R7zygyiBsARVcUsJFTILrx7CmWoV2ozlQEP5NpHUPVanRKd5ouY8DP/CaTMseKX3wd7zYLRz
	KvyH0ZXCU2247jWqqfufvK2BOeaa4OxxxgiAh75M2Vl6diL/Q33MKdR2CVIs6+X1DL2BPCk8jqE
	jNqydq38GtZQDrGly18uhq/z1PauYksXXR0JuUSZOymMZaZf5jlkdoTH3JGwhgRrt23WubYHpAJ
	rmRCRzsXSImkGhkklghprePWGod84M+lwJJhGU0hJA==
X-Received: by 2002:a05:6000:4304:b0:432:aa61:a06e with SMTP id ffacd0b85a97d-435f3aafcf6mr2514140f8f.32.1769750237933;
        Thu, 29 Jan 2026 21:17:17 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:17 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-10-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=727;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=YEiPsfv2L0nLCLe/bO4FAaeuAdS+a/2qHoiaSlax/pg=;
 b=DWQppQUGvurPc47BHsXZpdRlNShmRCfWW+pkKXU2FTy7RELyOBeLZT3LBBWfs6sMc4xpCaAKQ
 XUDXistS18AD6XFjgwgBbnuukO7mDDks6+VFJoIbo2+frgOg6dCf4Xp
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211719_718492_7F70B624 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 10/14] rockchip-rng: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add compatible string for RK3562 RNG support.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/hw_random/rockchip-rng.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/hw_random/rockchip-rng.c b/drivers/hw_random/rockchip-rng.c
index 8856a3883e..f1f4c4cb12 100644
--- a/drivers/hw_random/rockchip-rng.c
+++ b/drivers/hw_random/rockchip-rng.c
@@ -193,6 +193,10 @@ static const struct of_device_id rk_rng_dt_match[] = {
 		.compatible = "rockchip,cryptov1-rng",
 		.data = &rk_rng_v1_soc_data,
 	},
+	{
+		.compatible = "rockchip,rk3562-rng",
+		.data = &rk_rng_v2_soc_data,
+	},
 	{
 		.compatible = "rockchip,rk3568-rng",
 		.data = &rk_rng_v2_soc_data,

-- 
2.43.0



