Delivery-date: Wed, 08 Jan 2025 12:12:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVTz5-000i5r-2g
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 12:12:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVTz5-0006Js-Nw
	for lore@pengutronix.de; Wed, 08 Jan 2025 12:12:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eQcUMmqglzm2+6yyraffP9ALzJaZjXChNUqDTexGNZ0=; b=RFYZRC0LT8ztW7doj7u1E7iHLJ
	70oBmyOJDUaD3UQNPRyiOV2Z+kNkXGsxOA9cFEy3XE4jTPs3FEoF1dF+q+Eprw2x3N91zF3nHxScx
	+X8ZgZp3lDSHbdagCRfNlblvnqQ5WhXT966fHWmqqy1iP262lc1L3C77q4Lj8rbuXvGoJYd0X8xX3
	vTt355kTogpQkjif9pFBsEqShGvSN0Z/RewdXucfrvKlFWEkJ2FGUdI939ID4SQ9Z8ATWHmkxyaCa
	iwxo/fcroEIbocnsepYRMZaMvo9BwdUxf+ydzsR7KpnZQBg4UdiPyLXuvS2zrB4+GlxE8K7e91eZN
	UlkUGTyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTyX-000000089qs-1kwE;
	Wed, 08 Jan 2025 11:11:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTrL-0000000889t-1mV2
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 11:04:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVTrI-0004VZ-VS; Wed, 08 Jan 2025 12:04:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVTrI-007VHY-02;
	Wed, 08 Jan 2025 12:04:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVTrI-007lXP-2D;
	Wed, 08 Jan 2025 12:04:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jan 2025 12:04:19 +0100
Message-Id: <20250108110420.1850995-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_030423_464639_ABE05012 
X-CRM114-Status: GOOD (  10.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: linux/iopoll.h: add optional PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we don't have generic clocksource support in PBL, there is no
reason to not enable read_poll_timeout for use on platforms that have
their own get_time_ns.

Allow these platforms to use read_poll_timeout by defining two macros:
read_pol_is_timeout and read_poll_get_time_ns().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/iopoll.h | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 9350a3d05007..36a2541eb4ce 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -12,6 +12,18 @@
 #include <clock.h>
 #include <pbl.h>
 
+#if IN_PROPER
+# define read_poll_get_time_ns()	get_time_ns()
+# define read_poll_is_timeout(s, t)	is_timeout(s, t)
+#else
+# ifndef read_poll_get_time_ns
+#  define read_poll_get_time_ns()	0
+# endif
+# ifndef read_poll_is_timeout
+#  define read_poll_is_timeout(s, t)	((void)s, (void)t, 0)
+# endif
+#endif
+
 /**
  * read_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
  * @op: accessor function (takes @addr as its only argument)
@@ -31,15 +43,13 @@
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
-	uint64_t start = 0; \
-	if (IN_PROPER && (timeout_us) != 0) \
-		start = get_time_ns(); \
+	uint64_t start = timeout_us ? read_poll_get_time_ns() : 0; \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if (IN_PROPER && (timeout_us) != 0 && \
-		    is_timeout(start, ((timeout_us) * USECOND))) { \
+		if ((timeout_us) != 0 && \
+		    read_poll_is_timeout(start, ((timeout_us) * USECOND))) { \
 			(val) = op(args); \
 			break; \
 		} \
-- 
2.39.5



