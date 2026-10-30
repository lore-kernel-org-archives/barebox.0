Delivery-date: Fri, 30 Oct 2026 16:19:35 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMoOE-005BxO-1m
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 16:19:34 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 624AD201F03
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 16:19:30 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4mzvgFsx;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=JhhMK+j+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793373570;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5tOTdGJfAcwYX9zQNaKQTazFkMV0BZz/PK2lwiDLELU=;
	b=Bp8nm8/vE53rUxEomYwJPIwvTLlO5oRKpnt2b2+WZJEColZ8l31xAfez7aHKUIPRKQ3kPN
	vLQEMMjO5maOirsDzLR5bSOHgziYVIC35bgHNwAlDgKyFpLYT+wXIXBWSZTA93Tfc1LjlG
	F21sC4gWVshvlaL0VqwkxnHTX3I4qhNunUlIXGHzaGEmuCcAHO78Dhbm5CKSufTGKKp7Ts
	/YFkQjulAl/z7cmWXGlCI99YpZuAZZn44UXvWviaeGOjH3GtK/UiRzZqnAoEBDR7/f0qad
	e+QYxcy71lG6ntEDH75JYyMgutkz/xT9HLSbvqR9yt27pwwI92/7ygHcbReHLQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4mzvgFsx;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=JhhMK+j+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793373570; a=rsa-sha256;
	cv=fail;
	b=CHuVpIqus8PGYCOsVizGKe5rreZ+aR5U3UFiNhpp0iJPMrMFTy/oK1JmWTNKVLSxtRh11M
	ibLIU6dPP8fFXmUBmMVf7u6UXuT48hE4phssjOtjGzMCeztOjgCVlhVJmoUQbCrVv9AH33
	FbZAlvGmBSIj8qu1KpD5hy0cC+00DPCF1rgnEi30zgjd/uki9SvxeKj7doR3XPrRSpTGep
	v0+rgAALaTalMQnilZ2ZODx9PDRyRqGqZ41tprv8PIxJdXa85okGoYLSgY/qNvwTrsg2DU
	p3MCOW58aHUlgLf/Qgi8DylmQe8yqlXDhC7IoBIxiq2m5QteVXj1eW1vtETEkA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=5tOTdGJfAcwYX9zQNaKQTazFkMV0BZz/PK2lwiDLELU=; b=4mzvgFsxjK6naOfWi64Jmr/k2g
	H9Hd30pY7VOThuu9YXqnfal0UAOeIyu+6Ffb2rTBg6y87NY5oQ7ZW4Ym0zrDubATjhNa3494YG+O7
	wNsASTzck8SuCK5GGXwllh9geKp9HRua9wSiryMlb8uFwPAutxEDm8wB6dyDt9g4q51Q+w2b3kj0/
	cBJmbuy+dk4EBVe8YFB3ee6WW3bRCNdlIFAspToeH1xfPnFe3FGMBGtdbGQfHZWvee//A74HVzrfm
	auGWo2Mjly4L3AX1um4FETMB+IPRc0S0DMTrM68RrhCmD22maELxwlvnX25ucvl7uJFutd9UGFY5X
	aQ94cynA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMQ-0000000Bqiz-3yZa;
	Fri, 30 Oct 2026 14:13:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMN-0000000BqhB-30P4
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 14:13:37 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 95C232016D6;
	Fri, 30 Oct 2026 15:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5tOTdGJfAcwYX9zQNaKQTazFkMV0BZz/PK2lwiDLELU=;
	b=JhhMK+j+QgOTIpP6T1TV9TUeWZmj/CXCsTyzuDarwkQYAsJtwwk4G6JRAm9S54Zty3eEim
	crzIA56yTGXH9GW6MCYCa6ReKyXzAv8kw34WMDCxvCgrt5wiloqArgLmPGzNB5MTFhdshZ
	G6TNBipMma0Y733Ywf7WLD4sK23Nc4wSoBU8bFZqV2d8g1zasqsFj++X9UXe9tpahkl7RV
	Fy3X+ca+XeW3JxUska6YSi7O9FDdNNEsWATXYZsKGjo+EaOBegqJ9FqWmk+g9iZKnS4RV9
	XEFNF5ZjGv3dckobSQGsNf8KRThF3DNvdfFIigsPeiucFz4wEELLW8Sq/3tW9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5tOTdGJfAcwYX9zQNaKQTazFkMV0BZz/PK2lwiDLELU=;
	b=Qjgv1+d1GXPdlTsm0LrebViUsdTZgwEkSkFG9FoyaZHNZZTiAsKKtx56lf1NsSWcwoE7cl
	q65ATRki4TTj0lVnbGEAmLXlkVfg/tiiCRfSGK3uhelW0uvXLUe6ptD9TfJxcUqLV7988e
	Db3i5TM1o4ew3Owm2DAqkAYqr6glCznVNDgErJX/dK1E+6i+xIu0Ws1l4Nu+F9Wg18N3wj
	IbdardzFMxJHrzHqcMEaZnfOSqfPidPMwjqqCi45sxhCntfJTLQoVUm5+0hx8Rf6ajQkUx
	+eMVmZF61kmqMyTG6kvPgGuMqIwGfacP6xAeuwLV0UziZTYaP6ECYeZddhbnZA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793369612; a=rsa-sha256;
	cv=none;
	b=RaQRT0d7cfZ3QPR0zo8c9MsJmDUsuTBGHacsk6Dn7hjfSCghG3e2SGitpN9zEP1TYpYXjx
	bhF0M2vxgAo49rSYtOiHf8+z8bV/ftoh/dd3wsdQebaKFQxprRjcZKofmN1rGzuakiCZuA
	cEljCb74xJdXqttiZJ7doQSxRdVE427YVxDQip87PTdTtSlftIRIUs7pNJpTtBRC3mizF3
	0DHqK5XBJb1kkNUuBBVgBg+qThn6UvXcZK9guGLccsiCrQ6DQ/UMzGQzJEJFf506cEEYdb
	zidq/8jWiUYX1TfkKaxtOTai6Wy1wHSi9hxNiCNdlTpi7a4A2cIqJzOHC/EUhw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/5] boot: implement devboot in C
