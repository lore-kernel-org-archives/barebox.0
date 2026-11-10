Delivery-date: Tue, 10 Nov 2026 22:30:07 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQtPq-009UJf-2x
	for lore@lore.pengutronix.de;
	Tue, 10 Nov 2026 22:30:07 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1D753201BFB
	for <lore@pengutronix.de>; Tue, 10 Nov 2026 22:30:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eYqwLEB8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794346203;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=yOlbv5VkjfdF25YP3t0SxZhFewxCrMzJZnlmcw6kMMY=;
	b=NPFegZuSC5WPnO62oZ6pqFLsxKnHGkIbg54ubfYsN8VHXyPAaW0Dt5WHNe36orHm+pw6z8
	AtMzOOifinbJKU4eCGUQsqcWHlfmfeOxVM2PvzWxF4toasiiqfUhE6dX/3aK0SVW4c525I
	nKGbtCtqkcHuBkXUFBhkNoJelh+MGF/3MsRDY1pTjewncQNoce3AORAMgWAo1S2ptZKkOh
	f/ZD5BD+nkWUhUI4H8+1hNu1pW6pokXuWSjx3GErBwI5nktsTGUAv2+cC7Vtjyf4axPP8i
	6JEez/cSwaFmdBegGoOBx+Yedi7VAQZZoJQXHlvAfpGo5nrh70QDo6YLd890DA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794346203; a=rsa-sha256;
	cv=none;
	b=Wm0YNzxCZRD81xc5/IOvFO7dq9/Dc+QU0OZd9J/yaM0SzUpsT76t6/aR8GtHdQ3gtadX3s
	Z43qT7oBm3NFYYQT8lXHH/cSsHLQL22FiUBLu5P1v50GNu30tgFacPI8aczKxS9MF3n9a7
	OkA401aZIjE3p9ivpSJQWMYR7Y3l3VryO7nyZfdYU5ruW0lHB0VidhQZMDzxu6VJNdu+Ro
	NT2PlRfL2FSieBi7JpNneaFkk8qrgB0d4Q2fLVTVnFE8h+YRCc+QMhfCnZHTboX8/R0B65
	Jx1VwWO3q9CJwh5sUpYuzsAWNw2/YvuA+9l7gmtC2zmoVhkvrTuQ3zrwnmkEJA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eYqwLEB8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=yOlbv5VkjfdF25YP3t0SxZhFewxCrMzJZnlmcw6kMMY=; b=eYqwLEB8Y7dMIu
	vqvzWWiVBNSFGMjma6v9+LnKjg1EIHAtAd+6kNnS2dWwIaiJyNs3VvBOGbys7Qku2SSFDOVtB0uEc
	pLscaJ/c7BdBgpyA3tT9F8SVmrbbfvWtSUNtT9WN2TguIMGuElftzbeNjku/BORLw5MDoOce1rLq7
	NqSykDQqBkOpOE9/krJF+P58Nn5hOVomp6LPJs875ztNYBYTyczwdafXqPCXuDilbfJhDrOdgNGeT
	rx9gXhQMC8siqX+J9zydpPyDx8kVFRmOpXiQrXQ7VvscrfGTUCEBs8wLQF3vm5l0WgFhmf3YxRnSf
	WTHyWry/KErHbLvt+myg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQtOa-000000053Ip-0OUD;
	Tue, 10 Nov 2026 21:28:50 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQtOX-000000053Hs-05el
	for barebox@lists.infradead.org;
	Tue, 10 Nov 2026 21:28:46 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.18.1/8.18.1/Debian-6) with ESMTP id 6AALSik1029743;
	Tue, 10 Nov 2026 21:28:44 GMT
Received: (from akurz@localhost)
	by blala.de (8.18.1/8.18.1/Submit) id 6AALSiji029742;
	Tue, 10 Nov 2026 21:28:44 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Subject: [PATCH v2 1/2] ARM: boards: kindle mx50/mx6sl: remove bootm -c option
Date: Tue, 10 Nov 2026 21:28:41 +0000
Message-ID: <20261110212842.29724-2-akurz@blala.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261110212842.29724-1-akurz@blala.de>
References: <20261110212842.29724-1-akurz@blala.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_132845_365029_3D1CD890 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Support for the bootm -c option has been dropped with the
   2026.10 release. Remove it in the boot scripts as well. Fixes: 93e0ed81f13a
    ("commands: bootm: remove -c and -s options") Signed-off-by: Alexander Kurz
    <akurz@blala.de> --- .../boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
    | 2 +- .../boards/kin [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[blala.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1D753201BFB
X-Stat-Signature: hatby3srw6poekrkur4yahgfnun9cy8e
X-Rspamd-Action: no action

Support for the bootm -c option has been dropped with the 2026.10 release.
Remove it in the boot scripts as well.

Fixes: 93e0ed81f13a ("commands: bootm: remove -c and -s options")
Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 .../boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel   | 2 +-
 .../boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
index b8d93be593..3109f137bf 100644
--- a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
@@ -12,4 +12,4 @@ armlinux_system_serial="$global.board.ocotp_serial"
 
 global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 rootwait ro"
 
-bootm -c /dev/mmc2.kernel
+bootm /dev/mmc2.kernel
diff --git a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
index 518110b8fd..5d451276e2 100644
--- a/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
+++ b/arch/arm/boards/kindle-mx6sl/defaultenv-kindle-mx6sl/boot/mmc_kernel
@@ -8,4 +8,4 @@ global.bootm.boot_atag=true
 global linux.bootargs.dyn.log="log_pos_goal=0x8fff0000"
 global linux.bootargs.dyn.root="rootwait root=/dev/mmcblk0p1 ro"
 
-bootm -c /dev/mmc1.kernel
+bootm /dev/mmc1.kernel
-- 
2.39.5



