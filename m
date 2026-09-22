Delivery-date: Tue, 22 Sep 2026 14:47:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8zuN-0054LN-0w
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 14:47:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BDB6B20075E
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 14:47:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f1ISqw2h;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IgIt3W6V;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790081259;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=itz9Pfr0amK2az76ojthdDX/9jzlq9/Nsj5sqYlfA6A=;
	b=J4oI5N7VlNAhTP72Qh0a1sEHXS23Cw9D0odsM/5hclkix3jLMO3vSH0nDHAdqiQXN3hEdq
	sMutWFRxHxlPeDUU2CjVkWlf3qBsLsBQHFYEvm3F2nk58PuNA8OY7i8L9FZCe0QCddpZKF
	HKE2vmzm0CernoOLDDiWkXKwxxtAxeo1iRU8KtURDMb7Kk2wKxNIiUo/TGTauDR+XfqVLn
	l3Lz1TGK+S0BHvu5dsQLnpNfCiNs4PXDuqjkA9EwPfOaQQ9Qr6Q45Co41f1bU51kYn/0mz
	scmZejoYYl5kIpVc+XjTkBE/hKLCHwQaxlJWLmsEZQPwpS/H+TPr6UFIQG8BvA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790081259; a=rsa-sha256;
	cv=pass;
	b=IYpz6Z72d99oumzGxEsXJ7oRlcScNjtWp9rOB222oRzSlmnQSNyXO+4/6cWZxfXLZqk51C
	vjLXOF/6EwRgFBPWLnWKK2AbK2W6U61enw95nnlBOhwDh4tbNYd8SOf1MXvt1fQTCdLQg1
	P4RJNDk9aJExTMAUHot/hPWy+RDPNbiuXo+H6LHQnywMG4KEtXEpxZnDsWVBP9EXzlKdXe
	AyzMd/j9DEewjfNkJMN4t3t7nd8tQRHoiPl4HCL/Ld6RoCM9kMcfoW99SzetZf9Rvtc60F
	5FEr/osGI0Mob9uW7fLpno6HDNgGG1ZUbEYpShF1FiewNSkGYmbn/JqGjqLjrg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f1ISqw2h;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IgIt3W6V;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=itz9Pfr0amK2az76ojthdDX/9jzlq9/Nsj5sqYlfA6A=; b=f1ISqw2hSdRmJdbekMYVQpcQ2E
	g+KrdpDjuEK1GN3SXW0wk7MdF9zKDZQqScsTn2NKFLNYXg3a4JLJDlSf2TndKg2L05C6njSL/3VUo
	vogMXjLjb02beDF6ugjK6hikl/H/q4oRzK9i979pLGxRkskvio4OusxOIjczCcr7tS413h87sBfTP
	e1IOzk7ylzzBhBkSydD7dAY5ZGwvjE2jNMBWh4mb2ouCm3bJuPTru5m3SZrYGLThvl04/PjXo5JMS
	wDMruYfIWD/l9KZ2g11jWOzBu8nGyYBd00NgoO7GJ+wnMABsDZlOoMcOL3i4jDOIcDTH6aIIuH6zv
	dmeuINgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zsu-00000005Li7-37Dh;
	Tue, 22 Sep 2026 12:46:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zsp-00000005Lh6-3TBZ
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 12:46:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8AD2620075E;
	Tue, 22 Sep 2026 14:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790081161;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=itz9Pfr0amK2az76ojthdDX/9jzlq9/Nsj5sqYlfA6A=;
	b=IgIt3W6VXjKNz/RGiKU3rSK+rGtXfA1a8TuPKOCxKZ+sO+offjEAXoREnMdL2pfLYKmlQ4
	MCyk+Ac7i7Lr/bLS6UB8w2YeSJbqyFmHu9x+Y7G8Q8m/WOTysTKiIZlcHn/uG09ZyTxxNm
	HMvGUAcn27wWeuAuH/zzfnPW5xB+OaosSE6FUQS6G6keg6LiFHHXuZwjxwL8Ua9jKl5ob3
	uBHveAto/RmkzrGaQcFL+TTAynXpyyPLzXNeQ6wv5DkzqKPOdtcdxN2gCxSi5DID9KUpn9
	TnSe9yjAyxtzljZDJYEVQqClBlqysjKXHLP2WPgk0oZNrhzpNHRBrKlqgcR2Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790081161;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=itz9Pfr0amK2az76ojthdDX/9jzlq9/Nsj5sqYlfA6A=;
	b=XSwUi9KS6C2yYWXeXr1XGKYPC2ps+nteBR+lAUcPO80x1CPW/5Z0NGNWC06tKqTXaN//wJ
	Kc2QJaPhnCT4suts8p70Z0dOAb8plEzlVy3Q2YfoLOIys2N79m8u/5v+9I6V70Bm/Y9Lym
	GesSfWrqln/iX2mk60gURP6xo5ebaDCDyNByO28cmiQCclar6+pZygxCF9IdgZNwFahgcf
	6DViE5202jLqkOrLVBgQkt0LfbGMaiR3BBNc3T5UjsEouDxeB5TwcvRfCGkKRnF2DkE5EB
	peb8vUpvPrkhlbaq3zCOYFKf4PbUbcAdz+JzfbNpOqkKo50a5nJ8nrYQLLECbw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790081161; a=rsa-sha256;
	cv=none;
	b=aqZoGf68F0oFfN8KdVcSDWOMFjEzuet+9bjdNRh8NW8zY1BaWAKodOR33j7097UE+/zzt+
	4QYIbN94IOmrY6vySgqzqyELbnIc827DqA67cdd8L1w/pfMhA6DBXQssQbYLChEYZq56o+
	WbQfgns5C9PlRjwEPRi3LJUeW9CkQLWH+q9w+10j/r8SdM6WPZ82Fz7p+V9q1ZCYzleKHx
	RP82kTY7kyC76ju24d099y84LdMm8EzEIvWpLYBALQVnKNNJ9uZuKjzpORvcL+xlfwJp1T
	Co/yWb0b3gklHdzhrZAUIKOUxccouEXoYMv5zkuhJw7SG0YFZvZWEWJN+PjwSg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8zsn-002EVO-1K;
	Tue, 22 Sep 2026 14:46:01 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8zsn-00000006WqO-3Trs;
	Tue, 22 Sep 2026 14:46:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] treewide: replace git.pengutronix.de addresses
