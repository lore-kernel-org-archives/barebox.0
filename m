Delivery-date: Wed, 09 Sep 2026 14:38:44 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4HZc-000C7G-0K
	for lore@lore.pengutronix.de;
	Wed, 09 Sep 2026 14:38:44 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="HKQN/Tsw";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B11262058D8
	for <lore@pengutronix.de>; Wed, 09 Sep 2026 14:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I+du5PcGMfyXpgWSxjPzqXnGM+Hz77oanNeoCk8TDIA=; b=HKQN/TswOIVgYyTqVrUZOTQJYC
	fqsDxeG/vHAZjFWyXsvyTd0KZYEl1M07nwllfXJ0LkuJRzQ3pQdieLxK0e13RjYD0sWEipqXE1WMY
	AAWuzF6EI3wP1AZA3d1hIsZaoZjX2WRXzusVv5jBrAcYOdn/jZb50dHz97bqoyGrHwUQq/N7IziDE
	/u6lViiz6RhenDrlKP7hwDhrjm1aUxSd+fd3c4ayjKQbW0ZqaDxgkooHkLEvlne4D/+C9qWUabiDZ
	flmFDlIo+iacSonuOB+kAcE2iVmjXvE1U2QSO7oRHdnrVTgarL59LvDb/31vpwt+H47QFS/nauptE
	BtTC4sNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GhW-0000000Bbt3-2hCB;
	Wed, 09 Sep 2026 11:42:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GhT-0000000Bbs4-0vbo
	for barebox@lists.infradead.org;
	Wed, 09 Sep 2026 11:42:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7551A201FA9;
	Wed, 09 Sep 2026 13:42:45 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4GhR-0005Dm-1E;
	Wed, 09 Sep 2026 13:42:45 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4GhR-0000000HCoq-3KLq;
	Wed, 09 Sep 2026 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 1/2] clock: make udelay(), get_time_ns() and is_timeout() weak aliases
Date: Wed,  9 Sep 2026 13:42:38 +0200
Message-ID: <20260909114242.4099220-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044247_414192_E4D3E558 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The ARM64 PBL is about to override these three for the time
    before a clocksource is registered. Give the clocksource based implementations
    names of their own and turn the generic ones into weak aliase [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: oeqd8qdhgsefg4qyb9teb1o9g7hm9cdg
X-Rspamd-Queue-Id: B11262058D8
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

The ARM64 PBL is about to override these three for the time before a
clocksource is registered. Give the clocksource based implementations
names of their own and turn the generic ones into weak aliases, so an
override can still call the clocksource based version. No functional
change.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/clock.c  | 13 ++++++++++---
 include/clock.h |  5 +++++
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index fc770ac8530f..0f2f47ed5399 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -50,7 +50,7 @@ late_initcall(dummy_csrc_warn);
 /**
  * get_time_ns - get current timestamp in nanoseconds
  */
-uint64_t get_time_ns(void)
+uint64_t clocksource_current_get_time_ns(void)
 {
 	struct clocksource *cs = current_clock;
 	uint64_t cycle_now, cycle_delta;
@@ -73,6 +73,8 @@ uint64_t get_time_ns(void)
 	time_ns += ns_offset;
 	return time_ns;
 }
+
+uint64_t get_time_ns(void) __weak __alias(clocksource_current_get_time_ns);
 EXPORT_SYMBOL(get_time_ns);
 
 /**
@@ -165,7 +167,7 @@ int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns)
 }
 EXPORT_SYMBOL(is_timeout_non_interruptible);
 
-int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+int clocksource_current_is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
 	int ret = is_timeout_non_interruptible(start_ns, time_offset_ns);
 
@@ -174,6 +176,9 @@ int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 
 	return ret;
 }
+
+int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+	__weak __alias(clocksource_current_is_timeout);
 EXPORT_SYMBOL(is_timeout);
 
 void ndelay(unsigned long nsecs)
@@ -184,12 +189,14 @@ void ndelay(unsigned long nsecs)
 }
 EXPORT_SYMBOL(ndelay);
 
-void udelay(unsigned long usecs)
+void clocksource_current_udelay(unsigned long usecs)
 {
 	uint64_t start = get_time_ns();
 
 	while(!is_timeout(start, usecs * USECOND));
 }
+
+void udelay(unsigned long usecs) __weak __alias(clocksource_current_udelay);
 EXPORT_SYMBOL(udelay);
 
 void mdelay(unsigned long msecs)
diff --git a/include/clock.h b/include/clock.h
index ca69535e9185..ea87bfd2020a 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -58,6 +58,11 @@ void udelay(unsigned long usecs);
 void mdelay(unsigned long msecs);
 void mdelay_non_interruptible(unsigned long msecs);
 
+/* the clocksource based implementations the weak functions above alias */
+void clocksource_current_udelay(unsigned long usecs);
+uint64_t clocksource_current_get_time_ns(void);
+int clocksource_current_is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
+
 #if IN_PROPER
 void clocksource_srand(void);
 #else
-- 
2.47.3



