Delivery-date: Tue, 09 Aug 2022 07:59:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIGz-00Gy1Z-HX
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 07:59:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIGz-0002yI-W7
	for lore@pengutronix.de; Tue, 09 Aug 2022 07:59:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DkUpmlsc5MjnsBjqerk9B6nJ1Fc0ru+sRRsLvFFGF0M=; b=cixhzaETkdXAHCHtMu4krtKjvS
	LAWQ1BNElhN4wnaF7L/EmMyYKe1tm410PMSSMQOOMg9nP0d+khqMnXM4rXVnsjtUAlqI93Y6MB/ru
	QzPENLZFbDUldjVoP3wgIWQfGwKYYUwzp7Rz2gIwAzkm5th4MOMkaWOmHA5wDdxPPUPMvcgqtGKNl
	0U3/Ppu7btWx/jTZ3jLugGA9F/I2I90kx9wcFCVCCBFkZli6iLYDMGyhVKsmT6LPyg9DAsSP/U31v
	SkP5ktGRDbDm4VV/9/0j1Z5SfRmObTiSMpecVZpELMWoc1I7bQerdZBfp7ZJL9pOeZC5xSw/mK8Qs
	fmX1/pPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIFV-001jqS-R9; Tue, 09 Aug 2022 05:57:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIFG-001jmo-EB
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 05:57:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIFE-0002oz-DK; Tue, 09 Aug 2022 07:57:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIFA-002e7c-Ar; Tue, 09 Aug 2022 07:57:34 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIFC-006Tl7-0T; Tue, 09 Aug 2022 07:57:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 07:57:33 +0200
Message-Id: <20220809055733.1544311-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
References: <20220809055733.1544311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_225738_504538_C6D4A1F2 
X-CRM114-Status: GOOD (  10.38  )
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
Subject: [PATCH 2/2] test: self: add tests for of_append_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_append_property has been recently added, so extend the
of_manipulation tests to cover it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/of_manipulation.c   | 11 ++++++++++-
 test/self/of_manipulation.dts |  5 +++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
index 1bcd593c8628..6eb6062e126b 100644
--- a/test/self/of_manipulation.c
+++ b/test/self/of_manipulation.c
@@ -61,12 +61,13 @@ static void test_of_basics(struct device_node *root)
 
 static void test_of_property_strings(struct device_node *root)
 {
-	struct device_node *np1, *np2, *np3;
+	struct device_node *np1, *np2, *np3, *np4;
 	char properties[] = "ayy\0bee\0sea";
 
 	np1 = of_new_node(root, "np1");
 	np2 = of_new_node(root, "np2");
 	np3 = of_new_node(root, "np3");
+	np4 = of_new_node(root, "np4");
 
 	of_property_sprintf(np1, "property-single", "%c%c%c", 'a', 'y', 'y');
 
@@ -89,6 +90,14 @@ static void test_of_property_strings(struct device_node *root)
 	of_set_property(np1, "property-multi", properties, sizeof(properties) - 1, 0);
 
 	assert_different(np1, np2, 1);
+
+	of_append_property(np4, "property-single", "ayy", 4);
+
+	of_append_property(np4, "property-multi", "ayy", 4);
+	of_append_property(np4, "property-multi", "bee", 4);
+	of_append_property(np4, "property-multi", "sea", 4);
+
+	assert_equal(np3, np4);
 }
 
 static void __init test_of_manipulation(void)
diff --git a/test/self/of_manipulation.dts b/test/self/of_manipulation.dts
index 3b690bb7f0fe..a69d944c1eb5 100644
--- a/test/self/of_manipulation.dts
+++ b/test/self/of_manipulation.dts
@@ -27,4 +27,9 @@
 		property-single = "ayy";
 		property-multi = "ayy", "bee", "sea";
 	};
+
+	np4 {
+		property-single = "ayy";
+		property-multi = "ayy", "bee", "sea";
+	};
 };
-- 
2.30.2



