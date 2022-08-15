Delivery-date: Mon, 15 Aug 2022 17:41:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcDd-006bGW-Es
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 17:41:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcDc-0000YE-O9
	for lore@pengutronix.de; Mon, 15 Aug 2022 17:41:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YNvPNrcrvH2SJ0Ke5UaPdiqUt2jfnZC0pJJ9zuP/u50=; b=Ui6gTCtP4ycoQaeOV9EDYOXJod
	YaGXpYZfMdedbduHwfNAUnpipcDbEeIWft5fMQA4jRuMUuwKuvvuam1/KPdLlBJjHSSZDjgQGBeTV
	FOCjV8qX7NqY91mpIhxR4c6JL1MFeK2vC+PNtKbQpkNtgv9y12OJx5eds3tbrmWpBNGJhYRtsAUfW
	VLkT+Lhs37YJQLANTL1dIo3YTInbchaPkBagWX/i9scCiHRrXjPOS9agtYms3H6J4EB73I9MUILmV
	VE5SPAYNGmaeVkhZuB3rjfkcmww08dkVCjtzJRg4zPdasV09giOnmmA0wlA/oINnChY1DCES8uSTA
	aqVUqlIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNcBV-000yOr-Rg; Mon, 15 Aug 2022 15:39:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4i-000uCx-Cq
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 15:32:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4c-0007AL-35; Mon, 15 Aug 2022 17:32:14 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-003wms-03; Mon, 15 Aug 2022 17:32:13 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-00AAGY-HP; Mon, 15 Aug 2022 17:32:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 17:32:09 +0200
Message-Id: <20220815153209.2422662-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_083220_577236_1B02F212 
X-CRM114-Status: GOOD (  10.19  )
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
Subject: [PATCH 10/10] commands: iomem: point out [R]eserved regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we define IORESOURCE_BUSY as meaning that a region possibly
contains secure firmware, it's useful to have this information in the
iomem output as well, so add it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/iomemport.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/commands/iomemport.c b/commands/iomemport.c
index d0cfc413c262..f2baa0e29397 100644
--- a/commands/iomemport.c
+++ b/commands/iomemport.c
@@ -16,11 +16,14 @@ static void __print_resources(struct resource *res, int indent)
 	for (i = 0; i < indent; i++)
 		printf("  ");
 
-	printf("%pa - %pa (size %pa) %s\n",
-			&res->start, &res->end, &size, res->name);
+	printf("%pa - %pa (size %pa) %s%s\n",
+			&res->start, &res->end, &size,
+			res->flags & IORESOURCE_BUSY ? "[R] " : "",
+			res->name);
 
-	list_for_each_entry(r, &res->children, sibling)
+	list_for_each_entry(r, &res->children, sibling) {
 		__print_resources(r, indent + 1);
+	}
 }
 
 static void print_resources(struct resource *res)
-- 
2.30.2



