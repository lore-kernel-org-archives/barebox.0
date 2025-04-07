Delivery-date: Mon, 07 Apr 2025 09:56:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLi-009Sox-1S
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:56:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLh-0003lD-SU
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:56:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hFzy/t9C1Zh86eheV2zdm6326yVtQ0v341AUnhtrn0g=; b=O9kbhoSTlYdep6UQr87OB+D2Sh
	ErNr+bDfYc2je3Al3KyElIryfX3sPz+GP8hRs/CoZ0OuuBTT4GA8/zgmWOHIMaisa0FcR37Wej9xP
	iwsvdD90K4pRuT7PaZqXUhVt3aigSRSQRBRHl7zZjNoCttB8LquQdT9mHDmmFhBiEwQADpRneO1RB
	e4ZFAL1M+Gr/rXd0QwmLbqxLcDnN3+MHYUKst9lndOZo0Wh4oZiROVawNCYoIO8AdmEhp1b5rR7no
	LCqZWCD7AhrlqpZ8SFkJJWEJoNrRTy9/zy4pK2GEpYtxHq0/s5eNxJwVf2uq8WU3rsxApHBNkF+fd
	a3ymxPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hLA-0000000Gt6Z-1j2k;
	Mon, 07 Apr 2025 07:56:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gvd-0000000GmPU-2PL3
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:29:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-0008CJ-Rr; Mon, 07 Apr 2025 09:29:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-003ilG-27;
	Mon, 07 Apr 2025 09:29:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-004aOW-1r;
	Mon, 07 Apr 2025 09:29:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 07 Apr 2025 09:29:52 +0200
Message-Id: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPB+82cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEwNz3aLEkgLdtMyK1GJdE2OLxBRzQ4MkM4s0JaCGgqJUsARQfXRsbS0
 AwB5JoFwAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744010993; l=778;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CRueYaF57dVowQQV/5QTBqrXH1WNII4xKRbvxMEryX0=;
 b=ywasQbeCMC02DEVDcNFRKUJnF1hShCgJX4Tju13lqMu6BQno2uum4yz8Iw0epEw0KT91f1sqP
 4VYqWppfMmIDti6NrOuZq7FDeFUQSL0acgC0oVOCJcAKH9dbj1/0xRe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_002957_621946_F0CF687D 
X-CRM114-Status: UNSURE (   7.04  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] ratp: fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ratp commands have a wrong alignment on X86 sandbox builds which
currently breaks the allyes sandbox build. Also the ratp commands are
placed in a readonly section, but are nevertheless modified. This series
contains fixes for both issues.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      ratp: Drop wrong alignment annotation
      ratp: do not export ratp command list
      ratp: make ratp commands const

 common/ratp/ratp.c | 37 +++++++++++++++++++++++--------------
 include/ratp_bb.h  | 10 ++--------
 2 files changed, 25 insertions(+), 22 deletions(-)
---
base-commit: b4c0c4615ace1795aa75ced21caa1e78b665cde0
change-id: 20250407-ratp-fixes-438ad710b68f

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



