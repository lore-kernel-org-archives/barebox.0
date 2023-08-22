Delivery-date: Tue, 22 Aug 2023 09:49:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM8W-004Trb-Hc
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 09:49:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM8U-0002Au-Dh
	for lore@pengutronix.de; Tue, 22 Aug 2023 09:49:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yS1wWl3vatRZVALUlGU+SMCu5NoXjikX6g7wyyYFm8c=; b=QxrlMSXLetzB6VsUFjaM0Y/xZo
	xDKUAJnIGcmijMRfuw1bn+PkdZZmLdJT6yEYQpu5dpM8c67P3Y1S3Nf0HeEZ2JLENcvK8MnaIlS0/
	uYYbUrxdvk0HJyIXljq9AJkELzMARaNSqpddX8UT1a9g7+K6F6cxSq8BFqHMivtyZj1+P/DCC7Lki
	ZPxC28NHp3nYAr1AnDV3K/PKwCqIeGIx1V/DxOrhmPZiaT6kz8dXeRPFl344cu2T+8uXwSywhgQgT
	M/t/2y6CPKI4ZFM82sotjQSzHqxr0ECnmRyBXUsGAxaXmEJZdim+iBSS1/HBWaSpHME/bb3p4W+qk
	mZPL3KKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM7D-00FO82-1G;
	Tue, 22 Aug 2023 07:47:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM78-00FO5y-0c
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 07:47:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-0001yZ-VI; Tue, 22 Aug 2023 09:47:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-000lPM-A2; Tue, 22 Aug 2023 09:47:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM72-00GNwk-0F;
	Tue, 22 Aug 2023 09:47:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Aug 2023 09:47:36 +0200
Message-Id: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_004746_229359_C2BF2559 
X-CRM114-Status: UNSURE (   9.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] param: drop priv from dev_add_param_string_ro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dev_add_param_string_ro() is used nowhere, but when we do, having an
unused priv parameter serves no purpose, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/param.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/include/param.h b/include/param.h
index 76a077fd758a..5d4f7f3db52f 100644
--- a/include/param.h
+++ b/include/param.h
@@ -334,8 +334,7 @@ static inline struct param_d *dev_add_param_bool_ro(struct device *dev,
 
 static inline struct param_d *dev_add_param_string_ro(struct device *dev,
 						      const char *name,
-						      char **value,
-						      void *priv)
+						      char **value)
 {
 	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
 }
-- 
2.39.2



