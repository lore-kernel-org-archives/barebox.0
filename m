Delivery-date: Thu, 23 Jul 2026 15:58:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmtwP-001z6y-2p
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 15:58:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 471B1202586
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 15:58:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EZsX2ytD;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IcpRuDr3;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6rjDwcisdCWPiB2/7NxBHXx0Bv1JaE+e4bwxgxdUr/4=; b=EZsX2ytD6ApsdJpAaebPM2aacu
	YIeDJeP2mK3G52uI8G0aTnPG7dfzKFYB7k7jYF7+B4utrgeR1wY0LgR1dIKT4eQJcVy0rvGO7gETN
	OqkEuLX2d+mHqH8VaeNvnWWguT7dulC4JDhExeJQI4I0e+LmsM1NcTX7zx+Rl0ctSPyfcVcdipNlX
	KX5InfUO5gFUMm7JJ/AcAZQhsOBmyAlxuVmjtJIm8mm27YkBsgDrFbTPaY8vwbZBd0xfZAE5pbIzL
	YIrjk+5K19vtGyVv5ds5D6HzKQEBjoV6FQwU7KOyB4OPs9Hg5EWiXGBekScsrl4tnhE8GbkmMJgwU
	72xID8Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvB-0000000EQNJ-1ime;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtv9-0000000EQLO-3lsB
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 58D6943C9B;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3EC11C2BCFB;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815027;
	bh=GQq4LWfoVFFEIhSOne+4aF7yqo2bkwcnF3i+6thvCE0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=IcpRuDr3OQ4+K1DAyN0Pm73PoBeTpisleh25ZSpHZfGppZifkewQpmy5k5SEkTGd8
	 upKo6yt9nbdvyNJb0dzZnGieYcAv6FUHEAIsnSzM/SpDQ0vgGfr0BnnrdLezvAzeY1
	 29+FhfTiKE1altaZlL/L0/V68SQN91gMUOq1wF/HxiKHuvJ7Emf2HUzlsqPZzLzJrs
	 SZmwZeASNyjvPgbpDUPMxi9ffebrZo5oTgwOzH4+HnL0Vpm0QSPmpTb6IAch3G8EZV
	 bo5Mb2smj+agXbCcAVVUIDneld7aQ9CDLYcfrvfE+YQ17aAgm+4b7En+AWqWOS6Emb
	 Ks8O+UywCQ9Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25078C531D1;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:41 +0200
Subject: [PATCH 03/19] ARM: dts: add barebox device tree for Netgear RN102
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-3-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=1349;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=uFtOckTbbjh91vk1pH/ej6wUZ1OyfHb2Ww/x4sEMzTI=;
 b=Yg6VXpUDZys8md4wd6Sfhw13Lfp86AYj7UkBhR1D2hW2S97LjP23Ag+VwStcZnFry6Rstc+0G
 mxWStDpHI0oDhzwidYLyTDPZ/j4Ss9dQlMI+Li6CtelMgr/60AlSCbu
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
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
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
X-Rspamd-Queue-Id: 471B1202586
X-Rspamd-Server: mx1
X-Stat-Signature: qj1w5753a3uwge8xaaecjwi6hmqph37i

From: Luca Lauro <famlauro93l@gmail.com>

---
 arch/arm/dts/Makefile                |  1 +
 arch/arm/dts/armada-370-rn102-bb.dts | 13 +++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a84e09e388..5d1b21b615 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -51,6 +51,7 @@ lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
 lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
 lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o am335x-myirtech-myd-mlo.dtb.o
+lwl-$(CONFIG_MACH_NETGEAR_RN102) += armada-370-rn102-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
 lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
 lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
diff --git a/arch/arm/dts/armada-370-rn102-bb.dts b/arch/arm/dts/armada-370-rn102-bb.dts
new file mode 100644
index 0000000000..0ade2cdd4e
--- /dev/null
+++ b/arch/arm/dts/armada-370-rn102-bb.dts
@@ -0,0 +1,13 @@
+/*
+ * Barebox specific DT overlay for Netgear ReadyNAS 102
+ */
+
+#include "arm/marvell/armada-370-netgear-rn102.dts"
+
+/ {
+	barebox,disable-deep-probe;
+
+	chosen {
+		stdout-path = &uart0;
+	};
+};

-- 
2.47.3




