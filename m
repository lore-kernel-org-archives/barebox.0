Delivery-date: Wed, 03 Dec 2025 18:14:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQs-007aZr-2u
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 18:14:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQs-00013Q-CA
	for lore@pengutronix.de; Wed, 03 Dec 2025 18:14:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SSxUftcKo61F5FqP/Qur1Tlio3CeVJjMGptA9IfPsIo=; b=GqieElVr/R9/Mg
	ylyf6LD+WH8/XctUVY7mpQBxaBCoakuQfdhicUQivvCermK1C79GUEtpJvsJ/+MEt3aMwDkkIirT1
	dffVZri7CR4VmBWV84Cb9LRhRKTD6ErVq1xhEXyCNSpBie7tLR8dRLw/wlNCPecmTAq68+94ETxxh
	/OSxcTt5dfDhCkBTA/ZUZcsv4Fmq/RyAZFHkSUfuVXnDnbZih1Lurmigy9mlFGyxr6sBKGh+CSXiE
	y+wDixEY1YOefVbtUO9L+rjt9UioMn+MQi+8KfQDMEFQzA5JPXh8gprTex9SxuFlSS5iPsbY9oRI1
	oxLUIAOPkRodQNTlajXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQN-00000006qaW-12s7;
	Wed, 03 Dec 2025 17:13:55 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQK-00000006qYo-3a82
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 17:13:54 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso65771805e9.3
        for <barebox@lists.infradead.org>; Wed, 03 Dec 2025 09:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764782031; x=1765386831; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SSxUftcKo61F5FqP/Qur1Tlio3CeVJjMGptA9IfPsIo=;
        b=DEvIiGKOEYlULDJ1aR1ZyI7dHQkMzeib7Xz5DiRCKfLd4Bwa0Xf4l9NFmHaaUCKp6y
         JTRuqoZvH+9W7A8ZJnqfVQHPnEP9UL6aXp4NZm03Xk4AoW9Bw/9ycsnKcYBf0GHrV7DJ
         O9lRFCDaHr++QTZQbaIPowYrcM3YLNdiitwA34GQtd2LNszS4B8Rpf0lCbuziqaoK/9Z
         WpxIVSK7vrIXbj2CfEh6JxhVqW0Q1fzTL9I3MCeaWCmfL+cH7d810+fsMmL4XNZXppaz
         eoi2iGtn0t0g5qhGhyNTYjTM2qCI+QNq5BU6YYrzeRoesNJk69evA17r7cGzvT6nxHW4
         Qcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764782031; x=1765386831;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SSxUftcKo61F5FqP/Qur1Tlio3CeVJjMGptA9IfPsIo=;
        b=AZNOgZRJrFa2sgdBEBKU+wgRkmO/lTrQRmBoLQxbDsFNgFC4zVUKMHUNRSZsPEDmlj
         EejV+BTibF5g1hpL0ANBtok+B6NW5MHbsVOhVv67+suv/pjef5t26kAo8lpE9Vy7PdYA
         ad9BxaUZ4u4U72G79zpY+wmJmEdn3nVmUhyiqIv86Dp/M9yEtXqIslvCQn3lU9rJoKbj
         Pgptd/IHI57wJQ41sYj6GivzDSpIl91knJKV1773S4txxMUFZKhnXaepBzKMYWYxG26a
         4V44VTMAh0OsoDNSBE5C9vUTSpHzwAVeSDDO7qUMO/ju7OiiKgQEUjXIxhFJ2ltjxa4u
         Vhxg==
X-Forwarded-Encrypted: i=1; AJvYcCWJ6OVerejmdaAyM1/6/bFbtRRERCkey4cZF1vW9nx1zi1xW1wVzDpfxUeEykRhcBkrCDzvwrA1@lists.infradead.org
X-Gm-Message-State: AOJu0YyzDUYMzrd0PJVsSUX18ErxEZhxgPn2O3uiRkvEq/H65OTy/x+m
	FASwf1oEVxC9fHwxyscIhpiR3ACZd8BS6RY4goarbxVzmtupfLIHmsO/
