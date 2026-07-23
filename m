Delivery-date: Thu, 23 Jul 2026 16:02:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu02-001zBg-11
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B802120271C
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Eq3kIrCy;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=svtXbXcf;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eNVNlHd5olWCVKlV49E3zLQyCKbQyJEhxoyKjNlgUIw=; b=Eq3kIrCyyWsLCdJv+fTP/jkq2f
	tzj0em6bLEPbuUtRAW5nuRgT6CwyLTaqTLwH4DNzLU/n7OtRuVMVfFszTBLr2cmPckQ8O9H83c8cl
	y9+NzF2BtgYpd9gpaHw8P9l5DdAFtWXTDPmqPtqlTxKSvRBgQKnNu0Wg6XRQkTTQ6nVptxtTSSW/M
	vuIvp7SoNABIFaUweVZx8S+rUR5b25nhBbn9SHkkxF02EXThDRuaw/H3UrgizOjGBGc58qbpDLKie
	NfEKa6W7hIRKid5d1bpG/N11/xBa9CC6fTH0ZP/c3h/iP66lnAIo7rGooL9PWIx90RN4SivrDF2It
	EdM65vXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvB-0000000EQOG-46Qk;
	Thu, 23 Jul 2026 13:57:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQMF-2kTY
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C14E44E5F;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 52A24C2BCF7;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=h0SPxAsiJmBBVBf4L6dL/Efe5laeFHNQQ+SpKc9ODHo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=svtXbXcfCn2Mq9Qiiu1+Cc0eOwzB5qt9fX9fWuj395z1AZFTUVl5bh7vv/e+kP9Jr
	 Y05uwnIBDgFHERXGxDz4iHZeuRNUT1NrFBekn7FLVzZjqnBjAfFSa5MQLt1mkrwVkm
	 Iwp7yWiJ6Wfoj56iCLkRFlajS16f8jUmoaywQYcQfJ0nIygo6vLXBwL4viSXqaPZxl
	 A/JuWlhpWvsV9peyzKVnsGjFLfaJJ+hb2M3dDvICZOMUtOUE0QhB28Gnsr9d12LZwM
	 qTNlWWjRcuLa7pSR40HP/GQ+1qXgqCrbwSq63mBlw47AXZ/VYmHlPhGIRquuZqUOwN
	 rfZHZtmKPeZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 406FAC531D1;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:53 +0200
Subject: [PATCH 15/19] commands: integrate fan command into Kconfig and
 Makefile
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-15-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=982;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=jzKm6t654ProfVvQhM73bHTK6q+MqW4e/bsU2NEG7Qw=;
 b=8nXjfeakMqptRVMmj8CQR8nnd7t2yqXa6Zcff64408T4F64PC+wnISnEs+OSxL5mR3GnnyE2h
 vkEZ8wto92oDvDC9z9YyEFJe4hdTDsoupeDMXM38BRR2G11iJw59w/u
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: B802120271C
X-Rspamd-Server: mx1
X-Stat-Signature: gkfb49e3qe16qquyghxa8xab7g6ubitk

From: Luca Lauro <famlauro93l@gmail.com>

---
 commands/Kconfig  | 7 +++++++
 commands/Makefile | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 297c89b4b5..d661f0eaab 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2337,6 +2337,13 @@ config CMD_RKSECURE
 	  The rksecure command allows to retrieve information about and enable
 	  secure boot for Rockchip rk3588 SoCs.
 
+config CMD_FAN
+	bool
+	depends on FAN
+	prompt "fan command"
+	help
+	  Control and monitor target fans.
+
 # end Hardware manipulation commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 2563efb12f..227c40b3f5 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -173,4 +173,6 @@ obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
 obj-$(CONFIG_CMD_VERITYSETUP)	+= veritysetup.o
 obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
 obj-$(CONFIG_CMD_RKSECURE)	+= rksecure.o
+obj-$(CONFIG_CMD_FAN)		+= fan.o
+
 UBSAN_SANITIZE_ubsan.o := y

-- 
2.47.3




