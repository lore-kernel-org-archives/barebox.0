Delivery-date: Mon, 25 Aug 2025 14:55:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqWjs-004Me6-0L
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 14:55:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqWjq-0007ov-Vj
	for lore@pengutronix.de; Mon, 25 Aug 2025 14:55:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D9c5ZOwItIAsUsknKApk6fbHnXdM3RqNWfqvd9b2rzk=; b=JG9YQodhRlOpulYp85nm9lxW5I
	EedzrFtDyzs0KqfRBf0EtW8DTv7XFrcJEFLCdgOZhGig5oMR8DK3VC+YIaa3p7eP86HgrQJWUrJdi
	UvjIvVRGOjxd+yMo5oVuFspqCPNoYTGcH87DGNxmx58LOr6brrJCddfTmDa5iOo0gu5LumzOeZeun
	SvecJJQnhBWD2/V0vqPWGY+nNSRK6Cl6qUe6NSJQlcwWoVMJVxNgOjOYAHfOpWYzp5W4Cenp6KYEf
	8kTJmmDOw5e06Uukmoc98Ok7+3AMZ+LuIy5ML9zDwh2xCt8utZQ5qqZNmdpmf/x4t93Eplw2ZZ4Qd
	U1yq+iMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqWjB-00000007zuf-0qsw;
	Mon, 25 Aug 2025 12:55:13 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqW3S-00000007t9n-1yNh
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 12:12:07 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-333f7ebc44dso42229491fa.0
        for <barebox@lists.infradead.org>; Mon, 25 Aug 2025 05:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756123924; x=1756728724; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D9c5ZOwItIAsUsknKApk6fbHnXdM3RqNWfqvd9b2rzk=;
        b=RRQ+qEzAH9L9T8t3zwfkXpGfvShM7lF9YG7rBsm+gif3uoJ8OWxaIhMFnsRLQ6/pi6
         2JXEy5Kwtj6H/GLqiO9S5eBuEivmE9rl5LrdciYOeTPUFM+/24bsQnW7xf245IQUvZt4
         TvsVZrxXCb50rR4X4f9CPOxxVyP37T8RsXD7nrzlh2xxd2C5Mw347mqNvuq5HDvmMpMl
         nQLcj6ZsI4l5VUCpGEIJ2L4fOD6RVNm+BizJ3Ie6aXshMInEpJVoR3ir20Ngxrb0ADde
         XMmA0zRiq+U4ws0ItiddFhU9lFreQ6jtHN7CPSLXcqeBQeJJEJiTZd/gUIqwu3T/aPHb
         RcPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756123924; x=1756728724;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D9c5ZOwItIAsUsknKApk6fbHnXdM3RqNWfqvd9b2rzk=;
        b=I2OMWRoBdSrxFrfeF/rYJANChjjXcvzogx9cMf+qvLUvh3MNmoO8RS2AEmyIXJo+a2
         94JP9fHMJbklbcipxB1lkminoV/d9dTrbItyNpxAZSG2jCP4nnP08sP/8uMnTXYsOZM9
         Xt4hBWN6xvuWRmAHPdPB7IU1EUEAtYgm1hpiPYTmaEvKdYbJZzWqWSCBOjv5oQ9fcVqW
         73c+Ew40sy+4sQYtZXJpC6cJAFHP+ShhcpGn76mchZ19/2GKYwpEVj1pGDTRgqsKwqER
         zEMSoGPZE8wpD8eLntZQx5oRTxi2L7tQVHFKf23Gg2Qh3xEcAE5HSfalbkELFqKTGjGB
         Oneg==
X-Gm-Message-State: AOJu0YzKMBh1orB1oq2jzJ1nuSgUWlcSgkqIp8+8l4yl8ktKVxz3dVj6
	lx4Ye/4QdB4WRXObwz2fHItIshng/EzCBUrn0H7XftZOmphKkAMX0J1b6gxcKQ==
X-Gm-Gg: ASbGncsLlaRFPRjfFlvZX/UrFEP866+DUBDcfineTZ4tbiD0TB9fOnOKrJ6fkg808XG
	TnoO4Yq5Px7pZlZyIUVCFW6Q2p6DpORVX8cvUbf0xnR2I+8Zz/RSDim3jQ2R1PxeGF+ibosjzo6
	K+Owc6FF7iGcD9dxCsjnTXbSvcdp2Cc09tuTkgjdnDc7tY54tsEqB3F0snHQbgKBK05nH7bAJCj
	4cL0oI0BLnl97dZGPZlbTj2TSz8DcvFQodguuiQ+EZzvRMwhy40rVe2nBTk9asf8hbLDXwkHSGm
	HYLvBCgGRbnKRyieyBxskFPs7YUCnccn9mcO53lC6dDMLoHdQg7gCULrHVIE56w9xOMKGkjirlo
	30cp9oPNXrHqjq02uTQFdxczCRcQim7ajjA3aDpt6P6PTRhs=
X-Google-Smtp-Source: AGHT+IHkc3bVDiOa5A37EjeGtA3d0/ql36LwtX7Kiy0x64StimT0U32CZAs++nJh6g4z0zPq27NynA==
X-Received: by 2002:a05:651c:f06:b0:30d:c4c3:eafa with SMTP id 38308e7fff4ca-33650ca373bmr31919661fa.7.1756123923635;
        Mon, 25 Aug 2025 05:12:03 -0700 (PDT)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5f450esm15727011fa.65.2025.08.25.05.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 05:12:02 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 25 Aug 2025 15:11:52 +0300
Message-Id: <20250825121152.197198-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_051206_510245_9C5EEA78 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: bootm-fip: remove redundant variable declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove shadowed variable declaration inside the loop

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/cpu/bootm-fip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
index bd176f0645..a50b3f4431 100644
--- a/arch/arm/cpu/bootm-fip.c
+++ b/arch/arm/cpu/bootm-fip.c
@@ -91,7 +91,6 @@ static int parse_dtb_registry(struct fip_image_desc *fw_config_desc,
 		for_each_child_of_node_safe(fconf, tmp, image) {
 			u64 load_addr;
 			u32 id;
-			int ret;
 
 			ret = of_property_read_u32(image, "id", &id);
 			if (ret)
-- 
2.38.2



