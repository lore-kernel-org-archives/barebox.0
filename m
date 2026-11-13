Delivery-date: Fri, 13 Nov 2026 11:01:56 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo6W-00ANhM-1B
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:01:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D0013202266
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:01:55 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oOUfLupz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=bX151p2c;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564116;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=u/46EfjHvs/4fCIF/KLtMTWCRhpwt251h42sZ5VRBO4=;
	b=PNDXSc9Uuz17L4Y+whzRASB4SjfjuHuTrYxu8ED3lZmiv21zKnTlZVSBre/NUZzvSV7ljZ
	8IXNmcOKznNxgcZq+moPQ0+2NUWnS2yHMsZ+eFa4WEuHeBUDrqahphb9e64Ub9gnTtbSg/
	S+II2NGutj463/SB1eFeR9RvStXXr2IG86zTcfPJj8XwKaBKQh5dCM8C4T1eXyBRTi6xSn
	uVYqNvsymNTfydYK0GoV/Iphe2Sal9dJ0WnclSJ7TTCG4k0gDOg6wzxxENFzhUeJjckZAR
	VVwzTyFeTZfAdfriy8h9Obw4swyB3aeuQbou8zmdtKS5+4cdxAGzsvGgumH1Gg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564116; a=rsa-sha256;
	cv=fail;
	b=GnIEl13k875A9I1lobkAlDvh6RhSGUw5CzVLpzalE3IEwExeGXcRt2xME2S+zg2qdiZ8Zh
	xnuGdgkxC9FaOh81n+hjYxg3s2+fbX2J4q1CkvaJKEQZpuX7RRmCqWRvPoGgHqiakb0ok9
	jgGeRSt1MJlLOjkpM6CHTGJQrY4FR2k6JQ8/fQHK7WJJMe22glo0oP8FT8pXf1uPLPqHWq
	e2xdj860O25a30AlV9vMirSCVzDHrQf7ApGVh9aTOl/eEk+Kk1r6Ke5IRx57AZcZSD0Ejh
	cYFg2rSpy4Ggsl7zeX+qXL/fXDhZ/GuBU58iB3hgnPD3VsJ7CXt9J1z8ZwDK1A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oOUfLupz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=bX151p2c;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=u/46EfjHvs/4fCIF/KLtMTWCRhpwt251h42sZ5VRBO4=; b=oOUfLupz2yyBjD
	nAehuVKJ7XK40/if19NjXLK8CVz4qYuA4/pX0OGOTgat+f72yPlISs5iGTfcPshqxxdzhQXjONhrf
	D14WkN752JOk/IVQBoQ4jtg+KC6rYt2EJcXHW3MDIUsU17Qd6nYJzgkpeVDZwsr13bjdvljHnXTln
	xxPHEWnkBFuJuTT+ScMdeUm/JcRolTmSC1TT7HVY5dIIU13qdTMNQBxval3xXWUlagu6XOfqyjRAs
	ZiHHp+0OtsrmFbGZVXaMDmnYgZAqBDXmMJf2lRsTeBKrURpttGujAMuxrOel+aVS4oKZMMGVy6SIG
	JLvmdBWPANxMVNXKO79w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3L-0000000CHWy-3Ofs;
	Fri, 13 Nov 2026 09:58:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3F-0000000CHPy-2oxp
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:36 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0E5A12059B5;
	Fri, 13 Nov 2026 10:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u/46EfjHvs/4fCIF/KLtMTWCRhpwt251h42sZ5VRBO4=;
	b=bX151p2cfJQOEkzGgaB1DAfJ/G41HYzOxbQq1j8rSZDOVHaeocE/yz9joLhRKbE6wNx3L4
	Vpb2Rf7hbs3mHTVToOTWgSoQWdhkzxzV1YmAdlMwoqMCmGUV4WFdWlSQsox0RJKSS4ZP/S
	aKWiPT8c83pM1/1yUic71Jr7EwDymzvaNhAQSLAX0ebOG/Dgb/9/COz9pv5VaiFrgk7q8p
	Uy9Y+jLqqLa43n3snTKKqSJNeEGuZ9pz28y1AydRplmJDBjmZ62aGLVHDUxj/jPv0mBtlg
	E0vM2tWtXd/pM6k5QD81j8456/iD71eJA7HBvxeNds7kTxDiu508yNedqtrPlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u/46EfjHvs/4fCIF/KLtMTWCRhpwt251h42sZ5VRBO4=;
	b=QE/p+jgn21FxVOp1VCNrm5hSfIehGGgJbXu25Dz2/dteZ7FxTcNv0Icw/gAjMcajPI7W+V
	21XPqaJ5eneek+jakqmkeoLw/Q1yQ2JvlNYYsJaYWUrLOlM2Uk/uEHHeP9+ugR3kQCu3uk
	h9Ep8m4m2uiTyk4e534XedVOh3yvzPFD8eOyvWs/orOQ0/UmYOKb5dM0sQrY6id9JCfaBL
	Mnc4uZQD20g/xuF3ZzJ0bZgamvctFsmmp4miksKu+byWOiZKaEUSguahpry7EFCuzgzQym
	VuyFB0DTLMKnI69jZvN1+wSGJYYlgHUZ0jzts5HPqbpQWkyK11JRIE8d+p+2aw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563909; a=rsa-sha256;
	cv=none;
	b=IpoinDTOqhEbcWnAV3Ah1tfQzmX/GqtwTYHUy4cedjGFPwpRt85iZOaUTsIInrfMl0ni42
	0yJoOF6vuYfP8X/PTo2qrFItHRxlLPkMSie/OM4OLAqB7AERwSm1arTNBmkw3b+PE8kyXA
	muXPmyZ+HWmz8w4pzEMc9YO9iZ12IiOh9ulaDas40QxKVH9nXKe8lyXuP+RGKmvboGcPvi
	lrSIZyl4+YR19nylARxK2uUUzhooivtkXUQ8jfk0ypCcyuuhL7pW3ygF7pZET7SzobVEQc
	7ik2Tz9qVIijS2LM962YM3z7z7psoBLuVzuNQIuqlb3mskK5d9cwAtwnG08xog==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 10:58:28 +0100
