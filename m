Delivery-date: Mon, 27 Jun 2022 12:27:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxQ-00GGQ8-Gq
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:27:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxS-0001OI-DE
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:27:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uWFEkXOGmmbGonxG429KoV+cguNZVQtivcOIyequysM=; b=P1enji2++YTRrYFg9mgsVlBpT2
	jOxgHRe9WeG1q5pscsjm9AqMzoWdAV6+9syWdMdRT6WbNap9b5eEUFtAQ8Sr6f+2qKICUh/PJagm4
	aQ+gMQ8zL4BSDBICX9cvzntnnH2PHSdweJ9+/QKMu0+k+wy5atZvVwIGx1gcplW1bEF4IfhgwohPJ
	xQdFFs7QfkDO3V0bohDwfCOD2QRGUfuA8ii/1X8BPfdNyWEAAnQxrSVWyqukCC0AUcCrGvMBeJcVy
	6zBkaXrsmjH82gER4UKNiHP1njncrAtmejNKLmBlLjDy3/OfhWcuI/+5qW1netAOCKiXRByl558Ya
	gGvOC0gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lw7-0005rt-HQ; Mon, 27 Jun 2022 10:25:43 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvg-0005cp-Ea
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:18 +0000
Received: by mail-lf1-x133.google.com with SMTP id a2so15800970lfg.5
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uWFEkXOGmmbGonxG429KoV+cguNZVQtivcOIyequysM=;
        b=b3+KBrNqr8aN04N7nWNeBS4l2va+aS0O/V+etYr7Gzip0T/vAhkZmk7qyjWu7kafeJ
         PogKwwJ1feRsw0EC26WKBBZ6fOR5AdvdSSqXvSxT2a8k0f6xCa2Qh780lHxwgfccyK5Q
         S+swWTXVcp4V3SrbgjtTnd4vwoUGkEhJrUD20sXcd2RCtgFyFT2pxGxB3Vc98aZ2NwnS
         +liXJXUHB2cZJWwbTNHvUu7ekxQviQoHtQ5wGgEZy/lFIv6v3QjfYxJplfXY5O+9bDeC
         G7LGQIph4vHFf8TFm21AvuJXK+f6ugzdtHy1JiZ6SkTE2P4hcQB4l9xuClqvJoVRg+GG
         CuLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uWFEkXOGmmbGonxG429KoV+cguNZVQtivcOIyequysM=;
        b=JYryFRCJNcvc3Y2Wj9gwwMD7TdoUEiBbDAbPK+DB074/A0c3CQOzYBRvUSXavrag4u
         OCJX2eLeT+wfgIR19H/5/JrlMxm67gShdVa/fqDrQT0R72YXTH8GsTizRU1x3m+J1zIA
         JjJkKt3uk79DxFTU83wDsosnJ41iM9LPueFfdyMPTwIavnMpdBdVqF1Nx6Cx+n65RDoE
         iJZYmNT3+LW9pe/8Lp+adU3C6tG47BdyT7N1GhO/LTGUmm41RDNEJ68lvLHRx8diE6If
         K7ZkVw3yPd/zwerTZXLQdeq9Rz4KznHbKAIPzETJUkZtTWu9ypm2EhD5EiJi7s+Gxxjg
         0AVQ==
X-Gm-Message-State: AJIora/yoX/8eDux1hZP0IX1NqBZ/qq5popPaDQ7AvOY0J3jPPLvmDGW
	0bW+gkfJ7eh7CcSmqDjASSNNWe1KbDY=
X-Google-Smtp-Source: AGRyM1ukQe8NDxLBJ9RxsHvnCW0cv8+449ZTKWWE0gILOiI/Ysoj5tRDJnRI57VyDkqgHUfel4rh0w==
X-Received: by 2002:a05:6512:31d0:b0:47f:92c6:99f1 with SMTP id j16-20020a05651231d000b0047f92c699f1mr8443885lfe.198.1656325513237;
        Mon, 27 Jun 2022 03:25:13 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:12 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:57 +0300
Message-Id: <20220627102500.18427-6-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032516_536082_36ECABD1 
X-CRM114-Status: UNSURE (   9.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] logo: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

WARNING: unmet direct dependencies detected for BMP
Depends on [n]: IMAGE_RENDERER [=n]
Selected by [y]:
- BAREBOX_LOGO_BMP [=y] && <choice>

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 lib/logo/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/logo/Kconfig b/lib/logo/Kconfig
index de3494eccf..7e5a6fcb63 100644
--- a/lib/logo/Kconfig
+++ b/lib/logo/Kconfig
@@ -2,6 +2,7 @@
 
 menuconfig BAREBOX_LOGO
 	bool "include barebox logos in build"
+	depends on IMAGE_RENDERER
 	help
 	  Say yes here to build the barebox logos. This adds ImageMagick's
 	  convert tool to the build dependencies. The logo can be found under
-- 
2.32.0



