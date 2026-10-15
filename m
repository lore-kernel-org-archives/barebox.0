Delivery-date: Thu, 15 Oct 2026 11:23:54 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHgo-00DrLg-2L
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:23:54 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3B26E201BBB
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:23:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wghlyepx;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=hQL97CkE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EJYyMoRQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056234; a=rsa-sha256;
	cv=pass;
	b=bbBKX4KqmhCWn+9jTeqH68THu3SpDUOHTdf9hJNaBN0sUloG9szJ0ukZYUroaxtDZdV1sE
	5Aelnn0PZf65q2LkMR3S1QDQxsWHwFxL6dT9mbT8Ickx6rEs4yPWKiSrVk2QI9z0K0Qr2Q
	ZEbESFLfeDGkUmvUmfYPP6qPk9ENjKu0kBPbHOQxpGDUi6fJaIarVP6d28ZTP9dNq8datK
	FblwURZIteMEPeaX+CehveNoWVe+pYYj5rTxJjK4i1dvjNZaJl6n0+kdfJ3R+fin2Js4RT
	HY4GV4UdtFjoV4fyk1MwniL7dZMz4FuL/BxKMLJ8Xh76YJh0bs/lvamZ/fdEaQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wghlyepx;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=hQL97CkE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EJYyMoRQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056234;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=INe4vA8mDkMDAZn0MRkyhPKpTlRKMV5WX8u3r9MHbt8=;
	b=GxrklHnSTYkE+cTbFFt+Inhtd+VTqrXv1GqA/nN3uovkscI/l2ih/kkQKOnLiMhtxtgX8B
	pY/PPUTrFiAk7qWIur8KGXNpHItU0o2z75XCV1h7CbCIJ2wb35PpmnnKAWIAKAHtBnFtyE
	f8oGcSZQ3/4/5hBah7lmuM42Kn0BkE4wIb+/Mf6IkkZAVBQ4qfMb0lwPTNIrgiTLF2qogL
	e8ODflnTTqSSVlRtBNHzxESRujsufIGV6Q/J2ojyG4vJBqSJ9bmw0l1edxfZYwC48aswrD
	QOZVNwdu/f3iDPCCtysc58DDiOnsc/NBhSgXlYM8Ag8SsPqF9a8urVddzVNDmQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=INe4vA8mDkMDAZn0MRkyhPKpTlRKMV5WX8u3r9MHbt8=; b=wghlyepx21xHaVZ7+iJ+j56BPJ
	DPOHgThJL5JOEOF/27N3jOUkUUVil/HReATVhzhzLC99Hs/kmZHjPb4+v2ACEiCp+GNwrAEzmTHYi
	lryv6orRgFhNu6os0l5kLxHlWu5A49ZizjYYbaKTEDLF32M03VmPd/KNodt7o/m47BBLmwnW3Hgve
	NmQdUDHWBJETWq8yEkpmFjot+4cJgdgBZU7l7In1dqo2SnG4dcDRzR/18kpfvIPur5bPXjl+NcFlL
	0MgOwD+/ag3JjXis+LbRletM/iiFKOn22llOayUQfSie8A7EqedfgXEWao1FfO4tYyUEACKv7GNvk
	7ka8BTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgO-0000000HFhy-45cl;
	Thu, 15 Oct 2026 09:23:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgN-0000000HFej-1kOV
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=INe4vA8mDkMDAZn0MRkyhPKpTlRKMV5WX8u3r9MHbt8=; b=hQL97CkEDKrkLYL4BqYD+5NW4n
	zZpEKLnqZ5m56mDOjMouiVtGNbf7FoQr1tnz0GnRasK0A++fmGLVzKC+BdaUy0gQYvHMORHYztik0
	BckUOWO7taGT75qi0UEOcjBeVZcS5wq9hT7dvHr8DcRCepO3Qd28KcnGTLM9UO98dZXNLzUZQq4oC
	uX/mK6Sej85ntpSESwTQBKBUnEE7BOiJEktXQv15My1cz2VAOc2FVIEo6b7MgBLnMBDrSYzdGaEcS
	QGYLEsn2uQwTdJX2UZOZJjBq5m15HnBt9CdVDLF7bQEPhijO/GaVvoWD4o7RpQRMoWzC9O/JDiShq
	jxYf983A==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHgC-00000000AOa-3DDt
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:26 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C1AA12027D5;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=INe4vA8mDkMDAZn0MRkyhPKpTlRKMV5WX8u3r9MHbt8=;
	b=EJYyMoRQA4Uw95oILm/Q2E8oHbnn+KXKcwVMRdHzXw11Ua8Hzf613zzA5eF0qrWKYmcsyX
	TQauwzsaxVH4TSAVdI9kBLIR9yhoLhss/8FUCqc3vEphe3rJIz0U2ofb89erMbBmezu2OE
	pPTO6LRsnJmSvqZLKnV60J3HVObNAtHmuowlKQuGEcUQh/zqTGIN2JGLDfOv3LwSgki4dM
	vpFGF+qrh8v4yZcDmmdEZ9bzWkNelrvXOyd/0gHjwPeP8zp2TeX9MdEQzDT8wQxyhYqaOm
	LThC8OiK0V0tQduyCv1C38uLFXPVbsgPruiShYYfm6G9r3d0RIeoDxMV9E4R3Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=OQRsNvHLxoq42wcUtt0DH+YP5rNdtWgtxioDbpxElbvE4t0s1MqQBgolfih8pFDFatyOTv
	9FAsZZ6u/FBbTLDBRO9+kDupfLuvp+fbwBiF5Jy1ZITNcLnyQEP4kMzsXBhjSPa7itVI3v
	BRfl59PyqwUn1tRgFnR7ZL9ujUURoT9jFXIcgok3lmmh5PSXXEcceUyojaFA3RrD1Z3WPS
	E7jZlNhdapsi6lAkr2jel+egJ+j4+aehgUzTuhj03nm+TcZaaGULGOA0WyKX5YYfU8/QPj
	JZZdSIkxcBqpyuI0OBeSKE68E/cYh2goCz/5fy8HjcGzzzKQsX/FF4b23eyI/Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=INe4vA8mDkMDAZn0MRkyhPKpTlRKMV5WX8u3r9MHbt8=;
	b=Fvsm46tqf1ykRozfDF1/KYk/8D9E6nmIkkuqNmQr0T5bJipxPMCmGKErn7Z0DPH6trQrsr
	AROYNeatIWNHSl90+ZCTWJKbnbiXkheaiEn06eRsMMqTPk1zfWSOVDM+ilUBtRrWpIgXQc
	QIQgXTEEdQFjYXTP5RBie5ZDFcUUiKddHUjmjxyRKOgAAs+xzmBebey9axr+d6RlORfIqx
	tB7jyUy4tozwsfGlq6Gp/tEnu4mki98zSGo64ZZ/A1psnxg9tS1yc3cssbF0QRbY4yb6q2
	Fubi3hKgKrnjbQbNde6gv7w2atTuwMO5VYkK5cyEYW/I+KbZgB/3xqsEI2VEEA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A854D741297;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 09/10] Documentation: efi: describe load options handling
