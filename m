Delivery-date: Thu, 16 Feb 2023 12:00:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSc02-009HDq-Qt
	for lore@lore.pengutronix.de; Thu, 16 Feb 2023 12:00:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSc00-00012I-44
	for lore@pengutronix.de; Thu, 16 Feb 2023 12:00:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yd9lrLkWJbkNS1rj7ugb3eg3RL8IqTg51BbrOBOM0gc=; b=rKE2W8VD/eShnjKtI8UKd2UnBa
	aVkX03Hr/SqtsIjGqvPm0Q438SlCg/rP8h13eUvkgYwTaWhei2ZJyOtgwCUH6yDWHauPTljQSCWHj
	w17xZZWnE+J9UpnrgSBtJ538Axtgom5aGCiM+31r5rJOuX9pYRmamCnfZ1L0mvWJUMuz0Bfzu0DnF
	C/LV9DGUqevSZxK5uhL8PpLxgPnmXXsjfv3Pe67DeQbASh9Gfh5arPG93NsUN9n2mNCzYucTmQw7W
	GfJN83acBhRC0qKhdqgp2orMTUB+vQwoZlzhCogWA5yCpJeU3Es6B7c68NoMxwfNGDU5WsaL0gZ/S
	GLXjUGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSby6-009mKr-54; Thu, 16 Feb 2023 10:58:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbxA-009lvC-Ow
	for barebox@lists.infradead.org; Thu, 16 Feb 2023 10:57:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pSbx7-0000IH-Cb; Thu, 16 Feb 2023 11:57:25 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pSbx5-005KpL-Hu; Thu, 16 Feb 2023 11:57:24 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pSbx5-00C1Nn-Nf; Thu, 16 Feb 2023 11:57:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Feb 2023 11:57:22 +0100
Message-Id: <20230216105722.2865178-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_025728_838904_D613E9B5 
X-CRM114-Status: UNSURE (   9.67  )
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
Subject: [PATCH] of: describe third arg of of_property_write_bool in kerneldoc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_property_write_bool takes a third argument describing whether to
unset (delete) the property or to set it. Describe it in the kerneldoc.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 937847f44ab7..1d8b207b1528 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1130,6 +1130,7 @@ EXPORT_SYMBOL_GPL(of_prop_next_string);
  *
  * @np:		device node from which the property is to be set.
  * @propname:	name of the property to be set.
+ * @value	true to set, false to delete
  *
  * Search for a property in a device node and create or delete the property.
  * If the property already exists and write value is false, the property is
-- 
2.30.2



