Delivery-date: Thu, 15 Oct 2026 11:24:34 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHhS-00DrNY-0R
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:24:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9D57F200467
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:24:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iQuTPv16;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Lq1UXZ6E;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056273; a=rsa-sha256;
	cv=pass;
	b=OD6PKcVfWUeBO5i86NPvy7442k0uUgAzdx7TegTXhnNs5gI2U1IU1zSAATO9dcNl5dnAYT
	2V8spDucGTdPm2UGLtHGnWXngH52m2+PHPn5nGM+jw6moHMd4LkSCJ+YmISOmKblQmOgc/
	5GPcmbON2Vt8sRn5Gg6+uHSosRMem9VEU17/HdGnRxWqsBGCDYUVWd8oXDHEqfGNjF+ABG
	0nllRmYZfkuca9l83BzsSp4AZI0keT0EBJEkwRZCZIO8Y48Gt6jZqmhY6FD7CBhlT1V48Z
	cvsAgQgbIzOll3hfuAhgyX9PpsvJnxKFiDj/eXdzi5GCZTQTmjZRt3GRksR9QQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iQuTPv16;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Lq1UXZ6E;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056273;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=htu7vuyJGLwKk0IPtJuGaYJLRKFFOn8Wb5OdeNtlH7U=;
	b=ZEogu3EiylIuotBbdOVwA+pj/e//ebfhRQAltWcU0NXTwtFzwvNq4Oqxh+B2Ia6CwcRxyD
	+Da5AEthU8j8jPKSVFnBc26W8Bf0391kGCZFT4gI4wl8iCNeyplbnd8SsNpYBz0EBmL9yL
	KWqLwdKqbWxgu1ouqjw9zzX3uiyveU3rXDYTYeA++ML55wDOAQIO1+sxeTxcxBHLST/uY3
	XvCgH3M/t+00/nrR2OXpJJs5qLqpAtraKymeLY06A0NWpR/5Y3QiNl5eZ4HGet/TrR+j4p
	a21itWOs27Fan4yrApiLIrjlGDuP6u8piMwlfGsycDzMxFbhI7Y3J8Fj0k18DA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=htu7vuyJGLwKk0IPtJuGaYJLRKFFOn8Wb5OdeNtlH7U=; b=iQuTPv16754XlKtkZqWcmAABca
	WIHA3liK4J1jESUB3SCmRZkzyzVLJirx/iK09HgTESAeK85l8wS/0pmgFZsh5Jv1/1jojlzLg+4SA
	5PPH5NgHWCj43zb+QG3QYQZ0q23iNsE/VKBrKR+ogADro5c1fL0lGXlDny7RXTKUx/LJaTGTVPajM
	Ta0U5lRG6Y58lgC791d95yeJneePaAVmbrkoEQppz972EZdWPBx8jX3oN1qpKf23T7kwOgv7NnhIK
	WuA+1N5cc37xoSdiuB+VJW5yugOMFyTwEIqRxNPPVGgoA39h7BQJOK1GVgg1pxCpy18XtrWTrCvoX
	Ae2IHNoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgD-0000000HFWX-02Zg;
	Thu, 15 Oct 2026 09:23:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHg9-0000000HFVQ-0Wxg
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 57E81201BBB;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=htu7vuyJGLwKk0IPtJuGaYJLRKFFOn8Wb5OdeNtlH7U=;
	b=Lq1UXZ6ELIDgS4UPJ1poPA596bA/SsVheVCtyuU2BcdjzJ8U9HlQWKVDW+YOa4MkOImQ44
	JCscjWrbBykLLuMQOrJNPpvc64eDz7/6AzsOoF5N5b3zHqjEx+XkKkjkWZqsxQuPyPcGFe
	QywcpEDuDpCxjz4TqFFa+Q7IWqyCRw0Ooy5HCmuEZG6h47XBy3IIf9XF4BXxZENhHEOMj4
	a6xto/tdqss/H7hYbjsKY7rJ62D1oDEhX54zkRMEnjpK82ZTRmUiAG6ppvlS47GOrRnyAK
	3rWqMkI3zBghyVn1hFWJSKIpfqYS4fGaQmPm5YNEUx/1DQrt1qN/gsxWxNUUgw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=aFeRn3n+32/wX1dRbdOQHknC9mOgrNXkh64bbRBjmIRbDBQwY58XsrJK8nVemW1NuYAlc8
	jZhL+JrkCU2osn7yUVUoxCnp17e4hzhzgylHlk9QMlZDspAf4J4VHdIFlEG0lvCE2XsB5g
	rzxDpwUj7EcjVdLomydhMPkxat1Qed4cuod5kOGZ3FZ2Ys5URizLMZxU6ACRFsrTwBKjw6
	6GWSO6Leli0SD151AiihiGJfftIZ18cN8cb7P8oymw74sbXirNGnUu7oc3VDT+LoXcvtTN
	GJEMOdGGiBqUeea6Dl8wIBZukQDBb8+le2YDQFu3wr7a2p9kx6LxoyKxOEEtTg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=htu7vuyJGLwKk0IPtJuGaYJLRKFFOn8Wb5OdeNtlH7U=;
	b=JCfNG7sDPrhzfyhpO3EiDnjxeH3tHvGpoLNW1czMok3zq8wnfjMDMFVOJakut8Cbwyt9MJ
	J+Zt21lUo+jpOKmFLIiQwgs5Lq5+7Sr4P47/rx0VxB+iGHoOxrrK6U/VnOjmD3QuttCLqH
	ndrJBDV9rcLsqh0XSUIRLX/pvi0CiJA5Xw8x9hva8gpCzbw0NNRwwOaBHe3cKnTxo0zVsO
	fdIvmLZh/NjmJIrD/PcsnX7t7nOPbIeql4DsILE7ZAKl86OYd6m0e3c6wj1YFAt1z6sJXE
	s4dLRKEwnkEh0Ozkuj/pkGq+f9BOayoKIYtH36gl1w++A203b72O0/mAX0qeHA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 41B187409AB;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 00/10] efi: payload: allow passing arguments to UKIs
