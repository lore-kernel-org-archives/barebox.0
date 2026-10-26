Delivery-date: Mon, 26 Oct 2026 13:16:57 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJdJ-003VII-0B
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:16:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E213D200B9E
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:16:56 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WqoEHA04;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AJXJarkO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793017017; a=rsa-sha256;
	cv=pass;
	b=IaTScDclEj/q4Hcj/pZU32WUmjK15CeIDzNk48eSiecgqwrAOsGKxd2tiz2YOhWb0tgrGB
	ffiznHc7N56TTxPQQd8vmvEz3+rM1JjYlXNOBSJr1t7mpLjSna8xW32QMOZCZbtkNvm0lS
	gL0A6opnranMk+8T52yDB+2fF4IyJQFuNBUyJNu2dzMcLF2iLEChdgpRSHKB/nib5Ox+L5
	BqtutwrGxAQQIQnwnfb36GhylffMEykHWvjoI0Xhjlfjcs2lAWcpecF9Iq/AHjq5+u2VUQ
	iWd7gKl2PZcTyX0TO5udnOVTvmaH2f2T3m95Zf7/iPm2BQZ8hJJx0RFE0vXdiQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WqoEHA04;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AJXJarkO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793017017;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dxqCLo3qj7k+Pm/YRKLrMp4PcLHrh33yl29GC2gwjZo=;
	b=TSD5nD2gpoOphL9xMuzXcPsV1el533JTAujfNIQ6pBU0XfgSNezAcNwGbWsy+eQ0A6RGga
	clMQjoL440IYLJy8ILpYt0GgbUVBaVIDapwSnAtnP4xkSIhJUYIoFI3Nrli/5zSm3mqvjz
	oNimaeuI6CbuiHUMiF0tk/7utVqcxd+2sA8Wg2wtL3hh+JIDyLf0XfcONvu6QHV1V9Pr3P
	U7ahjAmODnAVq1xc1IC2ywDX4AtmxlYGG4NYecj/vVwD8vdVN/uAtX4EkOkJ8NkFv4AjZ5
	QsHCIqtmBanjC/B2z3Xt5LddB8FmnqjitvGQXRkyZP2iXIUtYXrVJ8kprmAsuw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=dxqCLo3qj7k+Pm/YRKLrMp4PcLHrh33yl29GC2gwjZo=; b=WqoEHA04R9Qi52LWXYpSGS9Uzp
	HK899PO58RBjqAtXDmycOgqp+bPllKN0LphejwuZQTQQCliiohdUUbNZytwO97D6O8jQi4FYa+QRO
	JLHFHl8KmKXERST9k34k9/TPqNBV5Lx09EAXu8rHApNpKfmt/YC7ovcNd7k/eOAjYo8/voE5uArKR
	qYUKgJJcfk8uqFzJVg9Zecq0u8ZuBHBYEdBHUENEdHbL6bf4Yy4tLmdC4Ju1MYcSXPoEBEeX1AUYV
	j4XI270OUn84/hFYkT9tbYal99V0igwSe/Tx8OiqhqO/cD1FQzH3ynZl0EBn1rVOt5ReawaVs7uqL
	8IVZX1pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYa-00000002TEl-3fqa;
	Mon, 26 Oct 2026 12:12:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYV-00000002TA2-2DB3
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:03 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 72A0C2022DF;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dxqCLo3qj7k+Pm/YRKLrMp4PcLHrh33yl29GC2gwjZo=;
	b=AJXJarkOh11zF762BJF7QtkcoRX9rLV715TUnWDGNxwgv/RUTbTbGnQu/G6WEZFFOyScUU
	F8aLtgjSes4sHWMkyOGqbjIKmTTDnru+SQYSFywtBd+QdxQjJ1ySgsWF62v/ynk6y5n+ag
	8M9YAtAggPhP29GU4vt4d2jvX/rl/xYdxKMFeB5oa2k5lH5SJAVM5aIEGnKwMug1yxbwOC
	Fufier4upiJtwO7e3kZcSfsjIy+oTrM+yUO3/vDeL/euqtYCa3iOP+SIP1YrOC2x85R3vu
	bmjZ3+9VGzYvlnO1J74fgsnqERGUEABA4L5ru5wWL6FdkiGY2ysh8YnUUcljkA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=XQ/2oXhPS9SLCX2eY4WQGkxZYyLY4yWA4Ls3RYqOpxTrzQ34XfGU7mKUUBpBv1Nq3E4EGV
	enziPKeXNOE2FClLLc4wU5vhfAvWiJ4OtdDK5ulq/GHl3LQF6wzl9HjeUfqNiZtYCZmMHY
	JIX8GpE/P75vYuXNsq/jA55yxOT2H4Fj9JR2c3VQ0xoFGq7QcDphJ5CDesIdS24l9Rn7aJ
	xliBdwL0ysEzkv2Da8LZnoQtl0FqDb4cjf/1CtvhgtFEaY/Ic8nIzG7pd/oEC928wsie1A
	ElRv3fhbNbwtf+gx0YLFNlIeyOyn9TZvegFRxsfM0OnXegnZ/9tzzbq7Gzft8g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dxqCLo3qj7k+Pm/YRKLrMp4PcLHrh33yl29GC2gwjZo=;
	b=XouW3FEYJwgyxrKCodXjvhI1ZNjZgfNLY1DVWwDqcpXMrBfrOrP02JW57YgYfCooEhQk6t
	kLyyeP4BnNeyR0M6ZizYS1xqbAsUkNV5MtXNVnA5tlK56G8hVqTXd88T+CCSPC8UNximkU
	3CyJTHsviUp8dCcTmrKTefHeQJIkosT04coE4XsHT+aSK7jq3oaT0j+0QYcogL4QTaV7A6
	j/bPZ+O1yIk0ctuQVi9zPP7ExeBmzJfzp9LLvSfNbY5Xh7waoqTJq7ftgJ/P5HiwPWNOT5
	yq7zdiF4lTCfalF2rTmeQEZmrLyueEYbaL1LLzyqeYqfM7Er6LY2fnJ+chLdOA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 5CF56740A5B;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v3 00/12] efi: payload: allow passing arguments to UKIs
