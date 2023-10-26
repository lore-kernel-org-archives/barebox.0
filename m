Delivery-date: Thu, 26 Oct 2023 16:44:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1bA-004eME-CS
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 16:44:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1b9-0004pV-Ci
	for lore@pengutronix.de; Thu, 26 Oct 2023 16:44:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sogCE6muYupksgjaXS4btfOHPxAyOulYV8N2ATC4IOg=; b=qd4vOYNiaRjxHQZJDziecl8jvQ
	oKK6p1BeJNcv/LT5iF7HDWjq7IOjmAmW2TZ9dBUgMMG+AzGfP5AjVvxYn64hNslOsS9xPt+OsSXmU
	qd18Q+jwtib58UI/ss5rZsmDlKR0qlZ5zXOpDAZX5RU0cb20wvzg0iJFVBCRFVdG32ycPGUHPjCtw
	K+IuOgS+TDsN0y6VHowSx+udh9YIZzKObp/FxXNua9LAakeUzFb2HW2085cBYnPTBkzqfgNaMfQTk
	9eQqFxBVYYDb1EqLdjn4/hfYxL2F8tMzyzarz6dyv86oQ/1rAyfLk58xgmX7Y2JrLlfjVR4IeQpEE
	H3QferNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1a6-00EixT-26;
	Thu, 26 Oct 2023 14:43:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1a4-00Eiwo-0h
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 14:43:29 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qw1a2-0004cg-VC
	for barebox@lists.infradead.org; Thu, 26 Oct 2023 16:43:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 26 Oct 2023 16:43:25 +0200
Message-Id: <20231026144325.4172966-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231026144325.4172966-1-m.felsch@pengutronix.de>
References: <20231026144325.4172966-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_074328_255191_EC895383 
X-CRM114-Status: UNSURE (   7.96  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] scripts: get_maintainers: drop --status enforcement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The status parameter is never used so drop it and stop bother the user
of the script.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/get_maintainer.pl | 2 --
 1 file changed, 2 deletions(-)

diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
index 7c0d50333400..a19c0e7305d0 100755
--- a/scripts/get_maintainer.pl
+++ b/scripts/get_maintainer.pl
@@ -2,8 +2,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 # Dummy get_maintainer.pl script for checkpatch.pl to use
 
-die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
-
 print <<'EOT'
 Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
 barebox@lists.infradead.org (open list:BAREBOX)
-- 
2.39.2