X-Gm-Gg: ASbGncuDSihLCN2sLcMqo2Oi38XCPLyyM8FRcE+xBe5SUHDfTwEW8LP/xEOVpVRN899
	9DFq4bVfB62sok2PkCG38rlp/qxhIm79QlG7kNyZfSQflPvsLRV+HP/mxHs+uc7R1u5c6lZLNL9
	gc308FcjLrv1UrFFaE+Yy/IHI9Firk2ydN9d+7HDJ4iXhS+gFzg3fq42dQJcBPeVV1yN58oRQsd
	+f7e/QMneH/K1UHQjcIomXEOymb+yhAJA9trV9NQt7W+3u8c/WUjbI0KpvXA874sMaw6cyHcuzu
	DZrf1P7qL5B4U4s9JshfC2Hd4MuW8qZRlAAkTJu46xjvplB64E+za6Y3t2lCf9ViUF/EIfAy0Vn
	V0iHvfLNLTzOWp4EarOy+8usVYcpOP+zgcRYjuDbC2ZnFYA+MO/8HkpXIpgGM/xkzt2WgrBW6Dv
	XN9+5oZi8Zzmfh3lLslMYmf/szkmss8m22G0cPWmdOp6r6E1b501jbNNk8B7idzxBs2Uhpp6djT
	Svrrpmf78h3dOZq4ncWgu6/cczTN1phvi5Q225n1LVRiSQclpZaR6omWqxgajFEIpaV+HJEt1Fb
	04kLAzD5PO54tVEylKH/21i8G6aQwoXjI2jgsZiA8Nn6UeP0j3iU
X-Google-Smtp-Source: AGHT+IE8wP39/Jo0ZHoBW2SjECR6nsQDJn6W+0VZeGnD/wjrRMzJCkWvJjJlJ/z5p/NlPJLXJxXJCA==
X-Received: by 2002:a05:600c:8b16:b0:477:abea:901c with SMTP id 5b1f17b1804b1-4792aeeb5bemr31715485e9.11.1764782030859;
        Wed, 03 Dec 2025 09:13:50 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-b582-e1f7-764e-a16b.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:b582:e1f7:764e:a16b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm49112578f8f.2.2025.12.03.09.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 09:13:50 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Wed, 03 Dec 2025 18:13:15 +0100
Message-Id: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKtvMGkC/22MywrCMBAAf6Xs2Uiyomk9+R/SQx7bdsE2kkhoK
 fl3Y88eZxhmh0SRKcG92SFS5sRhqYCnBtxklpEE+8qAEq9KYStMpmpjdxNotUStnffaQO3fkQZ
 ej9ezrzxx+oS4HeusfvbfJSshhZSdVRfrWz/oxzgbfp1dmKEvpXwB21wqbqIAAAA=
X-Change-ID: 20251128-avenger96-2b70277cdd7a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764782030; l=1519;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=nUOXlBs3ZeD+cj7PZnMytR2Z4dxk79b7R1LrnvrA22E=;
 b=UA+fNSlpuC+oN+9OWfcdfbatbYJyUYemFTWG1xg/8IUq/FpPyVj65l5NqmMq3tRbes5di3bf7
 oAoRZDUXOZWBb63wDc5C9mc7DHFTG8yPBFkQfYhmimc7hFv3WEE8m4Y
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_091352_912187_67628B6F 
X-CRM114-Status: UNSURE (   8.60  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] ARM: stm32mp: Add Avenger96 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for Arrow STM32MP157A Avenger96 board with bootloader
update handlers for MMC and NOR flash.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.kernel.org/r/20251128-avenger96-v1-0-009b13bd8df7@gmail.com

---
Sohaib Mohamed (3):
      common: bbu: refactor flash operations into separate function
      ARM: stm32mp: bbu: add NOR flash FIP update handler
      ARM: stm32mp: add support for STM32MP157A Avenger96 board

 arch/arm/boards/Makefile                    |  1 +
 arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 +
 arch/arm/boards/dhcor-stm32mp1/board.c      | 47 ++++++++++++++++++
 arch/arm/configs/multi_v7_defconfig         |  2 +
 arch/arm/configs/stm32mp_defconfig          |  2 +
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 ++
 arch/arm/mach-stm32mp/Kconfig               |  4 ++
 arch/arm/mach-stm32mp/bbu.c                 | 77 +++++++++++++++++++++++++++++
 common/bbu.c                                | 17 ++++---
 include/bbu.h                               |  2 +
 include/mach/stm32mp/bbu.h                  | 10 ++++
 12 files changed, 163 insertions(+), 6 deletions(-)
---
base-commit: a831f32782a5ce216301ccb52e4d27e3462632f3
change-id: 20251128-avenger96-2b70277cdd7a

Best regards,
-- 
Sohaib Mohamed <sohaib.amhmd@gmail.com>



