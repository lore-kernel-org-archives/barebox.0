Delivery-date: Fri, 14 Oct 2022 18:37:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgl-008i5X-Ej
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgj-0005Qi-9i
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I++HZ781iKbMQYlUE9L1X8+4n9SgYcfxBagM3d3e5GA=; b=I17+DNaiPALOQxGVm8wvVD8xCC
	80rBgjCrr416BW+ey51Iiu4zV+dMi0C1pDSh2RHbZ5WtDbJXBNVimdkv68A4qMj8CLdghIl9DInba
	JL8aPioi+oa0n/oEQfTFYDa18pDwP0wkkEOQ0SN6W9dm0zqD3c9BYP60WYc/M/dAih8N1GFsBH/DT
	+bI9SyhF94roSo30r427NCK5RpYgc3DLHTs918e2LVrLeRyqNPeLRV/dqiSJcsDJhRTXnnA/K8mKZ
	0HrybpwiL67JI4N8qBFRYZOgLmYYOZwrLjB6zxiiWJtUl5fIzaBi/bRjXJNNQps+VBOrwWrV16UXG
	HODjUblQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNf1-00FNVo-Si; Fri, 14 Oct 2022 16:35:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNSf-2a
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-0004xY-07
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNer-001WSS-7A
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:37 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00FzlP-D8
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:27 +0200
Message-Id: <20221014163534.3812272-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_164069_9024B1F7 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] of: of_node_name_eq: correct alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just a cleanup nothing special.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ea2a88764b..2eee1279a9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -32,7 +32,7 @@ bool of_node_name_eq(const struct device_node *np, const char *name)
 		return false;
 
 	node_name = kbasename(np->full_name);
-		len = strchrnul(node_name, '@') - node_name;
+	len = strchrnul(node_name, '@') - node_name;
 
 	return (strlen(name) == len) && (strncmp(node_name, name, len) == 0);
 }
-- 
2.30.2



