Delivery-date: Mon, 31 Mar 2025 14:50:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEb9-006ZR2-1r
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:50:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEb9-0008MT-0L
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:50:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D1BdpCCagLi28cAXZ7IxDUrEVl4kmhS0lo+qeHVaLTQ=; b=eiveawrE+WGnVLz++MtXcMIr8C
	P77w8v5VghJpfWCIV+v9tcyBphO2iZ86X0khGgNz+pgf2iVxN/GLCgDVXFBcwBCBhyQx4BI1syaiT
	x+fLLYmsjiVH5uy93ATjrnpnfW3QlFhNEz80aOiwkBkurS2Z4US+1rv49zfHB8NckbnHHQ2GuwKT5
	e0ruIsdfVew7yM2y5D3Y9TYBoLkx9gP/OR5TIKEGkNAsa/pciQwgvK0MsM6p4UXM8bMhgPRpVOUt2
	p39yNhyp+B885JkzHkySMhY9b0Wwu5zcwA7cD3QZ7XZVod0u10qqTFofEnm8FlHhifbaZ0XEAI7e1
	ODn4oAbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEag-00000000O9L-1Nla;
	Mon, 31 Mar 2025 12:50:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEac-00000000O5v-3uFf
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:50:08 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzEaa-0007tJ-Fs; Mon, 31 Mar 2025 14:50:04 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Mon, 31 Mar 2025 14:49:29 +0200
Message-Id: <20250331124932.901033-6-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331124932.901033-1-bst@pengutronix.de>
References: <20250331124932.901033-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_055006_965064_AC87C94A 
X-CRM114-Status: UNSURE (   8.41  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] doc: bootchooser: rephrase global.bootchooser.reset_priorities description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index d3469e7480a..01c5c86edb6 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -145,11 +145,11 @@ options not specific to any boot target.
   * ``all-zero``: If the ``remaining_attempts`` counters of all enabled targets
     are zero.
 ``global.bootchooser.reset_priorities``
-  A space-separated list of events that cause *bootchooser* to reset the priorities of
-  all boot targets. Possible values:
+  A space-separated list of conditions (checked during bootchooser start) that
+  shall cause the ``priority``  of all boot targets to be reset. Possible values:
 
-  * empty: priorities will never be reset
-  * ``all-zero``: priorities will be reset when all targets have zero priority
+  * empty: Priorities will never be reset.
+  * ``all-zero``: If all boot targets have zero ``priority``.
 ``global.bootchooser.retry``
   If set to 1, *bootchooser* retries booting until one succeeds or no more valid
   boot targets exist.
-- 
2.39.5



