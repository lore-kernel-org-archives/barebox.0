Delivery-date: Tue, 11 Aug 2026 12:14:29 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtjV6-001wgX-33
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 12:14:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 84F6C2006E0
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 12:14:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uma3uh5G;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=meIfZllAOb8wyxNAf3+hqha+bI70AFSKmBrKEvEj6Wo=; b=uma3uh5Gao0BsigrxaKGeV+IOF
	zVswg8idE/j4mNi56OGG5228QCvhicdPC/rqDkbbCCcQiEPK3fmrUROGNNsJOF0CVHlILqxOUKU8w
	r750p9qY50PALJv4q3ML/GZVbXKg+/irxSEy8nGgPFxl0O03UpjN/YXmflMQ3/pEEYnYTad/oTbhm
	z421Jo2KANy8dCGxHn1SxdN2jJYLZ3fWFlGdFabTT1TpYo7krSf4GceB25bwLedOt0v/7uiSXzN22
	4BKHPxEeeN1tebmRZLMkcvKC/0Zbmons4i1xbIjBF/ZQtwLfvH5GPLKBsjGBgHCCrmGckvmOBsRHS
	AqbHzXGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjTx-0000000Dp76-0E92;
	Tue, 11 Aug 2026 10:13:17 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjTq-0000000Dp4a-0puq
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 10:13:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D2AE2017F3;
	Tue, 11 Aug 2026 12:13:06 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wtjTm-000vvu-0E;
	Tue, 11 Aug 2026 12:13:06 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wtjTl-00000004RKN-4B17;
	Tue, 11 Aug 2026 12:13:05 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 11 Aug 2026 12:13:07 +0200
Subject: [PATCH v2 3/3] pbl: introduce HAS_PBL_CLOCKSOURCE marker
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260811-feature-pbl-get-time-ns-v2-3-754ee021b19d@pengutronix.de>
References: <20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de>
In-Reply-To: <20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_031310_407543_8ACF45F7 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This finally enables the usage of the polled timeout functions
    in the barebox pbl with real timeouts for supported architectures. Currently
    only ARMv7 and AARCH64 are enabled. Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- arch/arm/cpu/Kconfig | 2 ++ arch/arm/lib32/Makefile | 2 +- include/linux/iopoll.h
    | 2 +- pbl/Kconfig | 3 +++ 4 files changed, 7 insertion [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: qm58k4t9q6iwixk6bkjtwnkxoi6ryw69
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 84F6C2006E0

This finally enables the usage of the polled timeout functions in the
barebox pbl with real timeouts for supported architectures. Currently
only ARMv7 and AARCH64 are enabled.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/cpu/Kconfig    | 2 ++
 arch/arm/lib32/Makefile | 2 +-
 include/linux/iopoll.h  | 2 +-
 pbl/Kconfig             | 3 +++
 4 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 47c116ea98..684c7eade9 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -82,6 +82,7 @@ config CPU_V7
 	bool "Generic ARMv7 support"
 	depends on 32BIT
 	select CPU_32v7
+	select HAS_PBL_CLOCKSOURCE if !CPU_32v4T && !CPU_32v5 && !CPU_32v6
 
 config CPU_V7VE
 	bool "ARMv7 Virtualization Extensions Support"
@@ -135,6 +136,7 @@ config CPU_32v7
 config CPU_64v8
 	bool
 	select CPU_64
+	select HAS_PBL_CLOCKSOURCE
 
 comment "processor features"
 
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index 67c4f16f76..796ea6c742 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -34,7 +34,7 @@ extra-y += barebox.lds
 pbl-y	+= lib1funcs.o
 pbl-y	+= ashldi3.o
 pbl-y	+= div0.o
-pbl-$(CONFIG_CPU_32v7)	+= arm_architected_timer.o
+pbl-$(CONFIG_HAS_PBL_CLOCKSOURCE)	+= arm_architected_timer.o
 CFLAGS_arm_architected_timer.o := -march=armv7-a
 
 obj-pbl-y	+= setjmp.o
diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index a6fade2a11..d86069f348 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -12,7 +12,7 @@
 #include <clock.h>
 #include <pbl.h>
 
-#if IN_PROPER
+#if IN_PROPER || IS_ENABLED(CONFIG_HAS_PBL_CLOCKSOURCE)
 # define read_poll_get_time_ns()	get_time_ns()
 # define read_poll_is_timeout(s, t)	is_timeout(s, t)
 #else
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 63f29cd613..e5fe5328d2 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -43,6 +43,9 @@ config PBL_SINGLE_IMAGE
 	depends on !HAVE_PBL_MULTI_IMAGES
 	default y
 
+config HAS_PBL_CLOCKSOURCE
+	bool
+
 if PBL_IMAGE
 
 config USE_COMPRESSED_DTB

-- 
2.47.3



