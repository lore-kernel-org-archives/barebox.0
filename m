Delivery-date: Fri, 04 Sep 2026 10:01:44 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Orn-00AeVn-1U
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 10:01:44 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=bNSzHfpV;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C1C9200700
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 10:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QG0FlMPY31AHfBm1mq0eFqcuzxz6WpQiBZ7uIJ0+42A=; b=bNSzHfpVoCTr3wRd9nmWCZUS/Q
	a6fb8+gQUeqgoS7MwGcRklvHtaGEwwWXj250M4Mo13uzmcRyV+cpR7VJRoKJL1PM0YPM99VxtYFXV
	hA9K3taDGeXKGo5SnbjW/P/wp9OGvS/8yWEDIkxBV5t/1Eh641FCOTukkJghv4gPtCgCHh5WiBV4S
	oLk8EyEzrdPvsjfgRKTVuxMsKTnDjpvVKBicimQQk0mmCzcx2lfXR3F81pbEEGyZy3aqwSFBa3zj2
	nkdtCefoMZ7lHF1AVtbKUA43I1yJyYPOWHJe9BqBGFJvpKuIsJeGWKPyRlgxycG5qV4xRlKsZJplh
	GpRZ9h3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Oqg-00000001Jua-0Jzp;
	Fri, 04 Sep 2026 08:00:34 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OqZ-00000001Jqw-3AAK
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 08:00:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0DA5020592A;
	Fri, 04 Sep 2026 10:00:26 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2OqX-004sj4-36;
	Fri, 04 Sep 2026 10:00:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2OqX-00000000cNK-3aGT;
	Fri, 04 Sep 2026 10:00:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/5] kbuild: disable -Wunused-but-set-variable after -Wall
Date: Fri,  4 Sep 2026 09:59:15 +0200
Message-ID: <20260904080025.147376-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260904080025.147376-1-a.fatoum@pengutronix.de>
References: <20260904080025.147376-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_010027_954318_F2F65B84 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The top-level Makefile
    passes -Wno-unused-but-set-variable before scripts/Makefile.warn adds -Wall.
    GCC keeps the warning disabled, but clang processes options in order and
   re-enables it, failing doze [...] 
 
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
X-Stat-Signature: b9ya8grizkfpoyexwbb3wkwgzmz6xqba
X-Rspamd-Queue-Id: 3C1C9200700
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]

From: Ahmad Fatoum <a.fatoum@barebox.org>

The top-level Makefile passes -Wno-unused-but-set-variable before
scripts/Makefile.warn adds -Wall. GCC keeps the warning disabled, but
clang processes options in order and re-enables it, failing dozens of
files with CONFIG_WERROR=y:

  drivers/video/edid.c:390:6: error: variable 'hfmin' set but not used [-Werror,-Wunused-but-set-variable]

Move the option after -Wall in scripts/Makefile.warn, where Linux'
scripts/Makefile.extrawarn has it.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile              | 4 ----
 scripts/Makefile.warn | 5 +++++
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index be81ac70403d..8762d2ae68b9 100644
--- a/Makefile
+++ b/Makefile
@@ -833,10 +833,6 @@ endif
 # Clear used registers at func exit (to reduce data lifetime and ROP gadgets).
 KBUILD_CFLAGS-$(CONFIG_ZERO_CALL_USED_REGS)	+= -fzero-call-used-regs=used-gpr
 
-# This warning generated too much noise in a regular build.
-# Use make W=1 to enable this warning (see scripts/Makefile.build)
-KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
-
 KBUILD_CFLAGS += $(call cc-disable-warning, trampolines)
 
 KBUILD_CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
diff --git a/scripts/Makefile.warn b/scripts/Makefile.warn
index a39c8223352a..393f7fd522c8 100644
--- a/scripts/Makefile.warn
+++ b/scripts/Makefile.warn
@@ -43,6 +43,11 @@ endif
 # disable pointer signed / unsigned warnings in gcc 4.0
 KBUILD_CFLAGS += -Wno-pointer-sign
 
+# Some diagnostics enabled by default are noisy. Unlike GCC, Clang re-enables
+# them when -Wall is passed later on the command line, so the -Wno... options
+# must come after -Wall
+KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
+
 #
 # W=e and CONFIG_WERROR - error out on warnings
 #
-- 
2.47.3



