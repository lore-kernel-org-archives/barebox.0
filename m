Delivery-date: Thu, 15 Oct 2026 13:08:20 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJJs-00DtXb-2c
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:08:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4CE822027D0
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:08:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=N7gjaNBW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TeY5JTrw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792062500; a=rsa-sha256;
	cv=pass;
	b=f38X5SOqYl/qpE3O0FmXr+3oisHEXqpevIe7W6te/8mwwNx48YUtFJWKTaMf0/P4kN6jvF
	45DQ7ybPQolm5voa/SZ/yfOqw6HPOHO4boe7cgC0iSR7CMWhsFbwNLJJTzrW8tcrAJcWW9
	4Sk7Iec60CV+j/M4aSUofotV2DRopnE6CYjDyuaLYxlktHHafnQkYulfHEMWGDDhYSQY1S
	vKaMn2ydB1ehdEtgI2sG3D9yOtGkpWtnDuoJwL4XXlFMAxz7uemJecIWX/s2OB5mW2d+6U
	XDFqbUrDH86GaZdyDrA2Q3kx2oAJSihjgWfNlGgtT9wzYBkJVyTlGHdx0jywRQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=N7gjaNBW;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TeY5JTrw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062500;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qy3LO5NvlpycMdYirvSVwNsCpZQMXKsyzVsSY3n8KAs=;
	b=XACbli7yFbyt0ep6ad81piDWTWh21OCAbb53FdnLFkIOtewQmypC8xh6Qjj6loSYcK5/ya
	QxpwsOcqj3TUxPG9DHlHnDWxrx1XGFI79IgYyoJjQ1Bt9Bck+MvnP5vB6zaeuMPjye89Me
	fpYOjXOHkZQYJQJCq+u0ApuzlbJLgR9JqFBepAkV2GCQ3HJAJ/TztxcYLIIM+raosYiccU
	GJV/sccek+5MAzjykAUQGVpXP6lwy/QDXeHFTe1Z63dyU06kR6eLs3CCp3I9fN5UrgkNtp
	yCcDKDpSELSGOgcEI8+dCSYxPF+zbEZpaojSvLomLfjJZVQchmyz3MMuYEXx3g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qy3LO5NvlpycMdYirvSVwNsCpZQMXKsyzVsSY3n8KAs=; b=N7gjaNBW9aDcMEG/pAcSjxZA6f
	lWppUmMoj8g+ndUEPxJ3KY7JCKkclm1VCPQyNHXOatvmiVcHNF4D80KJn6jsw4I6uisYqOY2fnJjK
	p+/VwKCSuUXyMiDReeHI5YJVU8FHC1BnmGgLZAAuyZ7Mt9O8QB9YY6naMmz6qEgDj5Z5XQUkOJQOF
	v59WCA6hPvRU2fcm4aqjIk5C35JcwTBp2hyDX0pb48WG+NLbvMJaitRGBOa358nig4BAHrYghxDFA
	pAplhmsy36cNGQXM1ZpDZnza2vf6j8MthsDN1fxluOrlN6YGM0oMEhMXijAL5MFNGCBtSBnSz7Mq/
	5qleQwrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJIk-0000000HWpi-18tP;
	Thu, 15 Oct 2026 11:07:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJIg-0000000HWoP-3rZt
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:07:08 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B4D2B2027CF;
	Thu, 15 Oct 2026 13:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qy3LO5NvlpycMdYirvSVwNsCpZQMXKsyzVsSY3n8KAs=;
	b=TeY5JTrwCm6zE67nZ8LnASgakmBL3/LUMbXWMAweIh79XSagcX5pq88MgGImOgLixZS6+v
	NVmfdKKb18buZOCwCE0KnybG7lPGAPoDIqF5HhzSihZJP08KreHuyzUotcjN6pFyqtOBdG
	uzkCkOpBa0JJaDvUWNvch9LdOJ2juYVEHT4cakE4MAA/pK6wevfA1nic5a4j8a8Rf8xGY8
	O3fyRJ33FTyWmlZ6Z7cZMh3OL9F2JTFumg0Pr425HTdsu6rZs9S2T+Z3yLugmXQHB5GlDC
	sfbDwIyce+YSsCEKCvPjCtAUf0PQp26r8wSMpHpudA5hI+8uA9ACNsAtr5m7OA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792062424; a=rsa-sha256;
	cv=none;
	b=OXuHSN+S8/P4TAeNOSPHWwUV91ZbAVcqpxg1X2Q44t2AMxQoe+YiVgAw4YstUJpjowUUnm
	zqQEiQDHUvctrsp6YQnH/3tCdji359g9m4uSVnuY8u2hRQcESAnwr516sLTpWFfVhioMR9
	gl9OcxuoX9gwT8Lr2W1TD5TZUsGZnF4ozaY0rp76tf9JYOGmesKXPR4T3OGCNXIWG4E2Id
	T4xcnkV3VT0dbFpKEGgGhFWzqK9rAYbSLIf/7LftFojTQEIjEssZEzbKfCwkSCxDg1SrWS
	nFGt38fNODUd/Gm7C2D/vmOLzWzSAU8+6pJKq387qNqZPmKJCYvxXDFy15/v+A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qy3LO5NvlpycMdYirvSVwNsCpZQMXKsyzVsSY3n8KAs=;
	b=Kxd1C7IW5/e6hT2nbnNSbcKIG05DzKhaObnX67gpezYdUfSn1I5joMf2rTqdir9yF78GOc
	RisSkIgQ6dhoLr+bZd6pODnNEVoaovSFtxqiT/rKhWOq5SnxRhNJQx5nDvNEa/DIikK7aw
	a5x3zZeZWIyZxZQ0sjbYJCnKFhttZ9TARuqwQiOUF4uVm6M6VZ4U8obyr1T4qIO8ytRyv+
	MnL0lMN+0SFe8scTI1U4x/x9GMvoMMWJSeiPsMgQ2hLl1ZXc5gFbI2cGGy5mWl62Paoy8r
	uyGY5QWMdlZFg6zpJw0W8jr4e2KcR6UDZ+VmcqvzNX7KLw4MjIeCCOLrKlIsTQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9F67D7415DA;
	Thu, 15 Oct 2026 13:07:04 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 2/2] defaultenv: devboot: use rsinit.bind_modules to bind mount modules
