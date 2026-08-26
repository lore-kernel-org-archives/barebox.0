Delivery-date: Wed, 26 Aug 2026 14:21:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdX-007Qob-0J
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 90FD4202427
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="RG/fpvX7";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TKUqY2NyPRukyV8bAJrQb8haOSMdKmWGxzIgMIOqGl0=; b=RG/fpvX7avr6S1GYTRb+ou3mFO
	XDBpranacdSJXZBia6X8T2XLpBbTACMFLnPTyfXJskFfL1UUoTDPT57DMF5r4ZIhkWvMsMa7kJiLZ
	6QktL7fzzS1Dxv/gTytE2njZvJtphzyU2c90x2rkfex1CjJCAgWLLdMQJhQtuiC+uaiJ9fXkcdAxd
	xMTsTFUz3mTC5Fcp27NLqF6LIuVWlObw6c8XCMDhXfSS5Qil/n/Uhn2yrdBPgbPmEcqonUyniPz3E
	IyLw3h4WjjTW3/sPVFZsKKmqb6W11s5Ov/dg9U1j3GA7ztNrOjgqZd9sjprkm7SKXtqqAe38UKjw8
	MRtZzwsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCc7-00000002Psi-3IPW;
	Wed, 26 Aug 2026 12:20:19 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbq-00000002Pi0-3GjJ
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E6029201FA9;
	Wed, 26 Aug 2026 14:19:56 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-003RB0-2m;
	Wed, 26 Aug 2026 14:19:56 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-0000000CK1K-3Bvo;
	Wed, 26 Aug 2026 14:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 0/9] efi: payload: allow passing arguments to UKIs
Date: Wed, 26 Aug 2026 14:17:04 +0200
Message-ID: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052003_193044_911A167A 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  UKIs look like a kernel image, but barebox doesn't detect
   them as one, which has barebox treat them as it would treat e.g. an EFI shell:
    An executable it can start, but can't pass arguments to and tha [...] 
 
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
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ahm3h8dcx55qe69jph1ej1kuwz69ium4
X-Rspamd-Queue-Id: 90FD4202427

UKIs look like a kernel image, but barebox doesn't detect them as one,
which has barebox treat them as it would treat e.g. an EFI shell: An
executable it can start, but can't pass arguments to and that it assumes
will return to it when it exits.

This doesn't hold of course as a UKI should never return execution to
barebox.

Additionally, to select a UKI profile, barebox will need to add an @N
(where N identifies the profile by number) as the very first load
option.

This is also enabled by this series.

@Fabian, can you give this a test and see if it works for you?

Ahmad Fatoum (9):
  common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS
  globalvar: skip empty variables in globalvar_get_match()
  efi: payload: always shutdown barebox when booting
  efi: payload: honour bootm dryrun in the EFI application handler
  efi: payload: pass shell arguments as load options to executed images
  efi: add global.efi.bootargs for bootm'd EFI applications
  Documentation: efi: describe load options handling
  test: py: efiloader: check global.efi.bootargs reaches the kernel
  common: bootargs: don't leave linux_bootargs dangling after free

 Documentation/boards/efi.rst                  | 53 ++++++++++++-
 .../migration-guides/migration-master.rst     | 16 ++++
 Documentation/user/booting-linux.rst          | 12 ++-
 common/boot.c                                 |  1 +
 common/bootargs.c                             | 15 ++--
 common/globalvar.c                            |  6 +-
 efi/Makefile                                  |  2 +-
 efi/bootargs.c                                | 65 ++++++++++++++++
 efi/loader/bootm.c                            | 27 ++++---
 efi/payload/bootm.c                           | 23 +++++-
 efi/payload/image.c                           | 76 ++++++++++++++-----
 efi/payload/image.h                           |  3 +-
 include/efi/bootargs.h                        |  9 +++
 test/py/test_linux_efiloader.py               |  6 ++
 test/py/test_shell.py                         | 26 +++++++
 15 files changed, 293 insertions(+), 47 deletions(-)
 create mode 100644 efi/bootargs.c
 create mode 100644 include/efi/bootargs.h

-- 
2.47.3



