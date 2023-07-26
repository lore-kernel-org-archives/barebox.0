Delivery-date: Wed, 26 Jul 2023 08:33:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOY5e-00AOZG-Ue
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 08:33:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOY5c-00010D-Fy
	for lore@pengutronix.de; Wed, 26 Jul 2023 08:33:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hxCo0gBlI2jPkAHi7Jds2eQzgOZByOfsN2A0uecYHmk=; b=C8q6wCI/q3uvqO/IFt1S/hiGy6
	tqkUFgEYy46T5VxsC2K/Vg0Oo7QLMEtl6SbmPt1rcEYVtr9wZQKYqIFe4aag9Ei4CrbAgS/HX8x9T
	nd51ak/j51CUoil5PLataDLSremvBamHqpOtamxSffVFag1StjQIy9lYvvVFXVzoPj6sfsnvuSOe0
	+cvej9N0WHpWuBbASkElPzQgFSrVlXoU7uMM2AdCEglZMNEBxe1Vy07HP0feQDzYexY00haGMhOw7
	Qlr7jcpRtFuSfFA4JHjdIHF1G0y9m7amrPhZpqtRYJkBkTE4ycEjnJptmq+fYKg/DmTvHwTaBMSoS
	mZR4AqSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOY4E-009HVo-2A;
	Wed, 26 Jul 2023 06:32:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOY4B-009HUx-1V
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 06:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOY49-0000wb-W1; Wed, 26 Jul 2023 08:32:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOY49-002Aq8-Ai; Wed, 26 Jul 2023 08:32:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOY48-006zWI-2Y;
	Wed, 26 Jul 2023 08:32:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Jul 2023 08:31:59 +0200
Message-Id: <20230726063159.1666436-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230705144219.504194-3-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-3-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_233211_505238_5ED316B1 
X-CRM114-Status: GOOD (  11.42  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! i.MX: HABv4: extend support to i.MX8M SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_HABV4 selects CONFIG_HAB and that file still has one imx8mq only
check that should be loosened to an imx8m check when extending the
symbol for these SoCs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/hab.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index fad367f43dfb..c5d44ec921b0 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -208,7 +208,7 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
 
 	if (IS_ENABLED(CONFIG_HABV3) && (cpu_is_mx25() || cpu_is_mx35()))
 		tmp = &imx_hab_ops_iim;
-	else if (IS_ENABLED(CONFIG_HABV4) && (cpu_is_mx6() || cpu_is_mx8mq()))
+	else if (IS_ENABLED(CONFIG_HABV4) && (cpu_is_mx6() || cpu_is_mx8m()))
 		tmp = &imx_hab_ops_ocotp;
 	else
 		return NULL;
-- 
2.39.2



