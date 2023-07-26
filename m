Delivery-date: Wed, 26 Jul 2023 21:28:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkBg-00BBpH-EV
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 21:28:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkBd-0001YQ-Mn
	for lore@pengutronix.de; Wed, 26 Jul 2023 21:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wwwumuq+erRokJBH49DjkUSVzW366bN1+cvQAREvUfM=; b=BD5Trf2m1FzTQyBJWOe4QBfMeh
	EljsHc21s5krZrX2B2xqNHBJBTS7VbxDo3YMOG8DDxA1/A3uD+84G2pZlCO4lfZOHm+9FnvyVg+1D
	ZqD5PsK0XWUeRfv5hf7t6MwhVHi7pR6UPSI+mCOpylytrBzssJHMUIpRo8LqXKPm++/e4xzMBNxq0
	oVTdR+YM193UOOfaMOQwC+VmE3yjLWAzw/7xntTiM5c2goa78LPeXIe9AiWZqqMedu8ktmL1muReP
	Vim46vRUAJkA4sj6G/g0+RncNdvTxqXIdotck92Btrs6Cdir+In3J0vTxQ2+dUs3LBvfBu2tKU1Su
	RcRAx+kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkAW-00BNvx-1B;
	Wed, 26 Jul 2023 19:27:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkAO-00BNuN-2F
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 19:27:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAM-0001Mk-7J; Wed, 26 Jul 2023 21:27:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAK-002JSb-R8; Wed, 26 Jul 2023 21:27:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAK-003pBo-0P;
	Wed, 26 Jul 2023 21:27:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Jul 2023 21:27:16 +0200
Message-Id: <20230726192718.911735-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230726192718.911735-1-a.fatoum@pengutronix.de>
References: <20230726192718.911735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_122724_783962_4F2499B8 
X-CRM114-Status: UNSURE (   9.39  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] HAB: guard against NULL imx_hab_ops in imx_hab_device_locked_down()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All other exported functions guard against imx_get_hab_ops() returning
NULL, before dereferencing the returned pointer. Do likewise in
imx_hab_device_locked_down().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/hab.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 5bb97c4b689b..2a2d347dd68f 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -351,5 +351,8 @@ int imx_hab_device_locked_down(void)
 {
 	struct imx_hab_ops *ops = imx_get_hab_ops();
 
+	if (!ops)
+		return -ENOSYS;
+
 	return ops->device_locked_down();
 }
-- 
2.39.2