Date: Fri, 30 Oct 2026 15:13:27 +0100
Message-Id: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAim5GoC/2XMQQ6DIBCF4auYWZcGLCJ01Xs0LqyMOhswQImN4
 e6lbrv8X16+AyIGwgj35oCAmSJ5V0NcGpjW0S3IyNaGlrdK8BtnFvPL+8TGWRrZKY7CKKjvLeB
 M+yk9h9orxeTD54Sz+K3/RhaMM9NzpTX2k+z0Y0O3vFPwjvarRRhKKV9hhCzqowAAAA==
X-Change-ID: 20261030-devboot-af494560e196
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793369612; l=2494;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7PiqWHKiwe2VukLoSBcguQNXX2BguvflX9OoGNKmAB4=;
 b=lnsmVTS2vDtkvooXwCG++Ctmv+5goNxK+hvyt18nQLMMyJN1si5iF3/phcCbpWDtHuWUR95Qg
 yl3QrKHobDLCFK+qe66wOlkJzXCEF0Y+XpH1NaLE7eKAdqxLiHfyDxh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_071335_913778_D0275F02 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  devboot is a script on top of the boot command, which makes
    it hard to integrate: Kernel command line fragments need a dedicated namespace
    to be removed again, and booting with devboot by default need [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: b4b5819uwdahwcos1ekk1mitx1p4n6wj
X-Rspamd-Queue-Id: 624AD201F03

devboot is a script on top of the boot command, which makes it hard to
integrate: Kernel command line fragments need a dedicated namespace to be
removed again, and booting with devboot by default needs a special boot
target. Also, boot overrides get lost when a boot script calls boot or
bootm itself.

This series hands overrides on to whatever a boot entry boots and turns
devboot into what it really is, an option to the boot command: boot -D,
or global.boot.devboot=1 to enable it by default. The devboot command
remains as a shorthand for boot -D.

The series is based on the "boot: UAF and double free fixes", "Add and
use file_exists() helper" and "boot: revert boot related globalvars after
booting" series.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (5):
      boot: report the exit status of failing boot scripts
      hush: export source_script()
      boot: hand overrides on to nested boots and the bootm command
      boot: implement devboot in C
      sandbox: defconfig: enable boot overrides and devboot

 Documentation/user/devboot.rst            |  76 +++++++-----
 arch/sandbox/configs/sandbox_defconfig    |   2 +
 commands/boot.c                           |  28 ++++-
 commands/bootm.c                          |   3 +-
 common/Kconfig                            |  12 +-
 common/Makefile                           |   1 +
 common/boot.c                             |  63 ++++++----
 common/bootchooser.c                      |  13 +-
 common/bootm.c                            |  22 +++-
 common/devboot.c                          | 197 ++++++++++++++++++++++++++++++
 common/hush.c                             |  17 ++-
 defaultenv/defaultenv-2-base/bin/devboot  |  52 +-------
 defaultenv/defaultenv-2-base/boot/devboot |   8 --
 include/boot.h                            |   9 ++
 include/bootchooser.h                     |   2 +-
 include/bootm.h                           |   3 +
 include/devboot.h                         |  31 +++++
 include/shell.h                           |   8 ++
 test/py/test_boot_overrides.py            |  92 ++++++++++++++
 test/py/test_boot_script.py               |  13 ++
 test/py/test_devboot.py                   | 131 ++++++++++++++++++++
 21 files changed, 653 insertions(+), 130 deletions(-)
---
base-commit: e23fbb0ea940ba8b0f7f153297cb48c39fcbf41d
change-id: 20261030-devboot-af494560e196

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



