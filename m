Delivery-date: Mon, 24 Aug 2026 14:23:02 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyThd-006hL1-2J
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 14:23:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 448AB20190E
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 14:23:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oxMQwAy9;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RvoLOi88rQmOG0dZph0pvN4dw+Xc8x1VjgXDtb2t/qI=; b=oxMQwAy91DOKKLYdgjTy0KadRT
	xPUn6EOTMNFmNYpwgLwYw+sXqBoXmcFQvB2wtaHcfbailz1rs9cY7pcgOGs7cM6ei4z6VAOmMZA68
	HgW9KPGCUsvhGaQ4HW+GLCkpkr3K/JCLNsg63Rnuo1JX0wvHhfpTKkol7dyovDIojPxt9EnD/Gq9W
	gHotZtCNRSoKueUoCfquHm9QXNcp6fSSVen+PO5+ixHIIPNBMkEGGkKUr5pK61TMJI3UXa3If32BP
	nAxg6Xqzg0RH8spZELeVdMZZI28PVP6L18TeB5/PK0blu+o8cRD8t0PSG+osUMYGkLErONhF4kXGl
	hao+0lEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTgQ-0000000Gary-2cX4;
	Mon, 24 Aug 2026 12:21:46 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTgM-0000000GarP-0fXr
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 12:21:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 27F0A200393;
	Mon, 24 Aug 2026 14:21:40 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTgK-0036Rn-0G;
	Mon, 24 Aug 2026 14:21:40 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTgJ-0000000EwcG-47U7;
	Mon, 24 Aug 2026 14:21:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Jaipaul Cheernam <jaipaul.cheernam@est.tech>
Subject: [PATCH master] scripts: make build compatible with OpenSSL v4.0
Date: Mon, 24 Aug 2026 14:21:06 +0200
Message-ID: <20260824122137.3561601-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_052142_395174_DAFDF3A9 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In addition to normal key files, rkimage supports resolving
    pkcs11 URIs via both OpenSSL providers and engines. keytoc only supports
   engines in addition to keyfiles. OpenSSL v4.0 removes engine support failing
    the build of these two host tools[1]. Define OPENSSL_ENGINE_STUBS[2], so
   the engine functions return errors and the fallback path, if available, is
    taken in [...] 
 
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
X-Stat-Signature: s868ycwr3ommb9kat3ez99p8i5hppdaq
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 448AB20190E

In addition to normal key files, rkimage supports resolving
pkcs11 URIs via both OpenSSL providers and engines.
keytoc only supports engines in addition to keyfiles.

OpenSSL v4.0 removes engine support failing the build of these two host
tools[1]. Define OPENSSL_ENGINE_STUBS[2], so the engine functions return
errors and the fallback path, if available, is taken instead.

Normal key file usage remains unaffected.

[1]: https://autobuilder.yoctoproject.org/valkyrie/api/v2/logs/8469870/rawk
[2]: https://openssl-library.org/post/2025-12-18-remove-engines/

Reported-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jaipaul Cheernam <jaipaul.cheernam@est.tech>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/keytoc.c  | 3 +++
 scripts/rkimage.c | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index e78d01048107..664753ecbbe2 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -10,6 +10,9 @@
 
 #pragma GCC diagnostic ignored "-Wdeprecated-declarations" /* ENGINE deprecated in OpenSSL 3.0 */
 
+/* OpenSSL 4.0 removed the ENGINE symbols; ask for the no-op stubs instead */
+#define OPENSSL_ENGINE_STUBS
+
 #include "include/string_util.h"
 
 #include <stdio.h>
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 8243742d659f..268ce56c1728 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -1,4 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
+
+/* OpenSSL 4.0 removed the ENGINE symbols; ask for the no-op stubs instead */
+#define OPENSSL_ENGINE_STUBS
+
 #include <stdio.h>
 #include <unistd.h>
 #include <getopt.h>
-- 
2.47.3



