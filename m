Delivery-date: Mon, 17 Aug 2026 16:14:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvy76-0049o2-0t
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 16:14:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A0CD2200740
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 16:14:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1NVQkEgj;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 198.137.202.133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BX5hWcquE2NQMK+6DPLnDiXkzCM7VdYhz3Y/JLh529I=; b=1NVQkEgj+lvt3vmeB4/7rAjtSv
	UL+nOPbadITMzE5hfeDYDl/hpG+6zHhCDyzjESAxCllFSnJh8n28MNzb4kY5YErgfm13C+eoxLLGY
	FsjgftQjzVXxV4NhqH0nxspNyYAzq17x2cFIaaB8S97vJG5pIx9GMejJN+S2alnqdCRCkNiRlnild
	Nll5qamdIyEQ++Xd3CVKLXXsHTl0i6zccadE16bzgkz8R6YwoyvhlOngc1AYw2prQXjMqyRO8OOzb
	zatL+P0nZC44cGVM8WButLIYxL7tZY+M5cy06ovEVk1LRG1M3ZN4WkcS5Q53p7fDoAK9vTo1D7U3g
	OhZyRkzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu7-00000006G7X-3LWp;
	Mon, 17 Aug 2026 14:01:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu2-00000006G2g-0J9H
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:01:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 05C2A202235;
	Mon, 17 Aug 2026 16:01:19 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-001xrx-2T;
	Mon, 17 Aug 2026 16:01:18 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-0000000F1aR-2bZu;
	Mon, 17 Aug 2026 16:01:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 17 Aug 2026 16:01:19 +0200
Subject: [PATCH v3 8/8] linux/iopoll: enable polled timeouts for
 PBL_CLOCKSOURCE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-feature-pbl-get-time-ns-v3-8-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_070126_287902_35B8C4A8 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This enables the usage of the polled timeout functions in
   the barebox pbl with real timeouts for supported architectures. Currently
   only AARCH64 and MACH_AM33XX is enabled. Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- include/linux/iopoll.h | 6 +++--- 1 file changed, 3 insertions(+), 3
   deletions(-) 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: pownhwgja4dsks1ttd3wiq5riroj93bc
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,198.137.202.133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: A0CD2200740

This enables the usage of the polled timeout functions in the barebox
pbl with real timeouts for supported architectures. Currently only
AARCH64 and MACH_AM33XX is enabled.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 include/linux/iopoll.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index a6fade2a11..21014b73da 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -12,7 +12,7 @@
 #include <clock.h>
 #include <pbl.h>
 
-#if IN_PROPER
+#if IN_PROPER || IS_ENABLED(CONFIG_PBL_CLOCKSOURCE)
 # define read_poll_get_time_ns()	get_time_ns()
 # define read_poll_is_timeout(s, t)	is_timeout(s, t)
 #else
@@ -38,8 +38,8 @@
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
  *
- * We do not have timing functions in the PBL, so ignore the timeout value and
- * loop infinitely here.
+ * We might not have timing functions in the PBL, so ignore the timeout value
+ * and loop infinitely here.
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \

-- 
2.47.3



