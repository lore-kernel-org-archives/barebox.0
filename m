Delivery-date: Mon, 05 Sep 2022 17:38:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEAg-007eqP-Im
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:38:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEAg-0002eP-9j
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:37:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=29WOyvrXVp632tPQe4e9iFa4dyljXgGlIcnkUZI9M6Y=; b=sITfAc7dk0KHDm73EdGOu2RJCh
	rRuZYxWUj5aGa0ZNXWs7tlAErl4/CCU6+Pjx1bHROc2EPDDK0nzrp5ncA0xT/wCAe1Rjptk1XH1W8
	IFhZCL17+QtWLn4TCDYeG+D1XGi69pdsrKqtr4I1kY0DuPhZz7xzkHztW/ig5hR4+ccfqSb1miQ/c
	q7Acl6aMf9W57R9wNSV/OHR1knjUde/8mFW1VKnFBaB1Tt5tuEIxM99Xj1SkE7V7D7ziyttQ6NNnP
	t5ZOh169H/sVZ/R3KUJk8DoLPuEp62kUsnn7RFEZW/Pzx0If0IIHeH0yM4Cm6k6XfvPp0UUu2iYaw
	D1mXeBkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE8j-0063Qd-UZ; Mon, 05 Sep 2022 15:35:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q5-00H49t-UL
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=29WOyvrXVp632tPQe4e9iFa4dyljXgGlIcnkUZI9M6Y=; b=NzxO4Ma/zGVAbi/84u1zWYjTH0
	Yegu6DQ0uMLLfkwmy8YzlF0Y/AwghiNnNGsKmtFRjlzoYEat75wP+MFHFVAtZpmFbi57Q4QTucm/x
	xoCCtEgwbX7v80QKtA8IYex3vwwhqgL98e9UF8JXKSWzzgrhtynLOseEyU5AGo7N2S3qqjDzykLlp
	K5WcyhirgbA4mrnmHfJjo9ZWAx/85iUJBAGu5PRlTd9VXPtdKxd6yCYGwemx9ikpDBZau45gMU3H3
	v6jqFfmRFtuSkiQZg7E+LuY3NWQWEEx36n6e07qwDS6csKx9Tsgpbc7iMIKF/ZXnaLfHIyV8BkTrL
	9gq57SVg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8py-009UjC-EG
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0008FY-80; Mon, 05 Sep 2022 11:56:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pn-0042GA-DG; Mon, 05 Sep 2022 11:56:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeO-1L; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:41 +0200
Message-Id: <20220905095557.596891-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_042921_4C31A7C9 
X-CRM114-Status: UNSURE (   9.97  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 16/32] of: refactor for of_fixup_reserved_memory() for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pp was never used and the ?: construct made the code needlessly terse.
Use it and make the code a bit clearer.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/oftree.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index e459f84601a3..38752e2c191d 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -292,8 +292,10 @@ int of_fixup_reserved_memory(struct device_node *root, void *_res)
 	if (ret)
 		of_property_write_u32(node, "#size-cells", size_n_cells);
 
-	pp = of_find_property(node, "ranges", &rangelen) ?: of_new_property(node, "ranges", NULL, 0);
-	if (rangelen) {
+	pp = of_find_property(node, "ranges", &rangelen);
+	if (!pp) {
+		of_new_property(node, "ranges", NULL, 0);
+	} else if (rangelen) {
 		pr_warn("reserved-memory ranges not 1:1 mapped. Aborting fixup\n");
 		return -EINVAL;
 	}
-- 
2.30.2



