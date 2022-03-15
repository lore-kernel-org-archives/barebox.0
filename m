Delivery-date: Tue, 15 Mar 2022 14:41:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU7R0-004KMT-J6
	for lore@lore.pengutronix.de; Tue, 15 Mar 2022 14:41:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU7Qz-0007UP-Bi
	for lore@pengutronix.de; Tue, 15 Mar 2022 14:41:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62nkVo9IsatJVR8twlpFHpjfeDT/q0SAwer8EKmxOGQ=; b=0VC3616Dx7embI
	zG7Ekj3x3h3T1owkw35HTbOxYd/oeUVtrvjsc5shNziRjT8HGs5Cvr+TfdG27KGGYMdl7vNAz8K3O
	v6cfHq4TdYxv5tCnbT7ftCsq2pYGzCSvKraCCv/6x/rPPJHqeDa2KGd+kYFQYc+HiiycfEQy/4M4J
	H9iX8MjO7uSWKUo6PpqBKLP1pNCh0N8fFKq6IpwjNOTxJ7EEgk/gj9L8w2MV/k+2VOVvxW6oe6EIa
	34PZBm93MJmqUzg6FrnPkA0ht4j11fzKIIXm99eW7emTR/5nCNe7KZvRkQlxHp7+C4Y4Bx2x00nQp
	VctAzwljmvDSgx5wFO0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU7PN-009G2K-GQ; Tue, 15 Mar 2022 13:40:17 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU7PF-009FzR-7x
 for barebox@lists.infradead.org; Tue, 15 Mar 2022 13:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tEFGROOg2YxgUVy67HhtPp0QmwHsPOs/a0JAyrRKhUE=; b=cbX0vnhqaYkmRRVTYe2Z+pZhIG
 3b5N4WrgiEwfxPG/BSl7OeCGQrgtz+PsNt+86DvOuBs/KcLjLJaYYG1OVq98NaEvULCiicCIZbini
 StpKeDgNEadHTd/ySfNQ4MBkCZZcIhILvrhYCnLR9UYTrpm47wnODsD6RHFLLVC5hyWqHnlZGFbVv
 7XeBG60D/DwnTef7/o9WW8636lYzOKR/M8PnDollQL/6Z1ZzUSGunpx9/qpfLfhEDOSvoiKzu4tbJ
 OLCnMVAkOb+raFnOTm5wMRMSf8B6Sa2teST8w+iUXhwAcrbLWQL6b7/ntNMQ4NsuEsSPSBZMcU2vc
 5aTVv4CQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:40480
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1nU7P5-00EQ3O-AA
 for barebox@lists.infradead.org; Tue, 15 Mar 2022 14:39:59 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Tue, 15 Mar 2022 14:39:42 +0100
Message-Id: <20220315133942.537756-2-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315133942.537756-1-andrej.picej@norik.com>
References: <20220315133942.537756-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_064009_679691_91BED458 
X-CRM114-Status: UNSURE (   5.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] mfd: da9063: ensure all gpio devices are probed before
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GPIO lines in da9063 are assigned dynamically, while majority of SOC
GPIO drivers assign their GPIOs in static manner (GPIO line numbers can
be calculated).

This introduces regression if deep probe support is used. If da9063
GPIOs are registered before the SOCs GPIOs, there is a good chance that
the SOCs statically computed GPIO line numbers will already be used by
PMIC.

Ensure all SOCs GPIO drivers and GPIO lines get registered before the
da9063 registers its own gpiochip.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 drivers/mfd/da9063.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index a4e5226f3c..8b943eb4ef 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -390,6 +390,10 @@ static int da9063_probe(struct device_d *dev)
 	restart_handler_register(&priv->restart);
 
 	if (IS_ENABLED(CONFIG_GPIOLIB)) {
+		ret = of_device_ensured_probed_by_alias_stem("gpio");
+		if (ret)
+			goto on_error;
+
 		priv->gpio.base = -1;
 		priv->gpio.ngpio = 5;
 		priv->gpio.ops  = &da9063_gpio_ops;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