Date: Tue, 22 Sep 2026 14:45:59 +0200
Message-ID: <20260922124600.1556201-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_054604_174241_E701E600 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Our public-facing git server has not been spared from crawlers
    and slows down to a crawl on occasion as a result. All git.pengutronix.de
    links in the barebox repository are also mirrored on Github. They also have
    availability issue, but less pronounced, so point at those instead for now.
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BDB6B20075E
X-Stat-Signature: bhj34q6fhac8ui8d9zmp5bud79hgqkfy

Our public-facing git server has not been spared from crawlers and slows
down to a crawl on occasion as a result.

All git.pengutronix.de links in the barebox repository are also mirrored
on Github. They also have availability issue, but less pronounced, so
point at those instead for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../user/appendix-development-host-setup.rst  |  2 +-
 Documentation/user/barebox.rst                | 19 +++++++++++--------
 Documentation/user/bootchooser.rst            |  2 +-
 Documentation/user/security.rst               |  2 +-
 Documentation/user/state.rst                  |  2 +-
 scripts/git-origin-url.sh                     |  2 +-
 scripts/include/string_util.h                 |  2 +-
 security/Kconfig                              |  2 +-
 8 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/Documentation/user/appendix-development-host-setup.rst b/Documentation/user/appendix-development-host-setup.rst
index 88baf5f3794a..496fcf50cb5d 100644
--- a/Documentation/user/appendix-development-host-setup.rst
+++ b/Documentation/user/appendix-development-host-setup.rst
@@ -31,7 +31,7 @@ A good alternative terminal program is microcom. On Debian it can be installed
 with ``apt-get install microcom``, on other distributions it can be installed
 from source:
 
-https://git.pengutronix.de/cgit/tools/microcom
+https://github.com/pengutronix/microcom
 
 Usage is simple:
 
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 2f32a0a8a4ec..2fac861327db 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -18,15 +18,15 @@ can be checked out as follows:
 
 .. code-block:: console
 
-  $ git clone https://git.pengutronix.de/git/barebox
+  $ git clone https://github.com/barebox/barebox
   Cloning into 'barebox'...
