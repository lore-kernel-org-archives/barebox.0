Delivery-date: Tue, 10 Jun 2025 20:43:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3wM-005tHI-2Z
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 20:43:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3wM-0006wt-9P
	for lore@pengutronix.de; Tue, 10 Jun 2025 20:43:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8ya+csSTLbnJNleP136lUW0cov913indb8yVr5rqtSI=; b=b4A0S5sILM/ZWY6fd2bx2CXuDf
	uD2XeQrBcmlYGLodSRL5Yzw8V+A/8h26PXWPtg+OsnXOvdCKzI4/yrBiiUCq/gCaeWczYkCcET7CB
	Chp+gujNJ/Eym7JtaQamcnNpuZtV4etZOdoWqtzQ53CQhwpOQBS+p+JgzU11rxiEqoTpDUmISX4vb
	sFofX2Wm26smEJWPtysg7z6J/KR3XZdjAkGUShH2V+EIpiAtn69DReVWkrjzKQLuYnTS6MNmWNVXh
	m2Gt710VZqu3KN+INwCkjm/ne22aBXQoIVynWXfvj3Rokfi2+Zh7UOJ211KIF4Ua/xrcKmzTVnpdE
	Z6uaHeOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP3vr-00000007pPa-0Wps;
	Tue, 10 Jun 2025 18:42:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0qy-00000007J9u-46Xv
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:25:34 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uP0qw-000204-Cv; Tue, 10 Jun 2025 17:25:30 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 10 Jun 2025 17:24:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-imx_spi_alias-v1-1-fc23f2f143ea@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAEdOSGgC/x3MQQqAMAwAwa+UnC2khQr6FZESNWpAqzQggvh3i
 8c57D6gnIUVWvNA5ktUjlTgKgPjSmlhK1MxePQBa4dW9jvqKZE2IbVI2BAHPw40Q2nOzLPc/6/
 r3/cD3gIc8V8AAAA=
X-Change-ID: 20250610-imx_spi_alias-0a09ae52cbaf
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1025; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=bvx5eQnmnEr2rEK3QD3148vkn+qlAPejAfWWKdzxIOI=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYsjw8Eta8PSMp1zq47macoGe3Wt0+FsMdj/dtXzjwz+lk
 9KjowpCO0pZGMQ4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABPRamX4py6QlOZQUmjFdvbY
 613hGTcWiQbvCl71caHN2amzr666bcTIsG2VWrjOW7MAz+xf21LnFIrvEvq4puVEiOYnrp+fL7/
 uZAYA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_082533_018872_09B41A00 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] spi: Probe spi devices without alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Continue probing spi connected devices without an alias. Setting bus_num
to -1 will assign numbers automatically.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/spi/imx_spi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index bfb4b413ebab0e62e92f61db52a866a1d55b9ae3..14c4baada8e03ce1b38031afc68de7b261d43e78 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -604,9 +604,10 @@ static int imx_spi_probe(struct device *dev)
 		imx->cs_array = pdata->chipselect;
 	} else if (IS_ENABLED(CONFIG_OFDEVICE)) {
 		ret = of_alias_get_id(dev->of_node, "spi");
-		if (ret < 0)
-			goto err_free;
-		master->bus_num = ret;
+		if (ret >= 0)
+			master->bus_num = ret;
+		else
+			master->bus_num = -1;
 		imx_spi_dt_probe(imx);
 	}
 

---
base-commit: 508059d413816818905f86c64145f6a7a1a1f998
change-id: 20250610-imx_spi_alias-0a09ae52cbaf

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