Date: Mon, 26 Oct 2026 13:09:51 +0100
Message-ID: <20261026121150.455510-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051159_752223_94FE58CA 
X-CRM114-Status: GOOD (  15.93  )
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: E213D200B9E
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: f76wzioqfqofytqxd7473nebyjqu5n9c

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

v2 -> v3:
    - New patch "efi: treat EFI zboot Linux images like other EFI-stubbed
      kernels". CONFIG_EFI_ZBOOT kernels were detected as plain EFI
      applications, so bootm passed them no bootargs, initrd or device tree
    - "common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS":
      pass global.linux.mtdparts.* and global.linux.blkdevparts.* even if no
      global.linux.bootargs.* variable has a value. With "globalvar: skip
      empty variables in globalvar_get_match()", they would otherwise be
      dropped after every boot entry. Mention this in the migration note
    - "efi: payload: always shutdown barebox when booting": add a migration
      note, as EFI applications booted via bootm no longer return to barebox
    - "efi: payload: pass shell arguments as load options to executed images":
      print the "Booting ... with options" message for all images, not only
      for EFI-stubbed kernels, and reword the comment on clearing the load
      options of a still loaded driver (Marco)
    - "efi: add global.efi.bootargs for bootm'd EFI applications": simplify
      efi_bootargs_get() with strjoin() and isempty() (Marco), and compute
      the load options only after the dryrun check
    - "Documentation: efi: describe load options handling": note that UKIs
      executed directly from the shell are started like any other EFI
      application, so barebox doesn't shut down before they take over
    - New patch "boot: report exit status of failing boot scripts"
    - Rebase onto current master. The migration notes are now separate files
      under Documentation/migration-guides/migration-master/
    - Link to v2: https://lore.barebox.org/barebox/20261015092308.146516-1-a.fatoum@pengutronix.de/

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


Ahmad Fatoum (12):
  efi: treat EFI zboot Linux images like other EFI-stubbed kernels
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
  boot: report exit status of failing boot scripts

 Documentation/boards/efi.rst                  | 68 +++++++++++++++-
 .../efi-payload-bootm-shutdown.rst            | 10 +++
 .../flexible-bootargs-legacy-fallback.rst     | 19 +++++
 Documentation/user/booting-linux.rst          | 12 ++-
 commands/devlookup.c                          |  5 +-
 common/block.c                                |  5 +-
 common/boot.c                                 | 10 ++-
 common/bootargs.c                             | 32 ++++----
 common/filetype.c                             |  5 +-
 common/globalvar.c                            |  6 +-
 efi/Makefile                                  |  2 +-
 efi/bootargs.c                                | 62 +++++++++++++++
 efi/loader/bootm.c                            | 34 +++++---
 efi/payload/bootm.c                           | 29 ++++++-
 efi/payload/image.c                           | 79 ++++++++++++++-----
 efi/payload/image.h                           |  3 +-
 include/block.h                               |  6 +-
 include/efi/bootargs.h                        |  9 +++
 include/filetype.h                            |  8 ++
 test/py/test_linux_efiloader.py               |  6 ++
 test/py/test_shell.py                         | 26 ++++++
 21 files changed, 371 insertions(+), 65 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master/efi-payload-bootm-shutdown.rst
 create mode 100644 Documentation/migration-guides/migration-master/flexible-bootargs-legacy-fallback.rst
 create mode 100644 efi/bootargs.c
 create mode 100644 include/efi/bootargs.h

-- 
2.47.3



