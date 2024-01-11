Delivery-date: Thu, 11 Jan 2024 13:13:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtw5-00CxFZ-1P
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 13:13:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNtw4-00083N-Tq
	for lore@pengutronix.de; Thu, 11 Jan 2024 13:13:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gX7SG8cJARHgXifiUFoYOZdhqxfL8EDbzij0rL3k/rM=; b=rdAlKNXg6BK6XqX2CzTQ5qf93d
	/hfLGoLyVlzaot92BFMtRnGlwJ2lxjEIFVkz40oIg4uj7ECTIcPuwT8VVVopUdRtYZqQjAAezcil0
	B2kR0mJjjcvFSZFjj/FxiRRWZ4QfxHtIdk8MJiApb4hKZghgnHSJDsRr2pwsHCZvoreo78mCtA8wg
	ywdZTsLjQ8svGY+ojYN/SDpxeSEU6QIy9u3xBVM40FcSWcYl6jpKi6Z4ZD5mQme10IUTexBiFmJM/
	dFAYWj+aBmdmIsvIYDBNRfjVDWxTxwZei06ht9asUqxdRyFMadCQw6ZHCd3MScnKcQBC4TvehkjOt
	uWNxf4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtv6-00HaTz-35;
	Thu, 11 Jan 2024 12:12:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtv4-00HaT1-1P
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 12:12:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNtv3-0007nq-2y; Thu, 11 Jan 2024 13:12:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNtv2-001vIR-Mk; Thu, 11 Jan 2024 13:12:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNtv2-006JoO-1l;
	Thu, 11 Jan 2024 13:12:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Jan 2024 13:12:18 +0100
Message-Id: <20240111121219.1505025-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_041222_488506_748AE129 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] hab: habv4: use explicitly unsigned types for pointers into SRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

char is generally unsigned on ARM, but we shouldn't rely on that. HAB
code does though and compare a char against 0xdb, which would never
succeed if chars were signed. Switch to an explicitly unsigned type to
fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/habv4.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 974158fd0c01..4db1e7cc0f3a 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -216,11 +216,11 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 {
 	struct hab_event_record *events[10];
 	int num_events = 0;
-	char *sram;
+	u8 *sram;
 	int i = 0;
 	int internal_index = 0;
 	uint16_t ev_len;
-	char *end = 0;
+	u8 *end = 0;
 	struct hab_event_record *search;
 
 	if (cpu_is_mx8mq())
-- 
2.39.2



