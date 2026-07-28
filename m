Delivery-date: Tue, 28 Jul 2026 19:44:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wolqd-003rnQ-13
	for lore@lore.pengutronix.de;
	Tue, 28 Jul 2026 19:44:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B13F22021AA
	for <lore@pengutronix.de>; Tue, 28 Jul 2026 19:44:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Zr/aVcPq";
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UXNkzAW5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SmoBBarZRf9i9dCe+7e6oxuOTAwXAZZv1L4iIctqnP0=; b=Zr/aVcPqzqcJ7BDDY41qhloirR
	AEBI3nzAmpcPjzQ8wJ4tyB5ZZGB+1nmppT0aMJkOu9T2GyiXwZqHVUaKQ/AMEmpAhqk+HAeuBA6tL
	atDM20ytH0k0T3CtwTnoqY2lYp9+C5OFAjVc6GANJHXwEqItrj8LQrat9/39ubP/ABQL03NZq8yUT
	VDONaR29BuuTOR6WQFPsxsXlX/Q7aRXtLHem0K0Q67yYZuF2GeRGJVoD2xg9dKdfFZ4/A0wk7QPfc
	RuzmbQS80rl5Tala7WPqFg9SlD/WERD9JJ+YvtDQP4e/IkUvJHA7cxUHSwkUhf3G04OapRduAf5qR
	AoP0GoCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolp9-00000006133-3nlQ;
	Tue, 28 Jul 2026 17:42:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolp8-0000000611O-07AK
	for barebox@lists.infradead.org;
	Tue, 28 Jul 2026 17:42:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B785F43D68;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98B9EC2BCFA;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785260557;
	bh=WmRd1WLFd1txOO8Wy9ngm7B/UaPb3N9s80uWT0nAuYw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=UXNkzAW5csARSaLxWYLwEXHy/bsFtsu1ZO3bpc+oLdz0EO1gOodhbUbQklelFHyXy
	 vHh+8KHfjAuF4zw24kZQfHOrK9DGvj71O7PRTRF0Ral60FHY8c/V6GtDQfEZBmFpq3
	 IK8v+/MCqH/FnB7Om1WT+ateMKr4QmNTYOlwb/igxvlz90gE4l40GjZfroLwv1MD/y
	 QXUHwxKrtkZWZzQ2WVWCcbCZ5WMmWhm5c6qECOfE3mCDj91IIhdfDioDvt++tY7uXt
	 fS/lhRmCxn+vV8t9Z6TR+ZxTzfmVFT1BYkp4bxF4+HVSdTtZpJcQvp20YP4x5iM91c
	 MgBS8bq8JfC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 883BAC54F4D;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Tue, 28 Jul 2026 19:43:19 +0200
Subject: [PATCH v2 07/10] commands: integrate fan command into Kconfig and
 Makefile
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260728-rn102-rn104-series-v2-7-ae31f55b7bc8@gmail.com>
References: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
In-Reply-To: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785260594; l=1033;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=GyBCPKHMAyyNfO60SgS3yJy1KUzJgl7i8GWidDCXKR4=;
 b=mNeRQ+E1v8Hk+PDCF28Obqe42ijR4MyeJu8fXU3yw/KKHprU4MCB1txsYNKalA5w2juPHigtw
 4GMy6Or2glBAVQVS38CMb3S5g4A6w5x2nHnSph7pFUwqCWIb71b3xrv
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: gww1dcpbkpaxptcm68gaynd6rf1a4jej
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: B13F22021AA

From: Luca Lauro <famlauro93l@gmail.com>

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
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




