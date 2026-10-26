Delivery-date: Mon, 26 Oct 2026 13:16:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJdJ-003VIK-0V
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:16:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0C4982022E2
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:16:57 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SeZGbOZi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=I7MyCpkz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793017017; a=rsa-sha256;
	cv=pass;
	b=NMqhtCThfuEKa+MOkPlKbpmXpfjCZUUzSURAVSmnJV2ujyrYTyJ8nabbEm6QLOsjqmr7OF
	FpzM9uf6E2DgQHOzC3jt83LsAMfx9i/OuEJ36qiz7Mrugn8mu+xsUEQcevVZx+9Uj9W/hO
	c9a35gzY6IEsaghstNAy2WTZjxNsriwyi+Fp6NF8Dpur72kEWR37yMZEeN5iT0MRZWIwd3
	IzEnnJhsRR11s5lJg/CfufJLaDcXq9hGMXPnNquTM39MLjVVQZ5+QAn0Gmg9cDtiRIcDYf
	WJXZtdntlnXNTcO1cmV+5lFEVNPOFYivHh4Tqad0XKI0pl0hxaTVMYoXkUqJvg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SeZGbOZi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=I7MyCpkz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793017017;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=x/xiqjeOgjFXq08WP0btjtkvnNVZmhmkeki5x02HB2w=;
	b=YO5b6h8V1F+D1d3hftpb1HBvc5OStJkbPGjmRNevwKbskil8pH4UAV180/y5ho+P9vsT6X
	5VYxKFNXiR9BwhAErggl/Slcto58ctMW3vFKBpMuLg8HDWlNAcyxTMQG/2vDXyzo9C8Wln
	ZIv6VqoV+FiF3CH3JLgzdMaXb29PhRo8pYNlRrVziIvjxUlo2rJCgy2cU+l21Yd71KYKqr
	8ebFTQUsfzS4cCPd0nPqHMTpRuwG8y96YXcQwboQwNDpif5YacAxcXPPFqwD8u7pNcTiYK
	gfhlsVMkQckJthv6/dOmfkcfT1nFln9/2NzABGjDjqH0k9gWKZfrmolaVnEtyw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=x/xiqjeOgjFXq08WP0btjtkvnNVZmhmkeki5x02HB2w=; b=SeZGbOZi/uKNrg
	G811aAZLS5PahGs+DiCGMkFHTpSrex9E5Hm4Tu23X18iUyXwOgAwTdKqo03ceO/qU0TYP2t+G2o0N
	8fhoDxW4hqUN1AJFt6c4wp2xF2rv10+nsJ0C3U2AgW9nDq3dlQe1+c84rav3y+Y5+vrO7hmttsN+o
	C4HVmgWT4cqVdtlooJGUizSWSlSOWvCWTcIh62ZID+rkLCqqBgJzNPWV/Iwlbnl+jXmd5e1Kk2+vP
	Ab1JQgb8EXooZsROWtQH+H85y+JenrW8ZYB6iAyTeQCCYOO6ThkpKLVNhnoMtwTjHHQaCdN6Phc8S
	+VfheTnz3jYdiO9nsosA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYd-00000002TIG-35YK;
	Mon, 26 Oct 2026 12:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYZ-00000002TC9-3s5j
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:06 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E2EBA2027F1;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x/xiqjeOgjFXq08WP0btjtkvnNVZmhmkeki5x02HB2w=;
	b=I7MyCpkz42iVeOlDebFFiFXv9jYBV6h5R+cdec3kxyJHyJlzqVmKjo4nbGefQ1JlIfdWgc
	z8o+MUCZGsVbt8YtEAM/1yNy9sVuYVNb7IMqD0/oABcaVbkgGTqB4mou0bRuozG9Aeg37L
	OJJ4pMNIOY8DwYYYNzAn6fArBMu5JoGUYwL74jxHgjPw2BOw1BS9RPFSAdoQ2DyzdqxHS+
	eCNdCDSOdmFVmNYlD80dty1H3ZOJNNx/JVD/z2mR6VPigA1wkRuoGqjeVx9EIHiqnhVsyp
	F/qNTiT4OPBvJt3ZuSUjeh/shdZeL3cxYuyYnRyeFguzm0aWNCY2jXDMfJ6mMg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=GocOdCkhMEAeGMv+AWa1XEGEgNxJ1pzgZTje9UUW3OE8SdDHiodB8CbUFA7GG+jDzjglIG
	qP8o4BO7V9WpP+axV6FVnCqUeY2ugO0R33SwfKNs4Yk80APlD1w+Y3y0haQdrmqwOOHHL8
	fxKESKMKG8HEWxC9TEG0nvhdBv3zHv+hyHnXsPrWJBYeGsxho70Gn0xGxQycjtxrbsMhWp
	AVp/wOTi5AM6KVXscj0yTAH2YgDN5/7OJuZc2WlyFp2JbOlwEQDi5qcLfit9PZYQ6nhYUG
	61TZPucaLn+dPvSBrRmImoJXmvKGPcLf5Cf3EacaUbKOUcR6eKJ/WUJvhrMrIQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x/xiqjeOgjFXq08WP0btjtkvnNVZmhmkeki5x02HB2w=;
	b=Ul1TvvSXJe34MUNI4TXADPitWF33C8C4sGY64vQ+ayJReERXFW1KU9LRJBqBPGq4W2rBFg
	1S1A3IahLICDbBoPOoGZ/OoRQncZ/uZGbcUBhar8vsi2uauQ3iSrTxouWa0CGo2VXP7c+9
	Z9Al7HytodUQlt+Pe82UAH+t1qVnwVzGWWYmDM0DZHL3BkafOY6G8yfrEGmj8E5zIsvrpY
	+nhZdvVIF0PzsNEr/48Ca0viQXQC5R/zxOVDPhwtSCj44fKZ2fSQSXo6k2XwE6NqOgaI7F
	Cov9FHuOa7rN68B26N/bJqWQp8WW9qrZ8a9XJcQiUR7SqS8N/Fw5a1GDM608yA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id CA403744100;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 10/12] Documentation: efi: describe load options handling
Date: Mon, 26 Oct 2026 13:10:01 +0100
Message-ID: <20261026121150.455510-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051204_111169_46E2DC38 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Document that arguments following an EFI application's path
    on the shell command line become its load options, that bootm populates the
    load options from global.efi.bootargs.* and that the Linux boota [...] 
 
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
X-Rspamd-Queue-Id: 0C4982022E2
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
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
X-Stat-Signature: jat6gf151s1tdq3mto7z1m1y9whpbziy

Document that arguments following an EFI application's path on the shell
command line become its load options, that bootm populates the load options
from global.efi.bootargs.* and that the Linux bootargs follow for
EFI-stubbed kernels, both for barebox as EFI payload and as EFI loader.

Assisted-by: Claude:fable-5
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst         | 68 +++++++++++++++++++++++++++-
 Documentation/user/booting-linux.rst |  6 ++-
 2 files changed, 72 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 825b9cf9941c..54a32067538b 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -110,8 +110,74 @@ means passing control to the calling instance. Note that currently the :ref:`com
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
+The same holds for unified kernel images (UKIs). When executed directly,
+barebox as EFI payload starts them like any other EFI application and
+does not shut itself down before they take over the system.
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
index 9dbd3880091f..cc6baada6d2b 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -103,6 +103,9 @@ to the bootargs. Variables without a value are skipped:
 
   Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
 
+When booting an EFI-stubbed kernel as EFI application, the
+:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
+
 .. _bootargs_concat_order:
 
 Concatenation order
@@ -175,7 +178,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
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