Subject: [PATCH v2 5/6] boot: implement devboot in C
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-devboot-v2-5-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=29085;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HJUmaSU2mO6kH67Bh33lkTv0VOw0mVGbTP6DUqzF1bg=;
 b=pD+OJiW24Y8N3pkbJee66lGkGoT+jCS57MVcbdkLvbpG1TJ38X/KRLNW4ShsWZGZOalzFBRH2
 fmoBBBy3F9WCpKxRMhP4TpfAS0L+1JJmFSY2xZLY+nS1oLDKHUeXVnF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015834_034657_B54D88D5 
X-CRM114-Status: GOOD (  39.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  devboot is a shell script that brings up the network, sources
    a per-user, per-board script from global.net.fetchdir and translates the
   variables it sets into boot -o options. To boot with it by defaul [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D0013202266
X-Stat-Signature: iimcr79wt5s5uxtf89ezp3x3szhr55z4
X-Rspamd-Action: no action

devboot is a shell script that brings up the network, sources a per-user,
per-board script from global.net.fetchdir and translates the variables it
sets into boot -o options. To boot with it by default, the devboot boot
target wraps it, so booting with devboot means a boot command running a
boot entry that runs another boot command: two levels of boot entries,
with the overrides passed on as a command line assembled by the script
and failures reported by both levels. It also has to be applied to each
boot target separately, as devboot@<target>, rather than to whatever
targets are booted.

All devboot really is, is an option to the boot command. Implement it
in C as such: boot -D, or global.boot.devboot=1 to enable it by default,
does what the devboot script did before booting the boot targets. The
script's changes to the boot related globalvars are reverted after the
boot command returns, as is the working directory. A boot command
started while devboot is active doesn't source the script again, it
inherits the overrides from the boot entry it is started from. Overrides
given with -o still take precedence. With the boot menu, the script is
sourced before the menu is shown and applies to all entries booted from
it.

This makes devboot independent of the boot targets: nv boot.devboot=1
works with any global.boot.default, and doing it in C allows for proper
error handling instead of passing exit statuses through nested boots.

The devboot command remains as a shorthand for boot -D. The devboot boot
target is removed, nv boot.devboot=1 replaces nv boot.default=devboot@...

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../migration-master/devboot-boot-option.rst       |  22 +++
 Documentation/user/devboot.rst                     |  77 ++++----
 commands/boot.c                                    |  27 ++-
 common/Kconfig                                     |  12 +-
 common/Makefile                                    |   1 +
 common/boot.c                                      |   8 +-
 common/devboot.c                                   | 206 +++++++++++++++++++++
 defaultenv/defaultenv-2-base/bin/devboot           |  52 +-----
 defaultenv/defaultenv-2-base/boot/devboot          |   8 -
 include/devboot.h                                  |  31 ++++
 test/py/test_devboot.py                            | 131 +++++++++++++
 11 files changed, 479 insertions(+), 96 deletions(-)

diff --git a/Documentation/migration-guides/migration-master/devboot-boot-option.rst b/Documentation/migration-guides/migration-master/devboot-boot-option.rst
new file mode 100644
index 0000000000..b416f98176
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/devboot-boot-option.rst
@@ -0,0 +1,22 @@
+devboot is now an option of the boot command
+---------------------------------------------
+
+devboot is implemented in C as the ``-D`` option of the ``boot`` command,
+which needs ``CONFIG_BOOT_DEVBOOT``. The ``devboot`` command remains as a
+shorthand for ``boot -D``, so ``devboot mmc`` keeps working as before.
+
+The ``devboot`` boot target has been removed. Configurations booting with
+devboot by default through it, like::
+
+  nv boot.default=devboot@system0
+
+now fail with ``Nothing bootable found on 'devboot@system0'``. Set the
+boot target directly and enable devboot separately instead::
+
+  nv boot.default=system0
+  nv boot.devboot=1
+
+Kernel command line fragments set by the devboot script no longer need the
+``global.linux.bootargs.devboot.`` namespace: all changes the script makes
+to the boot related globalvars are reverted once the ``boot`` command
+returns.
diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index efcfde918c..5a51b0f632 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -5,9 +5,9 @@ Devboot
 
 Devboot is a development convenience that builds on top of the
 :ref:`boot override <boot_overrides>` mechanism. It sources a per-user,
-per-board script from the network and translates it into ``boot -o``
-arguments, making it easy to redirect any combination of kernel, device tree
-and initrd to network-hosted files without touching the boot medium.
+per-board script from the network and takes boot overrides from it,
+making it easy to redirect any combination of kernel, device tree and
+initrd to network-hosted files without touching the boot medium.
 
 .. _boot_overrides:
 
@@ -116,21 +116,32 @@ Override rules
    When secure boot is enforced (``bootm_signed_images_are_forced()``),
    overrides are silently ignored.
 
-The devboot script
-------------------
+Booting with devboot
+--------------------
 
-The ``devboot`` command (``/env/bin/devboot``) automates the override
-workflow for network-based development:
+With ``CONFIG_BOOT_DEVBOOT`` enabled, devboot is enabled for a boot by
+passing ``-D`` to the ``boot`` command or by setting
+:ref:`global.boot.devboot <magicvar_global_boot_devboot>`. Before booting
+the boot targets, the ``boot`` command then:
 
-1. Brings up the network (``ifup -a1``).
+1. Brings up the network, like ``ifup -a1``.
 2. Changes into the fetch directory
    (:ref:`global.net.fetchdir <magicvar_global_net_fetchdir>`, default
    ``/mnt/tftp``).
 3. Sources a configuration script named
    ``${global.user}-devboot-${global.hostname}``. If that file does not
    exist, it falls back to ``${global.user}-devboot-${global.arch}``.
-4. Translates the variables set by the script into ``boot -o`` arguments.
-5. Passes any extra arguments through to the ``boot`` command.
+   If neither exists or the script fails, the boot is aborted.
+4. Takes the variables set by the script as boot overrides. Overrides
+   given with ``-o`` take precedence.
+
+Once the boot command returns, it changes back to the previous
+directory and reverts the changes the script made to
+``global.linux.bootargs.*`` and ``global.bootm.*`` variables.
+
+As boot overrides are ignored when signed images are forced, devboot is
+refused then: the ``boot`` command fails before bringing up the network
+or sourcing any script.
 
 .. note::
 
@@ -144,10 +155,15 @@ Usage
 .. code-block:: sh
 
   # Boot from MMC with devboot overrides
-  devboot mmc
+  boot -D mmc
 
   # Boot from the default boot entry
-  devboot
+  boot -D
+
+``devboot`` is a shorthand for ``boot -D``, so ``devboot mmc`` does the
+same as ``boot -D mmc``. With the boot menu (``-m``), the script is
+sourced before the menu is shown and applies to all boot entries booted
+from it. Listing the boot entries (``-l``) doesn't source the script.
 
 Configuration script
 ^^^^^^^^^^^^^^^^^^^^
@@ -183,26 +199,31 @@ kernel command line fragments:
 
 With this script in place and :ref:`global.user=afa <magicvar_global_user>`,
 :ref:`global.hostname=rock3a <magicvar_global_hostname>`,
-running ``devboot mmc`` on the board expands to::
+running ``boot -D mmc`` on the board is equivalent to running::
 
   boot -o bootm.image="afa-fit-rock3a" \
        -o bootm.oftree="" \
        -o bootm.initrd=":afa-modules-arm64" \
        mmc
 
+from within the fetch directory, with ``rsinit.bind_modules`` added to the
+kernel command line.
+
 This fetches the FIT image ``afa-fit-rock3a`` from the fetch directory,
 discards the FIT's device tree (falling back to the barebox-internal one
 when ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled), and appends the
 ``afa-modules-arm64`` CPIO archive to whatever initrd the FIT already
 contains.
 
-Kernel command line fragments set by the script should use the
-``global.linux.bootargs.devboot.`` namespace. Unlike variables set
-by the boot entries themselves, which are reverted whenever a boot entry
-returns, it survives falling through to the next boot target, e.g. for
-``devboot system0 system1``. The ``devboot`` command removes the
-namespace after the boot command returns, so a subsequent plain
-``boot`` is unaffected by it.
+The script runs only once per ``boot`` command, even if multiple boot
+targets are given, e.g. for ``boot -D system0 system1``. Kernel
+command line fragments it sets apply to all of them. They are reverted
+once the ``boot`` command returns, so a subsequent ``boot`` without
+devboot is unaffected by them.
+
+A boot command started while devboot is active, e.g. by a boot script
+that boots other boot targets, doesn't source the script again, but
+applies the same overrides.
 
 Snippets under /env/devboot/
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
@@ -260,22 +281,16 @@ script is loaded. Make them persistent with:
 :ref:`global.hostname <magicvar_global_hostname>` is typically derived from
 the device tree, but can be overridden.
 
-devboot boot target
-^^^^^^^^^^^^^^^^^^^
+Booting with devboot by default
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-``devboot`` is available as boot entry as well, so it can be used
-wherever a boot target is expected. The boot target to hand the
-overrides to is appended after an ``@``:
+To boot with devboot by default, including the boot on startup, set:
 
 .. code-block:: sh
 
-   boot devboot@system0
-
-This is most useful to boot with the overrides by default:
-
-.. code-block:: sh
+   nv boot.devboot=1
 
-   nv boot.default=devboot@system0
+``boot`` then always boots with devboot, whatever the boot targets.
 
 Forwarding a remote build directory over the internet
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/commands/boot.c b/commands/boot.c
index 8e8afdff9b..d4f7998b96 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -7,6 +7,7 @@
 #include <malloc.h>
 #include <boot.h>
 #include <bootm.h>
+#include <devboot.h>
 #include <fnmatch.h>
 #include <complete.h>
 
@@ -111,11 +112,13 @@ static int do_boot(int argc, char *argv[])
 	struct bootentries *entries;
 	struct bootentry *entry;
 	struct bootm_overrides overrides = {};
+	struct devboot *devboot = NULL;
+	bool do_devboot = devboot_enabled();
 	void *handle;
 	const char *name;
 	char *(*next)(void *);
 
-	while ((opt = getopt(argc, argv, "vldmM:t:w:o:")) > 0) {
+	while ((opt = getopt(argc, argv, "vldmM:t:w:o:D")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
@@ -138,6 +141,13 @@ static int do_boot(int argc, char *argv[])
 		case 'w':
 			boot_set_watchdog_timeout(simple_strtoul(optarg, NULL, 0));
 			break;
+		case 'D':
+			if (!IS_ENABLED(CONFIG_BOOT_DEVBOOT)) {
+				ret = -ENOSYS;
+				goto out_overrides;
+			}
+			do_devboot = true;
+			break;
 		case 'o':
 			ret = boot_add_override(&overrides, optarg);
 			if (ret)
@@ -163,6 +173,15 @@ static int do_boot(int argc, char *argv[])
 		next = next_word;
 	}
 
+	if (do_devboot && !do_list) {
+		devboot = devboot_start(&overrides);
+		if (IS_ERR(devboot)) {
+			ret = PTR_ERR(devboot);
+			free(freep);
+			goto out_overrides;
+		}
+	}
+
 	entries = bootentries_alloc();
 
 	while ((name = next(&handle)) != NULL) {
@@ -214,6 +233,7 @@ static int do_boot(int argc, char *argv[])
 out:
 	bootentries_free(entries);
 	free(freep);
+	devboot_finish(devboot);
 out_overrides:
 	boot_free_overrides(&overrides);
 
@@ -269,13 +289,16 @@ BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting
 BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{image,oftree,initrd}) with VAL")
 BAREBOX_CMD_HELP_OPT ("            ","if VAL is not specified, the value of VAR is taken")
 #endif
+#ifdef CONFIG_BOOT_DEVBOOT
+BAREBOX_CMD_HELP_OPT ("-D","devboot: take overrides from a script in global.net.fetchdir")
+#endif
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(boot)
 	.cmd	= do_boot,
 	BAREBOX_CMD_DESC("boot from script, device, ...")
-	BAREBOX_CMD_OPTS("[-vdlmMwto] [BOOTSRC...]")
+	BAREBOX_CMD_OPTS("[-vdlmMwtoD] [BOOTSRC...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_boot_help)
 BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index da4cc8a5c9..9ce43df88d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -677,6 +677,16 @@ config BOOT_OVERRIDE
 	  Allow overriding of bootm image, oftree and initrd by passing
 	  -o as an argument to the boot command.
 
+config BOOT_DEVBOOT
+	bool "Support devboot"
+	depends on BOOT_OVERRIDE && SHELL_HUSH && BOOTM_OPTIONAL_SIGNED_IMAGES
+	default y
+	help
+	  Add a -D option to the boot command and a global.boot.devboot
+	  variable, which take boot overrides and kernel command line
+	  fragments from a per-user, per-board script in the network
+	  fetch directory. See Documentation/user/devboot.rst.
+
 config BOOTM_SHOW_TYPE
 	bool
 	depends on BOOTM && UIMAGE
@@ -1243,7 +1253,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY
 config DEFAULT_ENVIRONMENT_GENERIC_NEW_DEVBOOT
 	bool "Reusable devboot snippets under /env/devboot/"
 	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
-	depends on BOOT_OVERRIDE
+	depends on BOOT_DEVBOOT
 	help
 	  Extend the defaultenv template with snippets under /env/devboot/
 	  that a devboot script can source: defaults for the image, oftree
diff --git a/common/Makefile b/common/Makefile
index b1045c3acb..054a30a04b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -31,6 +31,7 @@ obj-$(CONFIG_BLSPEC)		+= blspec.o
 obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
 obj-$(CONFIG_BOOTM_AIMAGE)	+= bootm-android-image.o
 obj-$(CONFIG_BOOT_OVERRIDE)	+= bootm-overrides.o
+obj-$(CONFIG_BOOT_DEVBOOT)	+= devboot.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_MEMTEST)		+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
diff --git a/common/boot.c b/common/boot.c
index 271cfd3a29..9919a9a8bc 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -353,7 +353,7 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
 /*
  * Only the first character of a boot script argument is restricted, so
  * that other forms can be added later without changing the meaning of
- * existing targets, e.g. devboot@@mmc0@mmc1 or devboot@[some-condition].
+ * existing targets, e.g. SCRIPT@@ARG1@ARG2 or SCRIPT@[some-condition].
  * Paths and URLs are fine as arguments.
  */
 static bool is_valid_bootarg(const char *s)
@@ -366,8 +366,8 @@ static bool is_valid_bootarg(const char *s)
  *
  * name is either an absolute path or a name relative to /env/boot. A name
  * of the form SCRIPT@ARGUMENT refers to the boot script SCRIPT and has
- * ARGUMENT passed to it as first argument, e.g. devboot@system0 runs
- * /env/boot/devboot with argument system0. A name that exists as-is takes
+ * ARGUMENT passed to it as first argument, e.g. mmc@1 runs /env/boot/mmc
+ * with argument 1. A name that exists as-is takes
  * precedence, so scripts and directories with an @ in their name keep
  * working. An empty SCRIPT is rejected, so that @ARGUMENT doesn't expand
  * to every script in /env/boot.
@@ -552,7 +552,7 @@ static char *parse_nfs_url(const char *url)
  * name can be:
  * - a name of a boot script under /env/boot
  * - a name of a boot script under /env/boot followed by an @ and an
- *   argument to pass to the script, e.g. devboot@system0
+ *   argument to pass to the script, e.g. mmc@1
  * - a full path of a boot script
  * - a full path of a bootloader spec entry
  * - a device name
diff --git a/common/devboot.c b/common/devboot.c
new file mode 100644
index 0000000000..9815c0de29
--- /dev/null
+++ b/common/devboot.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * devboot - boot with overrides configured by a script on the network
+ *
+ * See Documentation/user/devboot.rst
+ */
+
+#define pr_fmt(fmt) "devboot: " fmt
+
+#include <boot.h>
+#include <bootm.h>
+#include <bootm-overrides.h>
+#include <devboot.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <init.h>
+#include <libfile.h>
+#include <magicvar.h>
+#include <net.h>
+#include <shell.h>
+#include <stdio.h>
+#include <unistd.h>
+#include <linux/err.h>
+#include <linux/stat.h>
+
+struct devboot {
+	struct globalvar_scope *scope;
+	char *oldcwd;
+};
+
+static int devboot_default;
+static struct devboot *devboot_active;
+
+bool devboot_enabled(void)
+{
+	return devboot_default;
+}
+
+/*
+ * Find the devboot script in the current directory, preferring a
+ * board-specific over an architecture-specific one.
+ */
+static char *devboot_find_script(const char *fetchdir)
+{
+	const char *user = globalvar_get("user") ?: "";
+	char *board, *arch;
+
+	board = xasprintf("%s-devboot-%s", user, globalvar_get("hostname") ?: "");
+	if (file_exists_type(board, S_IFREG))
+		return board;
+
+	arch = xasprintf("%s-devboot-%s", user, globalvar_get("arch") ?: "");
+	if (file_exists_type(arch, S_IFREG)) {
+		free(board);
+		return arch;
+	}
+
+	pr_err("Neither %s/%s nor %s/%s found\n", fetchdir, board, fetchdir, arch);
+	pr_err("Create one of them and set as needed:\n");
+	pr_err("  devboot_image, devboot_initrd, devboot_oftree\n");
+
+	free(board);
+	free(arch);
+
+	return NULL;
+}
+
+/*
+ * Take over a variable set by the devboot script as override, unless it's
+ * already given on the command line. Unset variables are ignored, while
+ * empty ones are taken over, so that e.g. an empty devboot_oftree discards
+ * the boot entry's device tree.
+ */
+static void devboot_take_override(const char **override, const char *var)
+{
+	const char *val;
+
+	val = getenv(var);
+	if (val && !*override)
+		*override = xstrdup(val);
+}
+
+static int devboot_source(const char *fetchdir, struct bootm_overrides *overrides)
+{
+	char *script, *path;
+	char *argv[2] = {};
+	int ret;
+
+	script = devboot_find_script(fetchdir);
+	if (!script)
+		return -ENOENT;
+
+	path = xasprintf("%s/%s", fetchdir, script);
+	pr_info("Sourcing %s\n", path);
+
+	/* Local variables of the script vanish with the context */
+	env_push_context();
+
+	argv[0] = path;
+	ret = source_script(path, 1, argv);
+	if (ret) {
+		pr_err("%s failed with %d\n", path, ret);
+		ret = -EINVAL;
+	} else {
+		devboot_take_override(&overrides->os_file, "devboot_image");
+		devboot_take_override(&overrides->oftree_file, "devboot_oftree");
+		devboot_take_override(&overrides->initrd_file, "devboot_initrd");
+	}
+
+	env_pop_context();
+	free(path);
+	free(script);
+
+	return ret;
+}
+
+/**
+ * devboot_start - prepare a boot with devboot
+ * @overrides: overrides given on the command line, completed by the ones
+ *             the devboot script sets
+ *
+ * Brings up the network, changes into global.net.fetchdir and sources the
+ * devboot script found there. Changes the script makes to globalvars and
+ * the working directory persist until devboot_finish(), so relative paths
+ * in the overrides are resolved against the fetch directory.
+ *
+ * A boot started while devboot is active, e.g. by a boot script, doesn't
+ * source the script again. It inherits the overrides from the boot entry
+ * it is started from.
+ *
+ * Return: a handle for devboot_finish(), NULL if devboot was not started,
+ * or an error pointer
+ */
+struct devboot *devboot_start(struct bootm_overrides *overrides)
+{
+	struct devboot *db;
+	const char *fetchdir;
+	int ret;
+
+	if (devboot_active)
+		return NULL;
+
+	/*
+	 * Overrides are ignored then, so don't source a script from the
+	 * network only to drop what it sets
+	 */
+	if (bootm_signed_images_are_forced()) {
+		pr_err("Signed images are forced, devboot is not possible\n");
+		return ERR_PTR(-EPERM);
+	}
+
+	fetchdir = globalvar_get("net.fetchdir");
+	if (!fetchdir || !*fetchdir) {
+		pr_err("global.net.fetchdir is not set\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	db = xzalloc(sizeof(*db));
+	db->scope = boot_globalvar_scope_push();
+	devboot_active = db;
+
+	/* global.net.server and global.hostname may be set by DHCP */
+	if (IS_ENABLED(CONFIG_NET_IFUP))
+		ifup_all(IFUP_FLAG_PARALLEL | IFUP_FLAG_UNTIL_NET_SERVER);
+
+	db->oldcwd = pushd(fetchdir);
+	if (!db->oldcwd) {
+		pr_err("Cannot change to %s\n", fetchdir);
+		ret = -ENOENT;
+		goto err;
+	}
+
+	ret = devboot_source(fetchdir, overrides);
+	if (ret)
+		goto err;
+
+	return db;
+err:
+	devboot_finish(db);
+	return ERR_PTR(ret);
+}
+
+/**
+ * devboot_finish - revert the changes of devboot_start()
+ * @db: handle returned by devboot_start(), may be NULL or an error pointer
+ */
+void devboot_finish(struct devboot *db)
+{
+	if (IS_ERR_OR_NULL(db))
+		return;
+
+	popd(db->oldcwd);
+	globalvar_scope_pop(db->scope);
+	free(db);
+
+	devboot_active = NULL;
+}
+
+static int devboot_init(void)
+{
+	return globalvar_add_simple_bool("boot.devboot", &devboot_default);
+}
+device_initcall(devboot_init);
+
+BAREBOX_MAGICVAR(global.boot.devboot,
+		 "Boot with devboot overrides by default, see boot -D");
diff --git a/defaultenv/defaultenv-2-base/bin/devboot b/defaultenv/defaultenv-2-base/bin/devboot
index 1a43246337..fee733247e 100644
--- a/defaultenv/defaultenv-2-base/bin/devboot
+++ b/defaultenv/defaultenv-2-base/bin/devboot
@@ -1,52 +1,4 @@
 #!/bin/sh
 
-devboot_path="${global.net.fetchdir}"
-
-# global.net.server and global.hostname may be set by DHCP, so trigger it first
-ifup -a1
-
-cd "${devboot_path}" || exit 1
-saved_pwd="$OLDPWD"
-
-devboot_script="${global.user}-devboot-${global.hostname}"
-if [ ! -f "${devboot_script}" ]; then
-	devboot_script2="${global.user}-devboot-${global.arch}"
-	if [ ! -f "${devboot_script2}" ]; then
-		echo "Error: Neither ${devboot_script} nor ${devboot_script2} found"
-		echo "Create one of them and set as needed:"
-		echo "  devboot_image, devboot_initrd, devboot_oftree"
-		cd "${saved_pwd}"
-		exit 1
-	fi
-	devboot_script="${devboot_script2}"
-fi
-
-echo Sourcing "${devboot_path}/${devboot_script}"
-source "${devboot_path}/${devboot_script}"
-if [ $? -ne 0 ]; then
-	cd "${saved_pwd}"
-	exit 1
-fi
-
-override_args=""
-
-if [[ -v devboot_image ]]; then
-	override_args="${override_args} -o bootm.image=\"${devboot_image}\""
-fi
-
-if [[ -v devboot_oftree ]]; then
-	override_args="${override_args} -o bootm.oftree=\"${devboot_oftree}\""
-fi
-
-if [[ -v devboot_initrd ]]; then
-	override_args="${override_args} -o bootm.initrd=\"${devboot_initrd}\""
-fi
-
-echo boot ${override_args} $*
-boot ${override_args} $*
-ret=$?
-
-global -r "linux.bootargs.devboot.*"
-cd "${saved_pwd}"
-
-exit $ret
+# hush only splits $* into separate words when the line contains ${}
+boot -D ${} $*
diff --git a/defaultenv/defaultenv-2-base/boot/devboot b/defaultenv/defaultenv-2-base/boot/devboot
deleted file mode 100644
index 4dd0626774..0000000000
--- a/defaultenv/defaultenv-2-base/boot/devboot
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ $# = 0 ]; then
-	echo "usage: boot devboot@<target>, e.g. boot devboot@mmc"
-	exit 1
-fi
-
-devboot $*
diff --git a/include/devboot.h b/include/devboot.h
new file mode 100644
index 0000000000..c33638d83b
--- /dev/null
+++ b/include/devboot.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DEVBOOT_H
+#define __DEVBOOT_H
+
+#include <linux/stddef.h>
+#include <linux/types.h>
+
+struct bootm_overrides;
+struct devboot;
+
+#ifdef CONFIG_BOOT_DEVBOOT
+bool devboot_enabled(void);
+struct devboot *devboot_start(struct bootm_overrides *overrides);
+void devboot_finish(struct devboot *db);
+#else
+static inline bool devboot_enabled(void)
+{
+	return false;
+}
+
+static inline struct devboot *devboot_start(struct bootm_overrides *overrides)
+{
+	return NULL;
+}
+
+static inline void devboot_finish(struct devboot *db)
+{
+}
+#endif
+
+#endif
diff --git a/test/py/test_devboot.py b/test/py/test_devboot.py
new file mode 100644
index 0000000000..f533d7585b
--- /dev/null
+++ b/test/py/test_devboot.py
@@ -0,0 +1,131 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import pytest
+from .helper import skip_disabled
+from .test_boot_globalvar_scope import write_bootscript, globals_now
+from .test_boot_overrides import make_image, booted
+
+FETCHDIR = "/tmp/devboot"
+
+
+@pytest.fixture(scope="function")
+def devboot_env(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_BOOT_DEVBOOT")
+
+    saved = {var: barebox.run_check(f"echo ${{global.{var}}}")[0]
+             for var in ("user", "hostname", "net.fetchdir", "boot.devboot",
+                         "bootm.appendroot")}
+    pwd = barebox.run_check("pwd")[0]
+
+    barebox.run(f"mkdir {FETCHDIR}")
+    barebox.run_check(f"global.net.fetchdir={FETCHDIR}")
+    barebox.run_check("global.user=scope")
+    barebox.run_check("global.hostname=test")
+    barebox.run_check("global.bootm.appendroot=0")
+    barebox.run_check(f"echo -o {FETCHDIR}/scope-devboot-test "
+                      "'global linux.bootargs.extra=extra=1'")
+    barebox.run_check(f"echo -a {FETCHDIR}/scope-devboot-test "
+                      "'global.bootm.appendroot=1'")
+    barebox.run_check(f"echo -a {FETCHDIR}/scope-devboot-test "
+                      "'devboot_local=leak'")
+    write_bootscript(barebox, "devboot-target", [
+        "global.bootm.image=/does/not/exist",
+        "echo target-sees ${global.linux.bootargs.extra} "
+        "${global.bootm.appendroot}",
+    ])
+    write_bootscript(barebox, "devboot-nested", [
+        "boot devboot-target",
+    ])
+
+    yield pwd
+
+    for var, val in saved.items():
+        barebox.run_check(f"global.{var}=\"{val}\"")
+    barebox.run(f"rm -r {FETCHDIR}")
+    barebox.run("rm /env/boot/devboot-target /env/boot/devboot-nested")
+
+
+def assert_reverted(barebox, pwd):
+    after = globals_now(barebox)
+    assert "linux.bootargs.extra" not in after
+    assert after["bootm.appendroot"] == "0"
+    assert barebox.run_check("pwd") == [pwd]
+    assert barebox.run_check("echo [$devboot_local]") == ["[]"]
+
+
+def sourced(stdout):
+    return sum("devboot: Sourcing " in line for line in stdout)
+
+
+def test_devboot_option(barebox, devboot_env):
+    stdout, _, ret = barebox.run("boot -D devboot-target devboot-target")
+    assert ret != 0
+    assert sourced(stdout) == 1
+    # the devboot script's variables are visible in, and survive, each
+    # boot target...
+    assert stdout.count("target-sees extra=1 1") == 2
+    # ...and are reverted afterwards
+    assert_reverted(barebox, devboot_env)
+
+
+def test_devboot_globalvar(barebox, devboot_env):
+    barebox.run_check("global.boot.devboot=1")
+
+    stdout, _, _ = barebox.run("boot devboot-target")
+    assert sourced(stdout) == 1
+    assert "target-sees extra=1 1" in stdout
+    assert_reverted(barebox, devboot_env)
+
+
+def test_devboot_command(barebox, devboot_env):
+    stdout, _, _ = barebox.run("devboot devboot-target devboot-target")
+    assert sourced(stdout) == 1
+    assert stdout.count("target-sees extra=1 1") == 2
+    assert_reverted(barebox, devboot_env)
+
+
+def test_devboot_nested(barebox, devboot_env):
+    # a boot script booting other entries doesn't source the script again
+    stdout, _, _ = barebox.run("boot -D devboot-nested")
+    assert sourced(stdout) == 1
+    assert "target-sees extra=1 1" in stdout
+    assert_reverted(barebox, devboot_env)
+
+
+def test_devboot_nested_override(barebox, barebox_config, devboot_env):
+    skip_disabled(barebox_config, "CONFIG_CMD_CAT", "CONFIG_CMD_MW")
+
+    base = "/tmp/devboot-base"
+    make_image(barebox, base)
+    make_image(barebox, f"{FETCHDIR}/devboot-override")
+    barebox.run_check(f"echo -a {FETCHDIR}/scope-devboot-test "
+                      "devboot_image=devboot-override")
+    write_bootscript(barebox, "devboot-target", [
+        f"global.bootm.image={base}",
+    ])
+
+    stdout, _, _ = barebox.run("boot -D devboot-nested")
+    barebox.run_check(f"rm {base}")
+
+    assert sourced(stdout) == 1
+    # relative to global.net.fetchdir, which is the working directory
+    assert any("'devboot-override'" in line for line in booted(stdout))
+    assert_reverted(barebox, devboot_env)
+
+
+def test_devboot_dryrun(barebox, devboot_env):
+    stdout, _, ret = barebox.run("boot -D -d devboot-target")
+    assert ret == 0
+    assert sourced(stdout) == 1
+    assert "Would run /env/boot/devboot-target" in stdout
+    assert_reverted(barebox, devboot_env)
+
+
+def test_devboot_missing_script(barebox, devboot_env):
+    barebox.run_check("global.hostname=nohost")
+
+    stdout, _, ret = barebox.run("boot -D devboot-target")
+    assert ret != 0
+    assert any("Neither" in line for line in stdout)
+    assert not any("Booting entry" in line for line in stdout)
+    assert_reverted(barebox, devboot_env)

-- 
2.47.3



