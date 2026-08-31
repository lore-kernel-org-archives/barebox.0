Delivery-date: Mon, 31 Aug 2026 11:49:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0ye5-009EJN-2d
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 11:49:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C426201D27
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 11:49:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="wlsW/3LH";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/wWnnuaN31nvxW7G1ycIAE5Vy7hk3LHfZcNbBhVvWFg=; b=wlsW/3LHOFoNA4kcOjFlAifjIi
	gYPQjkrTvJHUQFIsTGscHe2XcsBXpqjpI+jn9lORV8xNmPnLUqd2iyXXUEtrc9He+nAbmvb54zVFT
	vzFfdA51ohaKak6dlOgoq4q5JNlC/a4UaVFOTv5Bt3WErCdT+Se3DqNToXSPt9+6TqFGacQVA/zXa
	ccmglYl4KiMmCOHMKTuscmRX6yRg57jTXFcZURe2HgUryJ1L4RgPbKAngCCaPT3NlYd7+x89O2IBW
	AS2NO0KxG0M8qkd3tLankpPnZk6xbhmaKUOUzZs4sbNQlbx5C8bQzAewQxRpxHKQTPv9swJ/tyL59
	WxkWk6ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycx-000000093PR-1sc0;
	Mon, 31 Aug 2026 09:48:31 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycv-000000093Nn-104O
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 09:48:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 37233201ED1;
	Mon, 31 Aug 2026 11:48:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-004Ebi-0L;
	Mon, 31 Aug 2026 11:48:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-0000000Bs0g-0Bfm;
	Mon, 31 Aug 2026 11:48:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/4] extend cdev alias support
Date: Mon, 31 Aug 2026 11:48:24 +0200
Message-Id: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOhNlWoC/x3MSQqAMAxA0auUrC20dcSriIsOUYOi0qAI0rtbX
 L7F/y8wRkKGXrwQ8SamY8/QhQC/2H1GSSEbjDKN6kotL3aBeJV2I8vI0uvK6bqrXBsU5OqMONH
 zH4cxpQ85SVZ3YQAAAA==
X-Change-ID: 20260831-usbdisk-aliases-c14b1584b7d0
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788169706; l=1380;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=F2//FuGPWygX2CD1mJFqRvjjAXRMPY4wyJSoXLoG6HM=;
 b=Qt71KIXdqqxFEEDdLxDjPv0EHkecgoUrXk8Y9i/R3eIf5y210MYeWqItKYNpQ1WQIqUVdxAII
 AEw5Nus6PVJDayEK2dbqWiquxbdmzuV8319OtphML2QC6h4bKtaZTq8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_024829_498910_92707BB2 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We recently introduced creating a "usbdisk" alias for USB
   storage devices. This so far was incomplete: The alias was only created for
    the whole raw device, but not for the partitions. As it's usually [...] 
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: fgac3wjbbunzhuhizczuq8494ujb5a6h
X-Rspamd-Queue-Id: 6C426201D27
X-Spamd-Result: default: False [-57.80 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.97%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

We recently introduced creating a "usbdisk" alias for USB storage
devices. This so far was incomplete: The alias was only created for the
whole raw device, but not for the partitions. As it's usually the
partitions one is interested in the alias was rather useless. Also
block devices automatically get an automount point registered under
/mnt/, and here the aliases were not added.

This series fixes both issues. A nice side effect is that GPT partitions
which already have a /dev/diskx.<partname> alias now get an automount
point registered with the same name as well. Just like the aliases in
devfs the aliases under /mnt/ just appear as symbolic links.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      fs: devfs: remove aliases from the list when freeing them
      fs: remove the default automount when a cdev is removed
      fs: devfs: propagate cdev aliases to the partitions
      fs: devfs: make the default automount reachable under cdev aliases

 fs/devfs-core.c  | 145 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 fs/fs.c          |  20 +++++++-
 include/driver.h |   6 +++
 3 files changed, 169 insertions(+), 2 deletions(-)
---
base-commit: 42e510a258d7c276c35f06c103e685c80d376eab
change-id: 20260831-usbdisk-aliases-c14b1584b7d0

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



