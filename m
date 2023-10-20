Delivery-date: Fri, 20 Oct 2023 09:20:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo9-00FGXS-Tw
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo8-0006nH-R4
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5as5xnPGkpG3UbQofkrYfxvMVgO9TwrJfUYxoDda2M8=; b=d2Nou/4qD5A0b+49C5D8NwF3Uo
	58RTdEZBXGYIv6hblreGHun3o5Mdmbwt/WXICu6b0Cq+zEdJNbaJHcxagqbUpraqhjzFm9lfdAAXR
	LY4APsxMZdW70585W8aINCZmvb/Iq/n+9yUTYLzR6P9DgoQKo1lmEfdJDxJ89QRCVqkUtgWICDt2h
	IUbkpan24Suq4HrYN5oF7F7oEQDA28VSBzamTl3JBIfaylWGlOyX0gmryZ2Wxhl24JKRkOOWs1oPG
	btyzOZ8C4MT5/wcWClKwW2sADdAz/lBH4zXArnZG9xARAGDs/KadNHRXjNh91DNauF/eZQ05L2oo8
	dxydNL7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjms-001P0U-0D;
	Fri, 20 Oct 2023 07:19:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001Ovd-0e
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Dn-8e; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLo-G5; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRa-1H;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:49 +0200
Message-Id: <20231020071853.2826528-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_253312_4C972287 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/11] mfd: pfuze: disable mfd/pfuze.h dependency on regmap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The only thing mfd/pfuze.h requires out of regmap.h is the forward
declaration of struct regmap. Just provide that and fix up the only
user that didn't already include regmap.h although requiring it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx8mq/board.c | 1 +
 include/mfd/pfuze.h                       | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-imx8mq/board.c b/arch/arm/boards/phytec-som-imx8mq/board.c
index 5dbfaf13db60..45ed9cf5ad98 100644
--- a/arch/arm/boards/phytec-som-imx8mq/board.c
+++ b/arch/arm/boards/phytec-som-imx8mq/board.c
@@ -11,6 +11,7 @@
 #include <linux/sizes.h>
 #include <mach/imx/bbu.h>
 #include <mfd/pfuze.h>
+#include <linux/regmap.h>
 
 #include <envfs.h>
 
diff --git a/include/mfd/pfuze.h b/include/mfd/pfuze.h
index 4fb3863a723e..5cb0af939e06 100644
--- a/include/mfd/pfuze.h
+++ b/include/mfd/pfuze.h
@@ -3,7 +3,7 @@
 #ifndef __INCLUDE_PFUZE_H
 #define __INCLUDE_PFUZE_H
 
-#include <regmap.h>
+struct regmap;
 
 #ifdef CONFIG_REGULATOR_PFUZE
 /*
-- 
2.39.2



