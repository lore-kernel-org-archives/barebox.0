Delivery-date: Fri, 13 Nov 2026 08:25:29 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRlf7-00AL13-1O
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:25:29 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 812C22023BD
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:25:28 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Dn9kWiB2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NcA6evKj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554728;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ABSDQs0ecAIaU0VaDFuu1fQcLMVSydx20MCh5k1V4mI=;
	b=Uy1dKgG6cD2R8X/Swbar9BwJwn2i+v/W8qCn+bLgohsbkR80yQqqZnVyvJm1j76R9mbAxt
	huqnhp0ED42mq9Tryed3atcVZdSnWaSp/2hA0bC6UMRLnJq+dMKPD7BiNjJBYqtXzFUOw0
	JyJ58Iq0YAABA4fPXhJJ7vQh1N67hzswfkqabZACF+ZAXp/X2Ls0+KUMGkavyU+x+ohCEH
	5PH8z3Jpu5tlp4rUGM9r0FntLIcTwQ4t6Q1UYZS3BfoTP6Uavv7+41Upsw2Q94IBdzqOyP
	AqejVcMgu7NAxrSMJ+QntDGxuih9MZXIciOU5OLuAQLs3qz5DWES47B3GM9bmQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554728; a=rsa-sha256;
	cv=pass;
	b=UcSX5cimgiMXXpSGhQqN5U1exrn/2o9O011zynFlBUwLFWNqEGP9Nj0PIwuX478SMNPZ5p
	fyJrr4fvVToyRSYwl07ZO6ERXAKpooI1CMEL+qqc5mrJxZzif0RfcWLcNUQRC0kTqvAwUw
	n307giPWxPDppgDKQu2n7NB2I524/No/zIA9ToFutsoiWGzcH53AeHs7nAcXCSWcCgdxt1
	QeWhrTuH8kmYX3qLVehK4lJKKNDLhqeg6c3O5qqULS7LlGnO0p2WnX70xaMZaptDA9yU8q
	fFEj+bdbjb4aUH9X8ni7NlmqkDtuBLgkW+DJ5I5KJ3ot0ARxW2z7y6mhUsyJUA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Dn9kWiB2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NcA6evKj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ABSDQs0ecAIaU0VaDFuu1fQcLMVSydx20MCh5k1V4mI=; b=Dn9kWiB2lRG6DKYhxOAiG+dSfM
	bJ3CEqItsdgi8Pdt7nEyAMVGcv3Lr65Zvo29OLEzDxCvXemnpRr8zG5vh2m2gPCoQzMZXoh2KOwX1
	KKeiosL8vupPIL9fCeW/DsPX7E4EdIaNvTvyqs4waCJeExVi4o+o48Mclqtp8qb65fRXSDW4kH6CG
	fRRH84aZXWL4FAyRO5e0vqctwH/zKJFqt8scXtTZll2kcqbHa4DRy4WCS/K80B5fCuHjyq7f8DsaS
	dnVnxsBiqR3OOm5brDoOo1MCTqNGvnXwEfXif2xHugiQP9hCgz25lfCt7V11xBZ259LTMmZbeFC2r
	4EcokXnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlal-0000000Bt9y-1QoG;
	Fri, 13 Nov 2026 07:20:59 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaV-0000000BszN-36NK
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:50 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7B6D5200668;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ABSDQs0ecAIaU0VaDFuu1fQcLMVSydx20MCh5k1V4mI=;
	b=NcA6evKjA9Viy/1O86TGr4dDjdzv1Vm+CytwQwQqxv+R+2qnS9rLobiuC+YLU/WqGBnUAU
	LJrjTEismyLO+0LumK8HPXMlSxzEwi6b9wQdY1wFBOaSrg3okFExTJFJooXVN1vc/n/RFr
	9L9xWM+WdWktrpndViWYu6KufwoSOOoxoHfoPPZlED7rxjOwE4yueVOvBKVBsRL0OfWkkr
	Jrm+82DHIeRFt8AvmRUl0jcmQ9OeoNVYy1waIBC7WgEQxviUT9dteMpewH7aP2oXHAze+2
	WK4JNzyK4XCLFnjbjLvrcNEdOe3vXLkTCd3mX0j/t+vSAuRd7zpZW5FfUhweow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ABSDQs0ecAIaU0VaDFuu1fQcLMVSydx20MCh5k1V4mI=;
	b=Px9WPqqR6ka+EYfh524z5fEdDncqVQ4ATKibY5Rp9mZflxPPfBg3mE6CBX6rEMjLn+ta57
	kwC/0xGkKugEvgodracAtSYiMq5LeUuV5bu2X4xwGHju1CqHlyvaC+499g1dBHTQNX1xPq
	diaTvkP7i8o7+7LoQdUBxV/GFh3kJfZmONLnVF/DlZzp9q0hPoinPfE1/vCtuSHNat3vNc
	iVUhjN29CerPCpC18KQyR0Y6ZCmr3Bn8Cnqx4lhwh/9b2BGhz8nvCxDIyMkeJREuc0Qnbx
	IjldK9WyUEx9HTP1e3dHHxmxJV8uYnOJ2ykJoNSA0PPJVykVb16tzlcZMfErxg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=BxcsmR0AB0OklI6daBrZlqemkT3+yD5QkPlyhTWAbYWm/T9aXx520yKfgv1d47V+6aY9DC
	Uw2fLITV1pTEXwtbah76MHmDzXSQl74z2KFFmKno8C2+NCGS+VwMtoNS4IZfLpbnQJZ7Yg
	nO8JN+kr49MTYGzUyXo0l7/sPDF8o+y/51JxVPtqt9uKngCxNiXvDyD+kCY9IWbG4nWr/K
	jeUpFSQwMtthsL9FVB+GP+/JWmqqlS4b44fvCvstNJx+npeRjVjtQHcEjPWvGtaOOZW7J5
	JVLtFHqanNmnGk4LLIznx3g8YF1npiM3bwXlVe9Jyn43mYQ3Mg5Qz3YHpcT64g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/9] boot: revert boot related globalvars after booting
