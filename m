Delivery-date: Wed, 26 Aug 2026 14:21:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdh-007QqU-1O
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9EB5F202101
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Zx0KwaeL;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4FZaPPolH/zU9HEfQlOyVTeolP04hqNYdSVC5C7zT2Q=; b=Zx0KwaeLxUa8OSMwyccgOL58gP
	dxQQ1W+X0l4A034s8UKAMorxTMP9xnfTVNBpT6D48ES/TNaULfXUGB489XKRAKrC1kDhRmhSvKH/q
	0PEdL0iGs8DqVW0cHVCWPPkbXWFRc+LdK5J4+ZOl/t0kPKhiZyPHiHExb3JM4D7HGi3aZdWNO2v8u
	wyMMftA0kf8E/MdPzE2ET08fnaAffUAPWOVakqxWSnUE6andB+zBCvqGDIQ3D2WfxqyG7ShB8+2IW
	7FH9xDJA+3ehigPWlUohmunJH9SAhYpcPEXQkVkLa/XFoPYazSwyEK5bCL6p7VPF16swh7N+FRqRA
	Q+kjAJeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCc6-00000002Pqz-2MUV;
	Wed, 26 Aug 2026 12:20:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbu-00000002PkV-3QsR
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4DB5F20227A;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-003RBJ-0b;
	Wed, 26 Aug 2026 14:19:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbl-0000000CK1K-0LlX;
	Wed, 26 Aug 2026 14:19:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 7/9] Documentation: efi: describe load options handling
Date: Wed, 26 Aug 2026 14:17:11 +0200
Message-ID: <20260826121956.2936414-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052007_759945_8AF27A43 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Document that arguments following an EFI application's path
    on the shell command line become its load options, that bootm populates the
    load options from global.efi.bootargs.* and that the Linux boota [...] 
 
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Stat-Signature: 4br6qied9ewrr7jfxsr7fokis9y8kq3x
X-Rspamd-Queue-Id: 9EB5F202101

Document that arguments following an EFI application's path on the shell
command line become its load options, that bootm populates the load options
from global.efi.bootargs.* and that the Linux bootargs follow for
EFI-stubbed kernels, both for barebox as EFI payload and as EFI loader.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst         | 53 ++++++++++++++++++++++++++--
 Documentation/user/booting-linux.rst |  6 +++-
 2 files changed, 56 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index da50fc8ff6cd..05f040660809 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -110,8 +110,56 @@ means passing control to the calling instance. Note that currently the :ref:`com
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
+.. note:: Unified kernel images (UKIs) are not detected as Linux kernels,
+   but as regular EFI applications. Only ``global.efi.bootargs.*`` is
+   passed to them as load options; the Linux bootargs are not appended.
 
 Drivers
 ^^^^^^^
@@ -281,7 +329,8 @@ it's readable at
 ``/sys/firmware/efi/efivars/barebox-dtb-5b91f69c-8b88-4a2b-9269-5f1d802b5175``,
 where the blob is prefixed by a four byte EFI variable attribute word.
 
-This is not done when barebox acts as EFI loader for the application.
+Unlike the `Load options`_, this is not done when barebox acts as EFI
+loader for the application.
 
 EFI variables
 -------------
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index fa5a355183eb..56a94b890887 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -101,6 +101,9 @@ to the bootargs. Variables without a value are skipped:
 
   Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
 
+When booting an EFI-stubbed kernel as EFI application, the
+:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
+
 .. _bootargs_concat_order:
 
 Concatenation order
@@ -167,7 +170,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
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



