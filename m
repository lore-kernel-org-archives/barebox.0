Delivery-date: Mon, 31 Mar 2025 14:50:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbB-006ZRe-1M
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEbA-0008O3-Jl
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ogi2OwmRUGEsMkcaKlXZytrvasgvRk8qUm0FuXXbGHk=; b=rxuXqxiLnfK867zavsBJdz2ts9
	8nLYBdzoDWRuxaduB4Ejps98oiuTR3C9rk1WxfryvENI68g4oituHtly4FLZns1LCz9t35218it4e
	mcp81wQhrdKf59BEr5L/XvX4uqaaMjVd5xvnr/Jlk/Jiu+Z69mY8+i2olbVDmQAuNDjWwLHZxAOKb
	xgJi71CvEmvDppq2X0sKjCj50t0noYC0/TEd+o3DWbq0AxxBJIWjyXSkYoUUP+036VZ9kmwYjsqcj
	SQOmSUOdR/SIPADeBdhejO0WTkbFnqw/DVRdE8vIjlPTj0mnzLC2zMIk7tn8/5YEdGzIns8vfKpIc
	NGTCA93A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEah-00000000OAJ-3iAi;
	Mon, 31 Mar 2025 12:50:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5t-3tgT
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-DW; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:27 +0200
Message-Id: <20250331124932.901033-4-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055006_963093_6F2288AC 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] doc: bootchooser: don't recommend NV backend
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NV storage backend for bootchooser variables is featured rather
prominently, but in fact it should not be used for anything else than
maybe evaluation.

This matches the reasoning of commit 48091deb4b9 ("bootchooser: warn if
NV is used instead of barebox-state").

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index f9763a1fe14..b54e6873bc8 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -13,8 +13,9 @@ and implements an algorithm which selects the highest priority target to boot.
 
 Making *bootchooser* work requires a fixed set of configuration parameters
 and a storage backend for saving status information.
-Currently supported storage backends are either nv variables or the
-barebox *state* framework.
+Currently supported storage backends are either the barebox *state* framework
+or nv variables (fallback only, not meant for production, because it's not
+power-fail safe).
 
 *Bootchooser* itself is executed as a normal barebox boot target, i.e. one
 can start it via::
-- 
2.39.5