-  remote: Enumerating objects: 330649, done.
-  remote: Counting objects: 100% (3932/3932), done.
-  remote: Compressing objects: 100% (2203/2203), done.
-  remote: Total 330649 (delta 2421), reused 2217 (delta 1706), pack-reused 326717
-  Receiving objects: 100% (330649/330649), 82.03 MiB | 14.88 MiB/s, done.
-  Resolving deltas: 100% (265076/265076), done.
-  Updating files: 100% (19054/19054), done.
+  remote: Enumerating objects: 363788, done.
+  remote: Counting objects: 100% (2704/2704), done.
+  remote: Compressing objects: 100% (605/605), done.
+  remote: Total 363788 (delta 2251), reused 2132 (delta 2098), pack-reused 361084 (from 3)
+  Receiving objects: 100% (363788/363788), 126.86 MiB | 8.19 MiB/s, done.
+  Resolving deltas: 100% (279758/279758), done.
+  Updating files: 100% (21470/21470), done.
 
 By default, the master branch is checked out. If you want to develop for
 barebox, this is the right branch to send patches against.
@@ -39,6 +39,9 @@ you can look at the ``next`` branch:
   $ git checkout -b next remotes/origin/next
 
 A web interface to the repository is available at
+https://github.com/barebox/barebox
+
+as well as at:
 https://git.pengutronix.de/cgit/barebox
 
 .. _configuration:
diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index bf8990aa2233..6d5cb3ff8b3f 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -150,7 +150,7 @@ It can also be controlled from barebox via the :ref:`bootchooser command <comman
   bootchooser -L # unlock
 
 
-.. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
+.. _dt-utils: https://github.com/barebox/dt-utils
 
 General Bootchooser Options
 ---------------------------
diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 0cdb0777719c..a7b2cc61c9b0 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -81,7 +81,7 @@ and disabling any ways that could be used to override this.
 For development convenience ``CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS``
 can be used to compile well known development keys into the barebox binary.
 The private keys for these keys can be found
-`[here] <https://git.pengutronix.de/cgit/ptx-code-signing-dev>`__.
+`[here] <https://github.com/pengutronix/ptx-code-signing-dev>`__.
 
 Pinning the FIT configuration
 -----------------------------
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index f4c9d0647c53..71558fe998a6 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -30,7 +30,7 @@ fail and be non-functional.
 For the Linux run-time there is a userspace tool_ to do
 the same.
 
-.. _tool: https://git.pengutronix.de/cgit/tools/dt-utils/
+.. _tool: https://github.com/barebox/dt-utils/
 
 To define a *state* variable set, a devicetree based description is used. Refer to
 :ref:`barebox,state` for further details.
diff --git a/scripts/git-origin-url.sh b/scripts/git-origin-url.sh
index 3aa15561c474..e587e0cf6c9d 100755
--- a/scripts/git-origin-url.sh
+++ b/scripts/git-origin-url.sh
@@ -5,7 +5,7 @@ set -euo pipefail
 
 # Some very early hashes to identify the projects by
 declare -A repos=(
-    ["a3ffa97f40dc81f2d6b07ee964f2340fe0c1ba97"]="https://git.pengutronix.de/cgit/barebox"
+    ["a3ffa97f40dc81f2d6b07ee964f2340fe0c1ba97"]="https://github.com/barebox/barebox"
     ["1da177e4c3f41524e886b7f1b8a0c1fc7321cac2"]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
     ["cc8ed39b240180b58810784f844e253263594ac3"]="https://git.busybox.net/busybox"
     ["7e492d8258182e31c988bbf9917d4a3d41949d56"]="https://github.com/u-boot/u-boot"
diff --git a/scripts/include/string_util.h b/scripts/include/string_util.h
index e71aa60d26b6..14b0450ec929 100644
--- a/scripts/include/string_util.h
+++ b/scripts/include/string_util.h
@@ -5,7 +5,7 @@
 #include <stddef.h>
 
 // SPDX-SnippetBegin
-// SPDX-Snippet-Comment: Origin-URL: https://git.pengutronix.de/cgit/barebox/tree/lib/string.c?id=dfcf686f94a5a5387660f2afab79a714baab828a
+// SPDX-Snippet-Comment: Origin-URL: https://github.com/barebox/barebox/blob/dfcf686f94a5a5387660f2afab79a714baab828a/lib/string.c
 
 /**
  * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
diff --git a/security/Kconfig b/security/Kconfig
index cb5cc2b92bc2..9881864cea7e 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -88,7 +88,7 @@ config CRYPTO_BUILTIN_DEVELOPMENT_KEYS
 	  used to authenticate FIT images during development. The private keys can
 	  be found at [1]. This option should never be enabled in a production build.
 
-	  [1] https://git.pengutronix.de/cgit/ptx-code-signing-dev/
+	  [1] https://github.com/pengutronix/ptx-code-signing-dev
 
 config CRYPTO_KEYSTORE
 	bool "Keystore"
-- 
2.47.3



