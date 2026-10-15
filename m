Delivery-date: Thu, 15 Oct 2026 13:25:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJau-00DtrN-1p
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:25:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CEB01202608
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:25:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kiXJGedz;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D8blaMJq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792063556; a=rsa-sha256;
	cv=pass;
	b=H5smfpX6gya8n5Cf5SwpQkhS+b7T/m3ZU3qXlLn9gZ13nJTzZ3LMDWM59FP8pgVeEKzvRG
	PEtAA4/rasqx6UIeFqvDoV8UZpWlqVXk/mnUtyXwM4cj+PMG1BX1BEB3qpE1GTkOUScJPJ
	A4xnw05CHsgLALOm0CjF84q4GgNtPhiOc1Y9PjcdlIiZnLhFuTx1PSz5YimVNWHhdmiPZ8
	gwtIW2s7CdWMfYytCjkyLbPLNT3cuYgTIe9P9n6LhOUFMyOlZzUI6nQbHj0VejtWsh4KUw
	rc1tdWrg4ubKAvn4tFki1Jj7qnYL0pxv9dgswK07r4N+SRstUhjTc8AC2MWNGQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kiXJGedz;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D8blaMJq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063556;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5qfL48ZyccBsNIOxEjYJGufOgLJT2XyuqGmcxgsGAdU=;
	b=gWjwtIvnpJIqpPad1UaatHxdxonOz0tdFMHQJy0rv/A0qCKikMssko0+pXly2Oh1ism8j2
	aTfa5Qx3tx0cPZ3yzSUQMNs1HXdv4SG5i77iXGBXDprrrIQ23tbNB0A09SpWEsqUqR9/YB
	Y7/LBKNTw7XmKaQaMGSjBXSnwDOWJEUnsOUFLHTdVwvtdphDfPXt0CMJ5/Tv7tY779La7R
	zQ+vZveheKkz5qsTeDC7oUy/rkrdD5RjeoKje9zp5ulEwe937LQBNQUfotgIVin+3MPcqy
	Mx93P6bnGRUqCzbE0O5s4mPifyHpQi6QpapPmPgqtapZd7CFbczuqz8rhHKYCQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5qfL48ZyccBsNIOxEjYJGufOgLJT2XyuqGmcxgsGAdU=; b=kiXJGedzhUqy0eb6Jq1PL4l3Pg
	QFlhKFqNjC3v8q2lgsJNDNKWrzEorx1KkZX9qsvoetwpLra/APc4vcu/NDjJLUAiDfvi7ozSX9KD6
	fZvUk4fuSpWiyRYQVf9U94Hai0Jtls2QfzZ/ZbHJQtxHpZvW+KtBR3CcmuyBZHiAGF0cuX532uhDy
	vjyUTXMgC7rPejNbrErbxAi3d0AT57msd4hL8/H2qDzA95GMxsh9KBQSMYKXg4Pt2omCYCx59TdTZ
	iExUMWwt22KXDMrPVIMBYGwtsRy5HcypKcyP+L2Hdd/JcXGVvsuuTUx4Jd1hpDpYaIjpZz7LRf+yY
	AWr23mBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJZo-0000000HYqq-183n;
	Thu, 15 Oct 2026 11:24:48 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJZk-0000000HYqV-3qSU
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:24:46 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 44293201BC6;
	Thu, 15 Oct 2026 13:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5qfL48ZyccBsNIOxEjYJGufOgLJT2XyuqGmcxgsGAdU=;
	b=D8blaMJq8pBTp1TSWJ+GT7g0e/Mla9GzkRfB3TzDhBbYM9sVArGxn9VVjKtvFgc+RV27fS
	FRmOX/XVNg2DIM39MWzq7lkeydB9XbDgJVtpL4dD4Nfp8hzJ9uSGGMXMrYVbvRtTFS+RWV
	h45MHhS6MdbG04hd72hUgUVm4ts1fO1qbW3I6LZyuCKjRFW3240mdXhiieGDRHgKE+Pf6f
	YjR82QlDoTXs2vPhu13p0eY1aASMitI7B1l3SbB+TZ2V9py+70zQoUrqM+qJpTDkuPMJXW
	qbdmnpDju815g9FzZR5t8V0faOJzQwpkuhwi3IUYesuEeo316pCAemSf4UOudA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792063482; a=rsa-sha256;
	cv=none;
	b=c1r3PNaxPFKr3hFgTfQiGJE8WVvCjgv1z2gG1/GvoarXHa/NdsHFTAtmKoER7VtgHfGFW0
	kT1R6CVSk4rMWFyVdOyLdZjBb7/6ZldoWlTCUSGk+CEV94VK/FAM/hMvRe5G0X89ws6zxv
	9MDXeKijld8pIRfYpwHYDappl5+byVdB96f0HyI/pGOzMC1DFYobN79/zfHhza78QI1q0Q
	Q6vxmgSfhKubqkaYgtOv44o37OXDxiIAdgmVkHw5uCQ3efQXLRWBv4NDcHSH5qSNijxxhx
	ElRuL3f22gPLLujGR5SV4/kIB+b8H7EXXqBsa8VzObsH90Fd4zE0nM7vXfQ6pg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063482;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5qfL48ZyccBsNIOxEjYJGufOgLJT2XyuqGmcxgsGAdU=;
	b=aoULQCg08YDk+7Z79LROC5Wl72f24CtNeDSVgis4b7Mo7a6u3z0tJVE+k+tv7pXWKVh37N
	iJcSzeg/XcQN7Ukp10Rax8Mt+ltTXT/Z5QFOfyjGZHPJuBMTvO0W78jZR0rxIIm189NeTE
	Vcg9ajovNlHLl3p1/zn7f1L6EBuE0Wxdh/hLUiq6f+svW8TfrvX6we69TQvtvd81nDGhld
	xkJLUNN4Itgsnm6zE2nkqHv8C2xeddWlKkl9HyIdzyb6j7sH1VAnIkH1UDdyzb1d8EIetu
	I+GcQGwdYlRXaGTeVoaOZ2yZD4ujMHph/Kt+NbWu5Yj9dBJMgUVRUEGkQ8CX4w==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 232AE740A89;
	Thu, 15 Oct 2026 13:24:42 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH next] Documentation: migration-guides: turn migration-master into directory
