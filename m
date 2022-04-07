Delivery-date: Thu, 07 Apr 2022 11:19:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOIJ-00AI77-FA
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:19:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOIG-0002I4-BA
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:19:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTIpz4jK/6WMJ8P3lQlDsKYWtBMLJONFeXITP/q1eSQ=; b=hlF6TCvZwl7mPl
	ZL9aAAZL9wDUFopiIAurJ01UA3wW7ywsEt10eXCCGJsRhN4MkDoQeOGxG2tRQ6oyLbOff7k34yndr
	SO47cKuH0W5ggKBo/VssubJ0UOtiQYEwtliPzTr8lH2DxZgiE6bYs+PDfy77Le44MPpRYdqfZyF7u
	cIMOSEj6VyqEmP+0pma87MdBS5Q7mRc7Xo4nO2bQLL4wcNd8GZmA0WlarafO7pbwhzEHP5O/BZ4OL
	X44Fvjy30DKyboDrJdo9kldo8pcmIj/hlkXFLRWIgjwLe9mQX9KDOHMmmooJXDBS0KHCR5N2e1i+W
	RQQfIz7aOxOoapTE1QfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOGm-00Altk-M2; Thu, 07 Apr 2022 09:17:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNx3-00AcwC-8Y
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:57:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNx0-0005q7-6m; Thu, 07 Apr 2022 10:57:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNx0-001Ztc-U7; Thu, 07 Apr 2022 10:57:09 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNww-003zUT-KE; Thu, 07 Apr 2022 10:57:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:56:57 +0200
Message-Id: <20220407085705.951285-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407085705.951285-1-o.rempel@pengutronix.de>
References: <20220407085705.951285-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015713_338694_57C140A2 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/12] driver: add dev_get_priv() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add dev_get_priv() to make driver porting easier. Needed for SJA11xx
switch driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/driver.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index 85cb30f8b0..b35b5f397e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -603,4 +603,9 @@ static inline struct device_node *dev_of_node(struct device_d *dev)
 	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->device_node : NULL;
 }
 
+static inline void *dev_get_priv(struct device_d *dev)
+{
+	return dev->priv;
+}
+
 #endif /* DRIVER_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

