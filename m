Delivery-date: Mon, 06 Jul 2026 16:14:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wgk5x-000tS8-2L
	for lore@lore.pengutronix.de;
	Mon, 06 Jul 2026 16:14:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 86498201A03
	for <lore@pengutronix.de>; Mon, 06 Jul 2026 16:14:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wt7VihDv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mVe7c2ISGWu5zIIezbpnn347XNoU53NtS8+l6Zk3x/E=; b=wt7VihDvEbReBZwDLJFO7SMKmS
	/lSZnfTWUIB48lEzCZdbafXQITkEsnuUM8THsntTjqTH1CpslPo+hr+xCTvyJm0OchA233qgALqZF
	rRYR6p3oX+I3/x/r/jeVMPyNzPxv75Xpwug9bcJ4W9DSDvF/RHwhaRuozUCQ8pP6eYEK4ua/p1r+D
	XVgvkdYVeBLklVBMNiHPj9BnFmgsxHXXWo5+3fQwF1PdCld4fz2JyEgdAgQ7v1tFabcx/65TZXlcR
	IB/x7ALoTrAzcUID/OnPBJ6Jf0bMHnfdeQMliz0yRXgi72OpP86agOpI9lteNp2nNv7d2Imtxt9rT
	Npb+wLKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgk4h-0000000ChPT-0UBM;
	Mon, 06 Jul 2026 14:13:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgk4d-0000000ChOF-1z9U
	for barebox@lists.infradead.org;
	Mon, 06 Jul 2026 14:13:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E8292019FB;
	Mon, 06 Jul 2026 16:13:23 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wgk4Z-000Q4H-0i;
	Mon, 06 Jul 2026 16:13:23 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wgk4Z-00000009B3M-0RZd;
	Mon, 06 Jul 2026 16:13:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] ARM: multi_v8_defconfig: enable more MMC support
Date: Mon,  6 Jul 2026 16:13:14 +0200
Message-ID: <20260706141322.2185729-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_071327_666198_6B780EC6 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> To prepare testing
    the OP-TEE + RPMB functionality in barebox, enable all the relevant barebox
    MMC drivers and MMC/partitioning commands, short of OP-TEE itself: The OP-TEE
    region is not reclaimed whe [...] 
 
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
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 86498201A03
X-Stat-Signature: zwaj1t8nopzuciugc8p9njzbc7ruj9hy

From: Ahmad Fatoum <a.fatoum@barebox.org>

To prepare testing the OP-TEE + RPMB functionality in barebox, enable
all the relevant barebox MMC drivers and MMC/partitioning commands,
short of OP-TEE itself:
The OP-TEE region is not reclaimed when OP-TEE is not used, so we don't
want to enable it in a common config just yet.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
Please use this to replace following commit in next:

"ARM: multi_v8_defconfig: enable OP-TEE and RPMB support"

This fixes the regression in next.
---
 arch/arm/configs/multi_v8_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 5ea63372d050..fad10669e114 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -84,6 +84,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_BFETCH=y
+CONFIG_CMD_MMC=y
 CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_POLLER=y
 CONFIG_CMD_SLICE=y
@@ -94,6 +95,7 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_FINDMNT=y
+CONFIG_CMD_PARTED=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
@@ -228,6 +230,9 @@ CONFIG_DRIVER_VIDEO_RAMFB=y
 CONFIG_SOUND=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_MMC_GPP_PARTITIONS=y
+CONFIG_MCI_MMC_RPMB=y
+CONFIG_MCI_SDHCI_PCI=y
 CONFIG_MCI_DW=y
 CONFIG_MCI_SUNXI_SMHC=y
 CONFIG_MCI_ROCKCHIP_DWCMSHC=y
-- 
2.47.3



