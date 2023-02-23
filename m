Delivery-date: Thu, 23 Feb 2023 11:32:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV8tr-00GiDw-4r
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 11:32:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV8tq-0002dF-5S
	for lore@pengutronix.de; Thu, 23 Feb 2023 11:32:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SiSnzwxVP3Yx5yWfNjixQyZcDueDsUb8/XdVxgLb+9M=; b=U7skL9SJi0j5ng
	3iZ4C6iy77RZSDhpWFPzniwBrLeP0Fo0xQ4aSn0qgwB2ayfAkoOteF96JKGl0SiOmOmLAUiEKzvhR
	0gFQdEJJTZJ8nBeiAaBV+uYHTha2mTl5I4LXu6pgdq4qYY7K1TRDs4pTBi3UQg0zqzik4Rwn8qP9M
	ayxSpRgZM1QVBI+4QBy37sTpFW9RVb5MTHKesu7aK7UKCBU3n6xjI1Mtth3LqHrvvm4rcBMk/cprz
	/Vp9Grd96cp+Ox28GUPXHwgoirrnbJaAnmaaFhZTAhdjJe/zDsaixRLZ4sOQPMf47aNFOH4Y3w+oV
	TgBYejbmHtUi4tf8Fhow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV8sd-00FxwS-Te; Thu, 23 Feb 2023 10:31:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV8sY-00Fxu1-V9
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 10:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV8sV-0002TC-Mc; Thu, 23 Feb 2023 11:31:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pV8sT-006w6d-Sn; Thu, 23 Feb 2023 11:31:07 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pV8sU-007zqy-Ec; Thu, 23 Feb 2023 11:31:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 23 Feb 2023 11:31:01 +0100
Message-Id: <20230223103101.1904100-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_023111_050183_A5BBB2E7 
X-CRM114-Status: GOOD (  11.44  )
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
Cc: Ahmad Fatoum <afa@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: Fix of_get_stdoutpath() when property does not contain a colon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With 90f70dbe29 'buf' only gets initialized when the stdout-path
property contains a colon. It changes

	p = strchrnul(value, ':');
	buf = xstrndup(value, p - value);

to
	p = strchrnul(value, ':');
	if (*p)
		buf = xstrndup(value, p - value);

With the latter we end up calling of_find_node_by_path_or_alias() with
a NULL pointer, so no node can be found.

Fix this by restoring the original behaviour.

Fixes: 90f70dbe29 ("of: split part of of_get_stdoutpath into of_find_node_by_chosen")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 34854d9b0d..fb23594c7a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2680,7 +2680,7 @@ struct device_node *of_find_node_by_chosen(const char *propname,
 					   const char **options)
 {
 	const char *value, *p;
-	char *buf = NULL;
+	char *buf;
 	struct device_node *dn;
 
 	value = of_get_property(of_chosen, propname, NULL);
@@ -2688,8 +2688,7 @@ struct device_node *of_find_node_by_chosen(const char *propname,
 		return NULL;
 
 	p = strchrnul(value, ':');
-	if (*p)
-		buf = xstrndup(value, p - value);
+	buf = xstrndup(value, p - value);
 
 	dn = of_find_node_by_path_or_alias(NULL, buf);
 
-- 
2.30.2



