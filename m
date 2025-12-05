Delivery-date: Fri, 05 Dec 2025 15:29:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRWo8-008EI7-1d
	for lore@lore.pengutronix.de;
	Fri, 05 Dec 2025 15:29:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRWo8-0006tq-08
	for lore@pengutronix.de; Fri, 05 Dec 2025 15:29:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aySRqruwsjrs32SAbHKZcKjv+khWV+ZAZOJPBG8O1y8=; b=j71Nx93Blv8McsCGsjUZ2dbjmP
	JhNfsRrUxz9Q/llGRddNkFbihWM163jxoRFMnOdyiroXC8w2badPlLmgUICh6cMnMtZ/kWw0pYRcz
	Te5nAKC/xQfOupLx8K8X/M3e/oo2Pj6sqoIfzle1vUEYV+sqOk3/6iVZYIQTG4hUiJA7R+mTb9KPr
	jhAMvvJgTVEHJrXh0RTDGMO59cSHTdEWUQE4puDpy+eWKkNrj0lLWtoK3Etdpf1WHoK8dbrAOvIlP
	rDbf+pThbXz80Ctjvyf8AQWWE3GT7n3mPgctdZ1uqea2X2rP7EF5aMSZu01kKEnF7Nw4MYeXiOuQf
	xVdwaBIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWnY-00000009adW-3Gbw;
	Fri, 05 Dec 2025 14:28:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWnV-00000009ad7-2Lpi
	for barebox@lists.infradead.org;
	Fri, 05 Dec 2025 14:28:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vRWnS-0006kG-IG; Fri, 05 Dec 2025 15:28:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vRWnS-0048ct-1D;
	Fri, 05 Dec 2025 15:28:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vRWnS-00000004bhF-14Nt;
	Fri, 05 Dec 2025 15:28:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  5 Dec 2025 15:28:32 +0100
Message-ID: <20251205142832.1096749-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_062837_622422_1E2F0350 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] console: return no pending character when console input forbidden
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When console input is forbidden but was previously allowed then it can
happen that there are still characters left in the input fifo and
tstc() consequently returns 1. Code which then tries to read the pending
character will be stuck in getchar(). Fix this by returning 0 from
tstc() when console input is forbidden.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/console.c b/common/console.c
index 95e5fb4df3..fb75077812 100644
--- a/common/console.c
+++ b/common/console.c
@@ -568,6 +568,9 @@ EXPORT_SYMBOL(getchar);
 
 int tstc(void)
 {
+	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
+		return 0;
+
 	return kfifo_len(console_input_fifo) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
-- 
2.47.3



