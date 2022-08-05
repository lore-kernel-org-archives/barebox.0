Delivery-date: Fri, 05 Aug 2022 10:55:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJt6s-00CJ6d-7D
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 10:55:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJt6s-0007l3-P8
	for lore@pengutronix.de; Fri, 05 Aug 2022 10:55:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PDTVkXqBnG0hMx9Y2IrFW4h7pRE+B/Up1ZICJ0hCA3w=; b=rkwgqPYelX/BUB9Bha3fvu/Gp3
	4L4ZihF9rxBt2xHmKJ0Dwrp1UbTi9U5O59PGcCqDVqVeiJZtH2RLcCE86tFjpdygN++reOQpDL4/x
	lhoVm7SgRuQj7rkqBYgY2MDA/NoOCYirkuJLGma6cztXkYHBRAfwjv8k/BirhVDN4wvh6muapgbZH
	dfGBBE26Y0YLLEqXuxfQqwT5ovpF69Pd7o30L3kQV2zoLenI7hT/VspVau+rdkdlBmDC89HZ/Di5E
	xWrzbSMWJidxE8wVafIWdl2mMibMKL9MqVoN8iD6GmPErmumLFaHqkOzr7EXEbtljzJ/3cRVaFPt6
	AgoclvPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJt5R-00DK2t-2s; Fri, 05 Aug 2022 08:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJt5K-00DK08-JP
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 08:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJt5H-0007eX-3i; Fri, 05 Aug 2022 10:53:31 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJt5E-001rI9-4n; Fri, 05 Aug 2022 10:53:30 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJt5F-00EJRL-Pa; Fri, 05 Aug 2022 10:53:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 10:53:14 +0200
Message-Id: <20220805085314.3404920-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805085314.3404920-1-a.fatoum@pengutronix.de>
References: <20220805085314.3404920-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_015334_664733_0E9AC153 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] defaultenv: ikconfig: add generated directory to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Directory is dynamically generated and config is placed into it when
DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG is enabled.

Add it to .gitignore, so it doesn't show up for in-tree builds.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 defaultenv/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/defaultenv/.gitignore b/defaultenv/.gitignore
index e2ef3c4205cb..d14aa0f494b5 100644
--- a/defaultenv/.gitignore
+++ b/defaultenv/.gitignore
@@ -2,3 +2,4 @@
 
 barebox_default_env*
 barebox_zero_env
+defaultenv-2-ikconfig/
-- 
2.30.2



