Delivery-date: Tue, 23 May 2023 17:51:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1UIK-00Aywq-Hv
	for lore@lore.pengutronix.de; Tue, 23 May 2023 17:51:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1UII-0008QB-3g
	for lore@pengutronix.de; Tue, 23 May 2023 17:51:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkqTp/wCiqCjLbznhbFzCmOErdBepE70hYsULFU5WRU=; b=nlM8WdOvCVIqQl
	rsLPsE1DzbAT6xP6szRIIX2zYPkyrolhPmSZ4ckI4MYip7KZ34NnjTf58aglHlaO3J0j0FRxATv7V
	yxKWOoNqTSSP3mgTeUqfejLigCkIMQ84BcojDwlWKaKBecISDKi3emAiY9louKJEGCcwJltGYea4h
	s2Vl4PcLEM9m705O+pPcOw0CBAccWOBMTpHyiErqoMwgyRQFplg43jOTvrH4qKOTzhayDKMXUuypt
	9DTDYbvcG3f6rsCuHaQL0gvlUl2AGgUuGA8o0JYKXNJ8HS3Ut63qkde4NbI2RG4uwIvRhszVquK+V
	/XbtBeRuI5xzl9HEFt3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UGp-00AgYr-1q;
	Tue, 23 May 2023 15:49:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UGm-00AgXn-2A
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 15:49:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGc-0007en-Ee; Tue, 23 May 2023 17:49:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGb-002Hma-Ov; Tue, 23 May 2023 17:49:41 +0200
Received: from localhost ([::1] helo=blackshift.org)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGa-004aJG-W7; Tue, 23 May 2023 17:49:41 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 23 May 2023 17:49:39 +0200
Message-Id: <20230523154939.1074667-4-mkl@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523154939.1074667-1-mkl@pengutronix.de>
References: <20230523154939.1074667-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_084952_707039_3934EEA2 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, kernel@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] I2C: i.MX: fix guard macro comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Fixes: dbbe6037f5ca ("pbl: generalize fsl i2c_early API into pbl_i2c")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/pbl/i2c.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
index 32e456d46b6d..ea2ae447a39f 100644
--- a/include/pbl/i2c.h
+++ b/include/pbl/i2c.h
@@ -35,4 +35,4 @@ static inline int i2c_dev_probe(struct pbl_i2c *i2c, int addr, bool onebyte)
 }
 
 
-#endif /* __I2C_EARLY_H */
+#endif /* __PBL_I2C_H */
-- 
2.39.2



