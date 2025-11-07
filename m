Delivery-date: Fri, 07 Nov 2025 13:01:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9q-00GHqQ-0H
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 13:01:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9p-0007gV-Ii
	for lore@pengutronix.de; Fri, 07 Nov 2025 13:01:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fCWNT5xnXiB3z0YWrbvDg91jfCZWB3g6M8XrcVeO90k=; b=NLv0B30hF3BA6z5MVJtTF0cKQX
	bnbQdB2p2JoJKwYpIcXtYid+eseDKVssg5Ym51dQynwyH166ZFhiZFobyf6fliJ4Vhf26eboriLRN
	fCjJbdvQWySad90ekPVL4lYIBF+J/F/69FU2YArRsaGRzWnuXbbrQur8DbsYznXerDLSQz96/ydJx
	XWgWbPAPXor8JttYJwg6AVXUYwZgyCksa8eqkNRVOMkXkTBx9Knxy8+S0pij6adHlqliZ8wIBn5hM
	FTv6xKQY4anZUO3uoUBCYbwz9WjsqqcDtOfh8b+5fUNADXur0NIr3oUMlREvZmgJZ0oAHPA3NiMFv
	k6Co9XfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9N-0000000HG7s-3zZI;
	Fri, 07 Nov 2025 12:01:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9E-0000000HG5O-16vx
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 12:01:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-0007KA-Do; Fri, 07 Nov 2025 13:00:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-007WR2-0b;
	Fri, 07 Nov 2025 13:00:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-00000000sNa-2Hop;
	Fri, 07 Nov 2025 13:00:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 13:00:50 +0100
Message-Id: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHLfDWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQwNz3dzU3JzUxOxiXWMzU0sD4+TkRONkYyWg8oKi1LTMCrBR0bG1tQA
 SocRSWgAAAA==
X-Change-ID: 20251107-memleaks-365903cca3c3
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762516853; l=687;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4e1b7sVC6BpkGjo6yEuHl3NFUYRpcoQSAHxt1kCFOkM=;
 b=L5E01hpjX4L0gNe+8MUXmaRW/DypXIfysGw3PLJxy6OhH0JQEWrBRLr3znme+iPfgUtrsPNoK
 Y+Q+Z7R+pXPC4lFVRsCpzu9lgsaNIBKr/vjOMc0rKb+kXEammVUb5SK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_040056_309001_34883DAF 
X-CRM114-Status: UNSURE (   7.41  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] fix some memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes some memory leaks I stumbled upon

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      tlv: fix memory leak
      of: free of_fixup in of_unregister_fixup()
      bobject: free object name in bobject_del()
      bfetch: fix memory leak

 commands/bfetch.c | 28 +++++++++++++++++++++++-----
 common/oftree.c   |  1 +
 common/tlv/bus.c  |  6 +++++-
 include/bobject.h |  4 ----
 lib/bobject.c     |  7 +++----
 5 files changed, 32 insertions(+), 14 deletions(-)
---
base-commit: 5789cb9767ba53b757bcb6bb12a676ff9ea69d34
change-id: 20251107-memleaks-365903cca3c3

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



