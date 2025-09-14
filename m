Delivery-date: Sun, 14 Sep 2025 21:41:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uxsau-00346f-2U
	for lore@lore.pengutronix.de;
	Sun, 14 Sep 2025 21:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uxsau-0003N6-8y
	for lore@pengutronix.de; Sun, 14 Sep 2025 21:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=klKdthcV+JeULNRf/iRnZyynavosLYUiArYDdBrALxs=; b=SH0v7q5vEqlMdiwmyUwCsQd6oW
	p06PqNEPk3SGcQZ6r+6OBalGduss4TQetr5ebirdGtSrAiKqnE+Pe4cxjvb4jFqRAQjm7B2ISf+eX
	l9rEz3Ufk/wLCLRLYuFggnLNC2t+st1mDieHO25Wt080xuQdl5Qh/AQmxiKbDqKScEeBp9OyofwzA
	woW+VMopnIvWUKt3+8qoO6KE8uT5jmgD8yO6+QUdrFqJR+KcIvIwlck4v20aoN9/eFmFcOqFgQhkt
	vEFzragYL3ExXkWUNSHUqXMysqI4VkkznVegW4uZAuqCMGH1or9F3gdcD4pevjcFEy584ZhP1vHmM
	MZl/niMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxsaR-000000025If-3Odc;
	Sun, 14 Sep 2025 19:40:35 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxsaP-000000025I9-0ORO
	for barebox@lists.infradead.org;
	Sun, 14 Sep 2025 19:40:34 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4b5ed9d7e20so40020781cf.0
        for <barebox@lists.infradead.org>; Sun, 14 Sep 2025 12:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757878832; x=1758483632; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=klKdthcV+JeULNRf/iRnZyynavosLYUiArYDdBrALxs=;
        b=jj18hsXuAANvvXDyT156QwX8H4Vmv7Y2+v3CW8Ws1ou/7jKwsu6DZC83KmcaiyQ2Ug
         E5NHBmtw1xLHea//xHUr1xw06hr03n6L2+wP3NYDbBCmn3cavmbhZEMuuKO1xz1MzCEj
         1jD3PsS4GNMKEVhloG95AwxhnZfAt8JnUMmStATAMSVqutVKn42eqjA+ImR+/kI5c7dX
         2JdWdrT9Go/EKf9D35JdUN5iHtjBn3vtHAKQ9vMtSbCx3cYBkCvUZgiqAG79HnLAA5Ae
         E72Z3NQExchnYwMW9zSj2QHbsg3O34Oq2625sq+xmzKgKisgqXfu0hnuABNukySM7X4H
         NXIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757878832; x=1758483632;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=klKdthcV+JeULNRf/iRnZyynavosLYUiArYDdBrALxs=;
        b=u5rbUxJ2w7Hr+PgNuhtI4K8Np7vhtMAQL7JnWPVH/qpk8EFZK1dP1kl0gHZezfuJrO
         slcNtOcdc43f2kQJ3vMmXS5Z77nBGnJ+8DIOg3tjdmlGQfdrMJBBF0RhY6HUTJ0W6Yt9
         td6iwSNSWXvR2Ek5AzO/8P+wYncqn1cor/SiGYss/D0ZaFM+SGUebE7ze3si0LRIsy6I
         1SoYmXFvQVt5V25VtL8eSH8g9TZqHpBAGNYX/9yckzTmvRBDQElo8svjfGsOUJ3jNCSB
         IrXPqleg7PbPJ+hX7DoYycHHS3+qsDSDe5ybzpu6Bit0Xp7VWcHV+kR2WLH/k8LcPR43
         7Lsg==
X-Gm-Message-State: AOJu0YxMKzJAVhqi9VSdbqWZ4ngxKX32qH3EJZB6iqlUE/2+CyuN7kTn
	uBaLSUsQy1oaJt318mLwyGjqsVLbrbWMbUpe69FX2UEbOPdIsV1c9ayq
X-Gm-Gg: ASbGnctdYlEnHQ2sfnVrLf9ARFtcicCz/ts/iNWKcNOjPRjDRlLHglR4tkIHz7C0o6f
	kjtFcOEMycM8wGqAy/aGYhgivV99SmLVZi7wx7/ogUllBg64X+sL9xb/IFNEAC9cEMjUpUxwC3u
	KamW0w5mX974sI71bzSZzcYlxN2Gi41kCM1xMIrzDB47q9rwt7ypDVQiuYeogSBrmBr2zXZrHcp
	BPe5GUM0zasaUWDfWygOreHBPr3XpZjriYGVKzU06A1ebFfDEZJzzPwQfXpuxORxI5EC8xxLuSO
	78cMmnu9OidlXv3mPXuqu8fNtDelHCZV2duiZ07AO5Kz4Phb2Y0zBIYR+x8fpX2rzj3fErkhgLA
	uLj/o49a7t5R4q3nEbj1/AwWVzHgm7/f53iZfq7++BAEpCfcKoUVPBJ5Oq5edcrFElb76jb72/M
	4aRhx7a0e7hN0BiEWiKWHPUJgmV7I8QOn4LYli0sdHt+OsCDc=
X-Google-Smtp-Source: AGHT+IHT3C7O91kQHIDyuI2i2WzykOwQKc7oL6SLYhSG0EWmQM8KAJlLv3UUtcLd58XC5IyJHUBglQ==
X-Received: by 2002:a05:622a:5a0c:b0:4b6:144:faf3 with SMTP id d75a77b69052e-4b77cff4747mr134024351cf.30.1757878831589;
        Sun, 14 Sep 2025 12:40:31 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:88f2:c609:e1c6:6429])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639dc8d9bsm56409981cf.38.2025.09.14.12.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 12:40:30 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sun, 14 Sep 2025 15:40:27 -0400
Message-Id: <20250914194027.32261-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_124033_135998_7E4BD2B3 
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arch: x86: efi_defconfig: remove framebuffer console to fix duplicate screen.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

remove the framebuffer console and let develpers select it when needed, this
fixes the problem that consist of having the screen splited to top and bottom
displaying the output twice, and considerably speedup the efi payload on x86.

Fixes: 67498b411276 ("x86: configs: efi: enable some more useful options")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/x86/configs/efi_defconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 1dd823af40ea..9844a70d2628 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -78,7 +78,6 @@ CONFIG_DRIVER_NET_EFI_SNP=y
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
 CONFIG_VIDEO=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_EFI_GOP=y
 CONFIG_FINTEK_SUPERIO=y
 CONFIG_SMSC_SUPERIO=y
-- 
2.34.1