Date: Thu, 15 Oct 2026 11:18:51 +0200
Message-ID: <20261015092308.146516-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102324_283810_70C95003 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Document that arguments following an EFI application's path
    on the shell command line become its load options, that bootm populates the
    load options from global.efi.bootargs.* and that the Linux boota [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3B26E201BBB
X-Stat-Signature: g7xeu5herupt51qhjtfmrx9w33kuqe3q

Document that arguments following an EFI application's path on the shell
command line become its load options, that bootm populates the load options
from global.efi.bootargs.* and that the Linux bootargs follow for
EFI-stubbed kernels, both for barebox as EFI payload and as EFI loader.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst         | 64 +++++++++++++++++++++++++++-
 Documentation/user/booting-linux.rst |  6 ++-
 2 files changed, 68 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 5f7dd60998dc..2dde52bc6665 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -112,8 +112,70 @@ means passing control to the calling instance. Note that currently the :ref:`com
 command will pass the control to the calling instance rather than resetting
 the CPU. This may change in the future.
 
+Arguments following the path on the command line are passed to the
+application as its load options, so an EFI shell can for example be
+started with:
+
+.. code-block:: sh
+
+  barebox:/ /boot/shell.efi -nostartup
+
 Although the Linux Kernel can be directly executed one should use the :ref:`command_bootm`
-command. Only the bootm command passes the Kernel commandline to the Kernel.
+command. Only the bootm command passes the Kernel commandline to the Kernel
+and provides it with an initrd and a device tree.
+
+.. _efi_load_options:
+
+Load options
+^^^^^^^^^^^^
+
+When booting an EFI application via :ref:`command_bootm`, barebox populates
+its load options from the :ref:`global device<global_device>` variables
+beginning with ``global.efi.bootargs.``. Like the Linux bootargs, these are
+concatenated in lexicographical order of their names. For EFI-stubbed Linux
+kernels, the ``global.linux.bootargs.``-prefixed
+:ref:`kernel arguments <booting_linux>` are appended to the load options,
+so that the EFI stub sees both as the kernel command line:
+
+.. code-block:: sh
+
+  global efi.bootargs.base="efi=debug"
+  global linux.bootargs.base="console=ttyS0,115200"
+
+  bootm /boot/vmlinuz.efi
+
+  ...
+
+  Kernel command line: efi=debug console=ttyS0,115200
+
+This works both when barebox runs as EFI payload and when it acts as
+EFI loader for the application. The load options are not used when booting
+x86 kernels via the legacy handover protocol (``global.linux.efi.handover``),
+as the EFI stub, which would interpret them, is bypassed in that case.
+
+Like :ref:`boot entries <boot_entries>` do for the Linux
+bootargs, boot entries should add load options to variables with ``.dyn``
+in their name, e.g. ``global.efi.bootargs.dyn.initrd``. These are cleared
+after each boot entry, so that load options do not leak into subsequently
+booted entries.
+
+Unified kernel images (UKIs) are not detected as Linux kernels, but as
+regular EFI applications. Only ``global.efi.bootargs.*`` is passed to them
+as load options; the Linux bootargs, including the ``root=`` option added
+by ``global.bootm.appendroot``, are not appended. systemd-stub uses
+non-empty load options in place of the command line embedded in the UKI,
+unless Secure Boot is enabled and the UKI has an embedded command line, in
+which case the load options are ignored.
+
+To pass a ``root=`` option to a UKI, have :ref:`command_devlookup`
+generate it for the root partition, the same way ``global.bootm.appendroot``
+would, including the option name from ``global.bootm.root_param``:
+
+.. code-block:: sh
+
+  devlookup -v rootarg -k /dev/disk0.1
+  global efi.bootargs.root="${rootarg}"
+  bootm /boot/EFI/Linux/uki.efi
 
 Drivers
 ^^^^^^^
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 8e6f3bbbe9ce..dc7ac6dc8716 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -103,6 +103,9 @@ to the bootargs. Variables without a value are skipped:
 
   Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
 
+When booting an EFI-stubbed kernel as EFI application, the
+:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
+
 .. _bootargs_concat_order:
 
 Concatenation order
@@ -170,7 +173,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
 boot entries should always add Kernel command line parameters to variables with
 ``.dyn`` in it. These will be cleared before booting different boot entries.
 This is done so that following boot entries do not leak command line
-parameters from the previous boot entries.
+parameters from the previous boot entries. The same applies to the
+:ref:`EFI load options <efi_load_options>` in ``global.efi.bootargs.dyn.*``.
 
 This entry can be booted with ``boot mmc``. It can also be made the default by
 setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
-- 
2.47.3



