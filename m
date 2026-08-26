Delivery-date: Wed, 26 Aug 2026 14:17:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCZn-007Qk6-2C
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:17:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 46EDD200F1E
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:17:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uCd65YLi;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S+z7RzUMiixsnQJcA3jHinhKCq6OksqB+hKiXS0Z1YE=; b=uCd65YLi2EvN9+u9s/HeJB/q14
	CPPCP5cGPsh1pIxOBuv/RNWOyqPKlvnOdUbJ+iAjQDTHvsK3ufrUgDnipS9s2TGMPLZocsdYCZfnY
	GQk48DVSKGSHuzA1nV+HqDroELrfrRAXGBltoz1ing7b2RLQdOIsn5yrFt6h5tjJvyOpuyCQM7Dxu
	LX464ZnSoHoDu0oK8Y43/nFgTyN8GzyIqgua+VcPlehYl9MWbMjrYd1x8j1Wgy02FdRNAC6yr+IS+
	ZdyX+lnOoElqTaHvbtlCKmD39d+SJUAaBOKaMRqM734ippwhfuxKVEDEKY6Sf7ERNVbqUHvpZw15f
	jxLasTPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYh-00000002PF8-3gSb;
	Wed, 26 Aug 2026 12:16:47 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYe-00000002PDQ-0XT2
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:16:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5A1D520203F;
	Wed, 26 Aug 2026 14:16:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-003RAN-0p;
	Wed, 26 Aug 2026 14:16:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-0000000CJpx-0f3c;
	Wed, 26 Aug 2026 14:16:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 0/4] efi: payload: allow extension via fragments
Date: Wed, 26 Aug 2026 14:15:28 +0200
Message-ID: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051644_319480_7EF5D916 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload,
    because it has no internal DT at build-time and until recently not even a
    DT at runtime. This series adds the necessary bits to have this work the
   same on non-EFI-payload platforms. 
 
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 6js7ti39bueimi7bt7yztfepo1z5chf5
X-Rspamd-Queue-Id: 46EDD200F1E

CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
it has no internal DT at build-time and until recently not even a DT at
runtime.

This series adds the necessary bits to have this work the same on
non-EFI-payload platforms.

@Fabian, can you give this a test?

Ahmad Fatoum (4):
  efi: payload: ignore ESP state.dtb if device tree is populated
  kbuild: dtc: introduce empty fallback device tree
  efi: payload: export device tree in barebox-dtb EFI variable
  Documentation: efi: describe device tree handling

 Documentation/boards/efi.rst | 75 ++++++++++++++++++++++++++++++++++--
 Documentation/user/state.rst |  5 +++
 arch/arm/dts/Makefile        |  2 +
 arch/riscv/dts/Makefile      |  2 +
 arch/x86/Kbuild              |  2 +
 arch/x86/dts/Makefile        |  5 +++
 common/fallback.dts          | 10 +++++
 efi/payload/boarddata.c      | 11 ------
 efi/payload/fdt.c            | 53 +++++++++++++++++++++++++
 efi/payload/handover.c       |  2 +
 efi/payload/image.c          |  2 +
 efi/payload/init.c           | 16 ++++++++
 include/efi/payload.h        |  6 +++
 scripts/Makefile.dtbs        | 10 +++++
 14 files changed, 186 insertions(+), 15 deletions(-)
 create mode 100644 arch/x86/dts/Makefile
 create mode 100644 common/fallback.dts

-- 
2.47.3



