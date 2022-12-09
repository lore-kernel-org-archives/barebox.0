Delivery-date: Fri, 09 Dec 2022 08:11:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XXm-00FmBY-Db
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 08:11:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3XXl-00063I-U7
	for lore@pengutronix.de; Fri, 09 Dec 2022 08:11:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OSwoPmsHgBKaurRT74JhUE8re1HQ9/XjJjiWLC8F+zA=; b=Gsi6SnrkMqq1onZXbRfjmgIrC9
	eDSeBp3R3WP0MPhngWe4HUg7ZeW6o+5b8JBmFvXlMEFxECbrPf9Dp1RNFrwIXGa93ppOhNa6zjX2s
	/4opTqGrDtjjmZ7GSaIKlLdeIwe9Wa+3sJuCFfmA2lRPx2K/9bVjb1Y1PQrSz7ZEd4qK7Hrtq5ZVk
	LYqQ+/HY4ofpKuwINDRuJebtfR16QoFjaxLUK9IJ3ZtZX5yIa0JXutKeVe04fkskNobMFE7KegDTh
	Q0TUKOi5+by4bkhGwMlWG696Ky3zSMM8i3n+UCmPuvteSBzG+nmv4UP0+FSsSUM0/urTe5ufYBcdr
	Oz7E8irQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XWR-004stI-4h; Fri, 09 Dec 2022 07:10:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3XWK-004sqg-K8
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 07:10:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWH-0005X0-Gq; Fri, 09 Dec 2022 08:10:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWG-003JMQ-5W; Fri, 09 Dec 2022 08:10:04 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p3XWF-00FnVC-Tz; Fri, 09 Dec 2022 08:10:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Dec 2022 08:10:00 +0100
Message-Id: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_231008_682994_CD1A1C63 
X-CRM114-Status: GOOD (  10.97  )
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
Subject: [PATCH 1/3] driver: support Linux device/driver OF struct member names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When porting drivers from Linux, one of the modifications that needs to
be done is to rename all .of_node to .device_node and of_match_table
to of_compatible. Just accept both names. It comes at no extra cost.

Once all barebox drivers use the Linux naming, we could drop the union
again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 2386949c312a..1c50b79886c1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -74,7 +74,10 @@ struct device_d {
 	struct list_head cdevs;
 
 	const struct platform_device_id *id_entry;
-	struct device_node *device_node;
+	union {
+		struct device_node *device_node;
+		struct device_node *of_node;
+	};
 
 	const struct of_device_id *of_id_entry;
 
@@ -113,7 +116,10 @@ struct driver_d {
 	struct bus_type *bus;
 
 	const struct platform_device_id *id_table;
-	const struct of_device_id *of_compatible;
+	union {
+		const struct of_device_id *of_compatible;
+		const struct of_device_id *of_match_table;
+	};
 };
 
 /*@}*/	/* do not delete, doxygen relevant */
-- 
2.30.2



