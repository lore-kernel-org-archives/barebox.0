Delivery-date: Thu, 11 Jan 2024 14:01:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNugs-00CzfH-17
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 14:01:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNugr-0000k5-PB
	for lore@pengutronix.de; Thu, 11 Jan 2024 14:01:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AWNx1+vJBLkkWEhPhH9ounUjx43b4u0g2b3XTYmzRmg=; b=H8JQPo43u36BSoksiGUeH9Ih/A
	jlKHiRTVYAafsdHdumK4wGJ2rq7RE+moxL1vg9JKGS/nrxpjrJYB6rPumunypb2uLQd5ryjf050Ci
	4mXau/QoSYcCOqopUFDORK6cA1YlNkQYdj1cjofTr+AXqW3bDRsFuiTBlBh5t3ovczp3jx7jW6Fdc
	InRUDXlHgtIeip3bGqPAcRSC5cE2ZBGN0mi/XdKl0EDuASei4uGU8NB6QX8/Bx5qXMvgywU/r1wWf
	rHW47JbUgZ4tytnLuZFB6wjE7L8feYnWz1+750gjP+UhFAkHB7KZ1Y4boPr+DJ4Nq1zBDgNXpKfoe
	giDasmRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNufX-0005Mb-2h;
	Thu, 11 Jan 2024 13:00:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNufV-0005Lq-1O
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 13:00:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNufR-00005V-Tq; Thu, 11 Jan 2024 14:00:17 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNufQ-001vnt-MQ; Thu, 11 Jan 2024 14:00:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNufQ-007UJL-1w;
	Thu, 11 Jan 2024 14:00:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Jan 2024 14:00:15 +0100
Message-Id: <20240111130015.1784217-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111130015.1784217-1-a.fatoum@pengutronix.de>
References: <20240111130015.1784217-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_050021_492867_6E1B8926 
X-CRM114-Status: GOOD (  10.45  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v2 2/2] hab: habv4: warn if more than 10 HAB events are found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function has space for up to 10 HAB events. On the off-chance that
there are more found, it will scribble them over stack memory.

Fix this by only collecting up to 10 events and printing a warning if
that's exceeded. Once we have reports that this issue manifests, we can
consider extending the array or dynamically allocating it.

Reported-by: Christian Melki <christian.melki@t2data.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - keep first 10 events found
---
 drivers/hab/habv4.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 4db1e7cc0f3a..ed6d4db77c16 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -254,6 +254,11 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 			if (sram > end)
 				break;
 
+			if (num_events == ARRAY_SIZE(events)) {
+				pr_warn("Discarding excess event\n");
+				continue;
+			}
+
 			events[num_events] = search;
 			num_events++;
 		} else {
-- 
2.39.2