Date: Thu, 15 Oct 2026 13:24:02 +0200
Message-ID: <20261015112441.2835686-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_042445_151428_DBDBAC23 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This allows us to avoid conflicts, especially when basing
   on master and targeting merge into next. An extra benefit is that the upcoming
    migration guides are no longer hidden and thus easier to review after a local
    build. 
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CEB01202608
X-Stat-Signature: 11fezrqkwhdph4yxbcwmw141po1zd9g8

This allows us to avoid conflicts, especially when basing on master and
targeting merge into next.

An extra benefit is that the upcoming migration guides are no longer
hidden and thus easier to review after a local build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
next has a migration entry that's not yet on master.
This adapts:
https://lore.kernel.org/barebox/20261015110335.2285479-2-a.fatoum@pengutronix.de/T/#u
to next, so we can avoid these conflicts in future.
---
 Documentation/migration-guides/index.rst      |  1 +
 .../migration-guides/migration-master.rst     | 35 +++++--------------
 .../migration-master/bootm-cmd.rst            | 20 +++++++++++
 .../migration-master/stm32mp-deep-probe.rst   |  6 ++++
 4 files changed, 36 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master/bootm-cmd.rst
 create mode 100644 Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index 5e1a0cfbc7a0..ded638639e1e 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -12,3 +12,4 @@ causes build errors is generally out-of-scope for these documents.
    :glob:
 
    migration-20*
+   migration-master
diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 43d0b27bb0fe..a5ca0a7f3b46 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,29 +1,12 @@
-:orphan:
+Pending changes
+===============
 
-Removal of bootm -c/-s options
-------------------------------
+This sections lists possibly backwards-incompatible changes that have been committed
+to the barebox source tree, but have not yet been included into a release.
+If you have concerns about any of them, now's a good time to reach out to the
+:ref:`mailing list <feedback>`.
 
-The :ref:`command_bootm` options ``-c`` and ``-s`` used to selectively
-enable checksum/hash and signature verification, respectively.
+.. toctree::
+   :glob:
 
-They have been removed in favor of the global toggle
-:ref:`global.bootm.verify <magicvar_global_bootm_verify>`.
-This can be restricted at build-time via setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES``
-or loosened :ref:`at runtime <use_security-policies>`
-via setting ``SCONFIG_BOOT_UNSIGNED_IMAGES``.
-
-The removal is motivated by making it easier to reason about what the active
-verification level is, especially as there are now other uses for verified
-images like when :ref:`global.of.overlay.path <magicvar_global_of_overlay_path>`
-points at a FIT.
-
-Existing users, if any, will fail-secure: The command will now exit with a failure::
-
-  bootm: invalid option -- s
-
-Deep probe is now the default on STM32MP13 and STM32MP15
---------------------------------------------------------
-
-barebox now enables deep probe for every ``st,stm32mp1xx`` compatible, even
-over ``barebox,disable-deep-probe``. Report to the mailing list if that
-breaks your board.
+   migration-master/*
diff --git a/Documentation/migration-guides/migration-master/bootm-cmd.rst b/Documentation/migration-guides/migration-master/bootm-cmd.rst
new file mode 100644
index 000000000000..d82748d4a377
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/bootm-cmd.rst
@@ -0,0 +1,20 @@
+Removal of bootm -c/-s options
+------------------------------
+
+The :ref:`command_bootm` options ``-c`` and ``-s`` used to selectively
+enable checksum/hash and signature verification, respectively.
+
+They have been removed in favor of the global toggle
+:ref:`global.bootm.verify <magicvar_global_bootm_verify>`.
+This can be restricted at build-time via setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES``
+or loosened :ref:`at runtime <use_security-policies>`
+via setting ``SCONFIG_BOOT_UNSIGNED_IMAGES``.
+
+The removal is motivated by making it easier to reason about what the active
+verification level is, especially as there are now other uses for verified
+images like when :ref:`global.of.overlay.path <magicvar_global_of_overlay_path>`
+points at a FIT.
+
+Existing users, if any, will fail-secure: The command will now exit with a failure::
+
+  bootm: invalid option -- s
diff --git a/Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst b/Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst
new file mode 100644
index 000000000000..8ff966a4dcf5
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst
@@ -0,0 +1,6 @@
+Deep probe is now the default on STM32MP13 and STM32MP15
+--------------------------------------------------------
+
+barebox now enables deep probe for every ``st,stm32mp1xx`` compatible, even
+over ``barebox,disable-deep-probe``. Report to the mailing list if that
+breaks your board.
-- 
2.47.3



