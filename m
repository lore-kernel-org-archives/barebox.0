Delivery-date: Thu, 03 Sep 2026 18:14:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2A55-00APdK-0J
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:14:27 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H7Kn9+zS;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 98A3F205925
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=idRmAzHNNJp/EcxexZjT8bElT47JjAkgXEqOaWHT6Tw=; b=H7Kn9+zSXXJ20c
	TDkCEWJt9Qc6+gNm21YtKV188R+9j9mRzIRY5hfZETWOq2CqeZdXiZXKHw1gMN2+cEzQhY0tv8N2K
	eCATNAZrLn8tFEagB1Ttr9OtaZkwZF5wcFxdhuoqOgyD//nFfIKzsVrEA46OK5lHImKS0dfEuTdY1
	0H2g2DErwZtu8JXm/MMsajHi61ZQGC2CRrVJefQ+DzEZbizyn25aG8NewULAbmgHAueQk+BzYjlCG
	yZ/Ilm9cNzbXF9N9Sv5RpXGv5KykzBG3fkp93PtYeu0ndixMpg2k7ybUmuvOCoweADhM49nrY2BGd
	tujUjFcFipGj4rW2m2zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3a-000000008Dh-0aVz;
	Thu, 03 Sep 2026 16:12:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3W-000000008Bu-3Vbm
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:12:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F2D90205858;
	Thu, 03 Sep 2026 18:12:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1x2A3O-004mPK-2r;
	Thu, 03 Sep 2026 18:12:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/4] arm: socfpga: iossm: cleanup and fix SDRAM setup
Date: Thu, 03 Sep 2026 18:12:41 +0200
Message-Id: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHmcmWoC/x2MQQqAIBAAvxJ7bkFLjPpKdBBbaw+VuBWB9Pek4
 8DMZBBKTAJDlSHRzcLHXkDXFfjV7Qshz4WhUY1VvWpRDh/i4jDwgzInt6HQeUW0yhttrel6TVD
 qmKgo/3mc3vcDps9sxGkAAAA=
X-Change-ID: 20260903-socfpga-fix-sdram-setup-60c41664791e
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_091251_027679_6AF64C7B 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox needs to wait for PLL lock before starting the SDRAM
    calibration in the EMIF. A developer can configure the PLLs that are used
    for the EMIF at device configuration time. The SDM firmware writes the configured
    PLLs into the handoff data. 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 879mxxsntj5qp46ujczyyio43i7khq8h
X-Rspamd-Queue-Id: 98A3F205925
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

barebox needs to wait for PLL lock before starting the SDRAM calibration
in the EMIF.

A developer can configure the PLLs that are used for the EMIF at device
configuration time. The SDM firmware writes the configured PLLs into the
handoff data.

Up until now, barebox always waited for the EMIF instance 0 PLL A, which
is likely to be the configured PLL, but actually barebox should wait for
the actually configured PLL.

Patches 1-3 are preparatory cleanup for Patch 4, which actually reads
the configuration from the handoff data and fixes the poll for the PLL
lock.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (4):
      arm: socfpga: iossm: remove unused num_port
      arm: socfpga: iossm: fix macro
      arm: socfpga: iossm: refactor register access
      arm: socfpga: iossm: wait for PLL lock from handoff table

 arch/arm/mach-socfpga/agilex5-sdram.c | 11 +++---
 arch/arm/mach-socfpga/iossm_mailbox.c | 72 ++++++++++++++++++++++++-----------
 arch/arm/mach-socfpga/iossm_mailbox.h |  4 +-
 3 files changed, 58 insertions(+), 29 deletions(-)
---
base-commit: a59cb95e1133c7f4844c68398c570694d1c7d9ed
change-id: 20260903-socfpga-fix-sdram-setup-60c41664791e

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