Date: Fri, 13 Nov 2026 08:20:35 +0100
Message-Id: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEO69moC/4WNQQqDMBBFryKz7pSJomhXvUdxEeNUh0oiSRos4
 t2beoEu34P//g6BvXCAW7GD5yRBnM1QXgows7YTo4yZoaSyUVQRDs5FnBY36CVpjyFq88LONHV
 D3VC3pCBPV89P2c7so888S4jOf86XpH72TzApJNRUtVSxUkTmvrKd3tE7K9t1ZOiP4/gCy18l7
 r0AAAA=
X-Change-ID: 20261030-boot-globalvar-stack-9c65609b5801
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=3892;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=96bdmrWxaXU46G2xdDMMfJGzAdBK4aU+SLs1vfjuPy0=;
 b=61c/Mkv8TzbHQ9yY+zPu8GXwGt22j4g+EmiIJ5/F59BIbsxt1TRypZ6fn5GQ8TGobX0vSq19p
 yBKL5XptDAgCb73nfqAKZ2o5NFw0oUwOPQNIBnT1EZYTCteQPPDss9z
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232044_084925_B8FC4C99 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Boot entries configure booting through globalvars like global.bootm.*,
    global.linux.bootargs.* or global.of.overlay.*. So far only some of these
    were restored after a boot entry returned, by saving a [...] 
 
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 812C22023BD
X-Stat-Signature: ptuyjna1sfuws9jhsha9jf5uzpocyzt9
X-Rspamd-Action: no action

Boot entries configure booting through globalvars like global.bootm.*,
global.linux.bootargs.* or global.of.overlay.*. So far only some of these
were restored after a boot entry returned, by saving a fixed set of
variables and by clearing the global.linux.bootargs.dyn.* namespace.

This series adds globalvar scopes, which snapshot all globalvars matching
given patterns and restore them later, and uses them around each boot
entry, bootm and bootchooser boot attempts. With that the .dyn infix is
no longer needed, so it is dropped from the boot scripts of the default
environment. blspec and extlinux keep using
global.linux.bootargs.dyn.bootentries, so the position of their options
in the Kernel command line doesn't change.

The series is based on the "boot: UAF and double free fixes" series.

To: open list:BAREBOX <barebox@lists.infradead.org>
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Changes in v2:
- globalvar scopes take fnmatch() patterns instead of name prefixes
- "boot: revert globalvar changes after each boot entry": use
  global.bootm.earlycon instead of global.bootm.tee as example
- "test: py: add test for reverting globalvars after boot": fix line
  break in commit message
- "of: add watchdog bootarg directly instead of via a globalvar": drop
  the legacy bootargs fallback from the commit message, it is gone in
  next
- Drop "boot: drop the dyn infix from the bootentries bootargs variable",
  blspec and extlinux keep using global.linux.bootargs.dyn.bootentries
  so their options don't move in the Kernel command line
- Migration guide: describe that global.linux.bootargs.dyn.* set before
  calling boot is now kept, and that blspec and extlinux keep the .dyn
  infix
- Link to v1: https://lore.barebox.org/20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de

---
Sascha Hauer (9):
      globalvar: add scopes to snapshot and restore globalvars
      bootm: revert globalvar changes in bootm_boot_cleanup()
      boot: revert globalvar changes after each boot entry
      bootchooser: use a globalvar scope for its bootargs
      test: py: add test for reverting globalvars after boot
      bootargs: remove unused linux_bootargs_overwrite()
      of: add watchdog bootarg directly instead of via a globalvar
      defaultenv: don't use global.linux.bootargs.dyn.* in boot entries
      Documentation: migration-guides: describe reverting boot globalvars

 .../migration-master/boot-globalvar-scope.rst      |  19 +++
 Documentation/user/booting-linux.rst               |  27 ++--
 Documentation/user/devboot.rst                     |   4 +-
 common/Kconfig                                     |   6 +-
 common/boot.c                                      |  35 ++---
 common/bootargs.c                                  |  17 ---
 common/bootchooser.c                               |   6 +-
 common/bootm.c                                     |  27 +---
 common/globalvar.c                                 | 143 +++++++++++++++++++++
 common/oftree.c                                    |  41 +++---
 defaultenv/defaultenv-2-base/boot/net              |   5 +-
 defaultenv/defaultenv-2-base/data/boot-template    |   2 +-
 defaultenv/defaultenv-2-dfu/boot/dfu               |   4 +-
 include/boot.h                                     |  16 +++
 include/bootargs.h                                 |   5 -
 include/bootm.h                                    |   9 +-
 include/globalvar.h                                |  29 +++++
 test/py/test_boot_globalvar_scope.py               | 117 +++++++++++++++++
 18 files changed, 401 insertions(+), 111 deletions(-)
---
base-commit: db380db7a86026f0b19ea6841fa9b9f5326a4b0b
change-id: 20261030-boot-globalvar-stack-9c65609b5801

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



