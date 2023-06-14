Delivery-date: Wed, 14 Jun 2023 11:04:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9MQn-006Qhb-Qq
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 11:04:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9MQl-000259-Jm
	for lore@pengutronix.de; Wed, 14 Jun 2023 11:04:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WLCI7XAJ54pZaRukrJxx+La8IR34TiNC5oQANb7VaIM=; b=mWZL49IKpr/5pV1UpHIvBXpwAm
	D8s9eJ1Ul39jJYaTFMY90x+SzOzMQPH9lpztcIveWxmmCXZ3iWwbBG/xCuvAZBu3uT+3bFFlR1v7i
	eNufCdvMIO3V+2o783x0ltWvlH23Onr7IagoId1/ToJr4ZpOaXGLi45XTEH6+0wiKZYlQZyFAI5v+
	ImJVkMKj71dUrYtU1wvznWqZwidlo/YckuNwo1U4hnfvel5qniE7EEiVI9GcjdIxc5V3XV6ZaqYFq
	9vQCnQ2SHc/RA0X3FHCB3x0ULnt074e5lckP/XXxhMRnZXCyMPSKYSp1mwjPZFy1NbIRO/4T6NPS/
	Trv4uOSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9MPo-00Azmo-31;
	Wed, 14 Jun 2023 09:03:44 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9MPl-00Azlv-1h
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 09:03:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9MPk-0001tx-8z; Wed, 14 Jun 2023 11:03:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9MPj-007JWz-Jg; Wed, 14 Jun 2023 11:03:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9MPi-00HaqC-P0; Wed, 14 Jun 2023 11:03:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 11:03:38 +0200
Message-Id: <20230614090338.4192368-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_020341_564260_8CCE7EFC 
X-CRM114-Status: UNSURE (   9.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: panel-ilitek-ili9341: drop #define DEBUG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a left-over from development and shouldn't be necessary for
regular builds.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/panel-ilitek-ili9341.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/panel-ilitek-ili9341.c b/drivers/video/panel-ilitek-ili9341.c
index 7202773b5189..1f9c4254855d 100644
--- a/drivers/video/panel-ilitek-ili9341.c
+++ b/drivers/video/panel-ilitek-ili9341.c
@@ -12,7 +12,7 @@
  *
  * Derived from Linux drivers/drm/gpu/panel/panel-ilitek-ili9341.c
  */
-#define DEBUG 1
+
 #include <common.h>
 #include <linux/bitops.h>
 #include <gpiod.h>
-- 
2.39.2



