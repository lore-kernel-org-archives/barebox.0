Delivery-date: Mon, 24 Apr 2023 14:19:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAG-00FZ2S-3u
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAF-0004QD-Pj
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIKBcBpM/dWlXC/uGWxPrYU+EIfxGmY/8V1XNEUk6qc=; b=q75xqdNUTkE/0yO23E6Q8tJHsx
	GhFNetV9tAwg7x39Ellps6mYWBMZWOI8rOoFBZOzGGIUVfVMlVIrCvMbbZ3mmoecZZQhu3aNOYYZM
	QCuLC0ageLhnV9mrTuVGgAysTFYQiWD/fxKPPXOmWUQtVVhtcvrDhT2Jygmu372PWiE6pwCOR1dKI
	sYplZbYqab4C9giMFKy2Ln8GRfpqoguSLIpHDQ1yMq9+aHludAj2Hqs3Mw3YJ1X4D8x2Px8Eiw/Qh
	H4x8PCcQOooH4IXmfBaCuvr0MRC96m41hTyoBMKT1lUi6Ztbd/BQO5nEbn/cosTwaIkCbBhEBL9Uo
	mIo6CB1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv9C-00GHbQ-2h;
	Mon, 24 Apr 2023 12:18:22 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv97-00GHYE-2Q
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:19 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id CD60640008;
	Mon, 24 Apr 2023 12:18:15 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:18:04 +0200
Message-Id: <20230424121805.150434-6-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051817_918054_4CEDEF15 
X-CRM114-Status: UNSURE (   7.29  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] featctrl: drop useless NULL check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The only instance of calling featctrl_get_from_provider looks like this:

  featctrl = featctrl_get_from_provider(&featctrl_args, &gateid);

Given that the function is static, there's no need to protect against
either argument being NULL, so drop the check.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/featctrl.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/base/featctrl.c b/drivers/base/featctrl.c
index f40b1f04bc1f..0b81f801058d 100644
--- a/drivers/base/featctrl.c
+++ b/drivers/base/featctrl.c
@@ -46,9 +46,6 @@ static struct feature_controller *featctrl_get_from_provider(struct of_phandle_a
 	struct feature_controller *featctrl;
 	int ret;
 
-	if (!spec)
-		return ERR_PTR(-EINVAL);
-
 	ret = of_device_ensure_probed(spec->np);
 	if (ret < 0)
 		return ERR_PTR(ret);
-- 
2.38.4