Date: Thu, 15 Oct 2026 11:18:42 +0200
Message-ID: <20261015092308.146516-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_022313_339578_300412A6 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  UKIs look like a kernel image, but barebox doesn't detect
   them as one, which has barebox treat them as it would treat e.g. an EFI shell:
    An executable it can start, but can't pass arguments to and tha [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9D57F200467
X-Stat-Signature: z7kaj6o38np3h5khbn7y4r8bjkiqdrkg

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

v1 -> v2:
  - New patch "commands: devlookup: honour global.bootm.root_param for -k",
    so scripts can build the root option that bootm would append, e.g. for
    UKIs (Fabian)
  - "common: bootargs: don't leave linux_bootargs dangling after free":
    move from 9/9 to the front of the series, as skipping empty variables
    in globalvar_get_match() made the double free reachable after any boot
    entry
  - "efi: payload: honour bootm dryrun in the EFI application handler":
    move before "always shutdown barebox when booting", so bootm -d no
    longer ends the barebox session at any point in the series; drop the
    commit message sentence that only made sense in the old order
  - "Documentation: efi: describe load options handling": turn the UKI
    note into a paragraph explaining that the Linux bootargs, including
    bootm.appendroot's root=, aren't passed, how systemd-stub treats load
    options with and without Secure Boot, and how to pass root= via
    devlookup -k and global.efi.bootargs.root (Fabian)
  - Rebase onto current next
  - Link to v1: https://lore.barebox.org/barebox/20260826121956.2936414-1-a.fatoum@pengutronix.de/


Ahmad Fatoum (10):
  commands: devlookup: honour global.bootm.root_param for -k
  common: bootargs: don't leave linux_bootargs dangling after free
  common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS
  globalvar: skip empty variables in globalvar_get_match()
  efi: payload: honour bootm dryrun in the EFI application handler
  efi: payload: always shutdown barebox when booting
  efi: payload: pass shell arguments as load options to executed images
  efi: add global.efi.bootargs for bootm'd EFI applications
  Documentation: efi: describe load options handling
  test: py: efiloader: check global.efi.bootargs reaches the kernel

 Documentation/boards/efi.rst                  | 64 +++++++++++++++-
 .../migration-guides/migration-master.rst     | 16 ++++
 Documentation/user/booting-linux.rst          | 12 ++-
 commands/devlookup.c                          |  5 +-
 common/block.c                                |  5 +-
 common/boot.c                                 |  1 +
 common/bootargs.c                             | 15 ++--
 common/globalvar.c                            |  6 +-
 efi/Makefile                                  |  2 +-
 efi/bootargs.c                                | 65 ++++++++++++++++
 efi/loader/bootm.c                            | 27 ++++---
 efi/payload/bootm.c                           | 23 +++++-
 efi/payload/image.c                           | 76 ++++++++++++++-----
 efi/payload/image.h                           |  3 +-
 include/block.h                               |  6 +-
 include/efi/bootargs.h                        |  9 +++
 test/py/test_linux_efiloader.py               |  6 ++
 test/py/test_shell.py                         | 26 +++++++
 18 files changed, 315 insertions(+), 52 deletions(-)
 create mode 100644 efi/bootargs.c
 create mode 100644 include/efi/bootargs.h

-- 
2.47.3



