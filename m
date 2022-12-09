Delivery-date: Fri, 09 Dec 2022 08:11:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XXh-00FmAw-Gs
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:11:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XXg-00062L-U7
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:11:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W68oja02uKjnyqMYRGy04Z7Fnb0sr2B5tC3CQ1Zo6sY=; b=R66lfoGOwUnzQ66S5dL5KaRVzl
	OwuhRhxc3tOsKCDA1QGp/wIEdER4ejVT8ekiY0mxd0BBlpOIX23msoXZHJAmZYpX9+qmO4IzRiBm3
	FPgCElOh48VY7pdDg1Vs5wthaG4jdltuZSPxMa6cPY91ApXfVXwf2+Ixi0OObPejPUI0mRqsWZYqJ
	hZUl5reHZoHGefTV4diFIjMbuCavCKAZVPDqoHYfliOfXK/DoXSmBhwSulWdsj6qaT4AkykrSUBHj
	4NTKoHCuIILZjpeBBGfCbBaetRhgZehAmsMTjhxdVX8AQjaY9lLebe8R/JxN9/c9K0Yk2jYXSuGBN
	iAf5+ECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XWP-004ssi-3C; Fri, 09 Dec 2022 07:10:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XWK-004sqd-NX
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:10:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWH-0005Wz-FS; Fri, 09 Dec 2022 08:10:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWG-003JMN-32; Fri, 09 Dec 2022 08:10:04 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWF-00FnVH-Up; Fri, 09 Dec 2022 08:10:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Dec 2022 08:10:02 +0100
Message-Id: <20221209071002.3765134-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
References: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231008_813431_AAE121CC 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] of: provide of_node_get and of_node_put stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While removal of of_node_get and of_node_put can simplify ported kernel
code, on the other hand, they can be more of a hassle with future syncs
of the driver. Just provide stubs for them, so they can be left in.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/of.h b/include/of.h
index 901101df051d..e1024e2c3ff8 100644
--- a/include/of.h
+++ b/include/of.h
@@ -101,6 +101,11 @@ static inline const void *of_property_get_value(const struct property *pp)
 	return pp->value ? pp->value : pp->value_const;
 }
 
+static inline struct device_node *of_node_get(struct device_node *node)
+{
+	return node;
+}
+static inline void of_node_put(struct device_node *node) { }
 
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
-- 
2.30.2



