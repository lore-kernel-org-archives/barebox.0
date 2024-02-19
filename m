Delivery-date: Mon, 19 Feb 2024 18:30:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7Sr-00Extw-2G
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 18:30:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7Sr-0000ug-2T
	for lore@pengutronix.de; Mon, 19 Feb 2024 18:30:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8kJT35xuEl1yLW7fI5qNeuEpvzieT5gm/jUCGYzzrHY=; b=YkhzquUQ7jikjRBzuJHk4aCJPc
	4koTbm57XIjIbXY5Td7XEXRBvoGAOVUKhHN0HCRKHd2LBJoj380LHr9VYc2PmObNI9fuZ24mhCv9F
	qQgUJqs5mm+K0zMpe4euvG8GtIW8hOHNSytZKvaD05uAZgPS6nyGhnulB21GUuwPtbQ/nCOFewz00
	k0SRMID2GnhiftjvIJBsRxyjH7HMbhfJ6KhrLnWgB/0dIiDzKCJOfY3TCPHuRJHsC8hcQLuHxYf8h
	tXQYVwuBxLMl3wlVMssO1/srpf/h4M6vsLhrmC6NuoeHrMxv0BhyBSS80KUz1cSBsiSwKVUih/Uil
	c4J77kIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SR-0000000BWNL-2omz;
	Mon, 19 Feb 2024 17:29:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SK-0000000BWIv-0e1a
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 17:29:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SJ-0000Iw-04; Mon, 19 Feb 2024 18:29:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-001h0r-JV; Mon, 19 Feb 2024 18:29:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-00Fw3A-1f;
	Mon, 19 Feb 2024 18:29:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 18:29:23 +0100
Message-Id: <20240219172925.3798024-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
References: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_092928_244784_29FDA1EB 
X-CRM114-Status: GOOD (  10.72  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/5] deep-probe: use IS_ERR_OR_NULL() instead of opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_device_create_on_demand either returns a valid pointer, -ENODEV or NULL.
of_device_create_on_demand is a recursive function, which either returns
a valid pointer, ERR_PTR(-ENODEV) or NULL.

Retuning either ERR_PTR(-ENODEV) or NULL is needed for its proper
operation, but of_device_ensure_proped treats both the same, so use
IS_ERR_OR_NULL() to make this apparent.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/of/platform.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 060fa3458bd2..0d1dea2db377 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -491,10 +491,8 @@ int of_device_ensure_probed(struct device_node *np)
 		return 0;
 
 	dev = of_device_create_on_demand(np);
-	if (!dev)
+	if (IS_ERR_OR_NULL(dev))
 		return -ENODEV;
-	if (IS_ERR(dev))
-		return PTR_ERR(dev);
 
 	/*
 	 * The deep-probe mechanism relies on the fact that all necessary
-- 
2.39.2



