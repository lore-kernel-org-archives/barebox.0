Delivery-date: Mon, 19 Jun 2023 11:53:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaD-00D38b-0K
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaA-0001t5-GV
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:53:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SA9QIsMr11q2v3qMU7z4F2T13PhihZIhHDRRoNCXlMI=; b=vUWPmXc/X54yKYduDmkaKr740+
	D77gDVnD37yl/6BL/JEMwCupLWTV881lRARNec6UNhgxfwR607/vSLpsyrPRwCACGAoe97M1m9nRA
	SzA9fUlfo0rapUaea5Hrh+03Kr8Dg2EaIV89w24tbLbfnK7/az2vcJ6cTAYWAt1cTC3bfJWzxW7FI
	wdAJMjthSwiMZrCd4LqUKQhgwxPT98Qq9yC+NRDTlBMbvrJDMF7NjLvw7PYSq4mzRWdcP/KPenulL
	X/fQut+GPrbQ0bgBKm1JlJZM/MRT6kQko0e89Dyf70+R2dm/ulk/IBf494/7n6e9pDTgFZIMhHmEV
	0AxVHP7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZD-0085Xo-1O;
	Mon, 19 Jun 2023 09:52:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZA-0085WQ-2V
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:52:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBZ1-0001ar-GB; Mon, 19 Jun 2023 11:52:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-008Tbh-Rz; Mon, 19 Jun 2023 11:52:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-0004bl-1I;
	Mon, 19 Jun 2023 11:52:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:52:36 +0200
Message-Id: <20230619095240.4168216-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
References: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_025256_816759_9669D9B3 
X-CRM114-Status: GOOD (  10.49  )
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
Subject: [PATCH 1/5] test: add pytest.ini with defaults
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows running tests with just

  pytest --lg-env test/arm/multi_v8_defconfig.yaml

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pytest.ini | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 pytest.ini

diff --git a/pytest.ini b/pytest.ini
new file mode 100644
index 000000000000..4aa8bbfbd628
--- /dev/null
+++ b/pytest.ini
@@ -0,0 +1,2 @@
+[pytest]
+testpaths = test/py
-- 
2.39.2