Date: Thu, 15 Oct 2026 13:07:01 +0200
Message-ID: <20261015110703.2378569-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015110703.2378569-1-a.fatoum@pengutronix.de>
References: <20261015110703.2378569-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_040707_159918_AE5EAE28 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The rsinit-modules
    snippet and the devboot documentation pass rsinit.bind=/lib/modules on the
    kernel command line, but rsinit only knows the rsinit.bind_modules flag and
    silently ignores unknown optio [...] 
 
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 4CE822027D0
X-Stat-Signature: odujm671aoyeng9n6rsf8is3twmmqn7s

From: Ahmad Fatoum <a.fatoum@barebox.org>

The rsinit-modules snippet and the devboot documentation pass
rsinit.bind=/lib/modules on the kernel command line, but rsinit only
knows the rsinit.bind_modules flag and silently ignores unknown
options. The modules CPIO is thus unpacked into the initramfs, but
never bind mounted over the root file system's /lib/modules.

Switch both over to rsinit.bind_modules.

Link: https://github.com/pengutronix/rsinit#bind-mounting-kernel-modules-from-initrd
Fixes: 1003a9d70373 ("defaultenv: base: add new devboot script")
Fixes: fc586dda711c ("defaultenv: add optional devboot snippets under /env/devboot/")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/devboot.rst                         | 4 ++--
 defaultenv/defaultenv-2-devboot/devboot/rsinit-modules | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index 28a2f65192d6..a55be7e305f2 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -173,7 +173,7 @@ kernel command line fragments:
   devboot_oftree=
   devboot_initrd=":afa-modules-arm64"
 
-  global linux.bootargs.devboot.rsinit="rsinit.bind=/lib/modules"
+  global linux.bootargs.devboot.rsinit="rsinit.bind_modules"
 
 With this script in place and ``global.user=afa``, ``global.hostname=rock3a``,
 running ``devboot mmc`` on the board expands to::
@@ -222,7 +222,7 @@ which the configuration script can source instead of spelling them out:
 ``/env/devboot/rsinit-modules``
   Appends the ``${global.user}-modules-${global.arch}`` CPIO archive to
   the initrd, as built by the Linux kernel ``make modules-cpio-pkg``
-  target, and adds ``rsinit.bind=/lib/modules`` to the kernel command
+  target, and adds ``rsinit.bind_modules`` to the kernel command
   line, so that the rsinit init in the initramfs bind mounts the modules
   over the root file system's ``/lib/modules``.
 
diff --git a/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules b/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
index 3ada2dfeac39..b47d2e2739eb 100644
--- a/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
+++ b/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
@@ -1,4 +1,4 @@
 # Append the module CPIO archive and rsinit bind mount them over /lib/modules
 
 devboot_initrd="${devboot_initrd}:${global.user}-modules-${global.arch}"
-global linux.bootargs.devboot.rsinit="rsinit.bind=/lib/modules"
+global linux.bootargs.devboot.rsinit="rsinit.bind_modules"
-- 
2.47.3



