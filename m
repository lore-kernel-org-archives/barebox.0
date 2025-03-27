Delivery-date: Thu, 27 Mar 2025 11:07:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk8u-004pap-2h
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:07:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk8u-0004yd-A2
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:07:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DD6rblYWKFbVZ/dMneU2S53kEDMfeq1qjpqSBPYhat8=; b=rtHE/fEUCmTu1SsTg568QIMXQ2
	jJDupLYuSgLAYE12FDLmSfHVoJD86r9gygv1kFlTUZwd/7qWkYm/2IpEZ9HLiU43Fe00uFNImFAjd
	9FAK4Q9NwovDWaK6q27LEvm9cA0n5opeuINAVVUbO9grXGh4lQj/eG7trlqoUasXXm6Zqbt7IAV/C
	2CQBtaZPEaW59HUDRPjZaKUjZpa5xZYG5uOA9Q6wjiyZ/Su8BbsTlCSCG6GP28hOkedR8Ooy015ff
	0IrjnUAyt1DMJeQzZKmk1wdbjZXrU2MUhwT+Rb2J1mNOtejFGZp9ccEIVrA3OicHSnD5tq9eGfzjK
	hj6cx5UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk8R-0000000Aem4-08Sp;
	Thu, 27 Mar 2025 10:06:51 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk8O-0000000Ael7-1bkx
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:06:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=DD6rblYWKFbVZ/dMneU2S53kEDMfeq1qjpqSBPYhat8=;
	b=P5tKkgzVqpz30lMrKtbUm1mmEAZy/zn0P5qoHHf1O/tEgIsT85Qp/Jc/Wy4S+QRYAyrauC2Wnv6Wp
	 YzxKjrKITVdvWtnt9pNwuIUfYUPbrtGqIoNrXUmp06wnzgUPuaRXTL9LsI58xIEWIcqStWt85k3lyX
	 km4uYsguSNCzrdVDWYhXFaIvNM0Ce4Wu7PegBDyjH4fsm9bqW8oB8JGcIKrcFnX02gzApf7m3MZJd1
	 ajuaAFL/HFrLd6Dq7uEYcY3vmxwgCbZSoKoVO09RlvqdNHEHzU+MQWuIyEjHELDpzINRs1Jv46PnFz
	 rsJAgCPT3OEhU9i918I+cbMW+3B7JvA==
X-MSG-ID: 31214467-0af3-11f0-8eaf-0050568164d1
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Thu, 27 Mar 2025 11:06:35 +0100
Message-ID: <20250327100635.656657-2-robin@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250327100635.656657-1-robin@protonic.nl>
References: <20250327100635.656657-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_030648_562572_588A6A52 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: boards: protonic-imx6: prtvt7: Use autoboot timeout for serial boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enabling the autoboot timeout for serial boot makes CI easier.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 4585ca4730..2757ea12b2 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -6,6 +6,7 @@
 #include <bbu.h>
 #include <boot.h>
 #include <bootm.h>
+#include <bootsource.h>
 #include <common.h>
 #include <deep-probe.h>
 #include <environment.h>
@@ -768,9 +769,13 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
 	}
 	gpio_request_one(gpio_f6, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "F6");
 
-	if (!(gpio_is_active(gpio_cycle) && gpio_is_active(gpio_f6)))
-		priv->no_usb_check = 1;
+	if (gpio_is_active(gpio_cycle) && gpio_is_active(gpio_f6))
+		return 0;
+
+	if (bootsource_get() == BOOTSOURCE_SERIAL)
+		return 0;
 
+	priv->no_usb_check = 1;
 	return 0;
 }
 
-- 
2.43.0



