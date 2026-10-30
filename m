Delivery-date: Fri, 30 Oct 2026 11:59:01 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkK5-0057Mf-0N
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:59:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BDA6620296D
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:59:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f6c5ooep;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AHgU429F;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357941;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0yPJyh7tWOLEOuEXC9c+Hfo0pRGL1xWrmTGGjhHjZFY=;
	b=K9xlVwQGzL5USXvhydbklkkRzDKY90mSsCHnt+EbpFur5/e8fQ+G/enO7KbP9v7okuAwAL
	md1goFr2MEmY+l+M9yJV72EkkVT9WbYGpfsYR/fll65IAfOb47okH0lB7oil5dihzQYLZ1
	0OnAWyQVZbdM12yQ+0cBHXhZTiT9iD6ZWDUnmflAjQhl0IA1+rrik3M8SKHI27mInGPmFT
	9uKA5EQH3MeBmfwK5RcsPhXWw9CMIaIpZCr0MNjrpd/nnd6KuJB77iHdVV0XwVQsqma7dv
	ebO9huX2dZbC0CvefdedHj2+iembpKwA4QN6TzjufEBL1vaHA6jFuv+lbPHC1g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f6c5ooep;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AHgU429F;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357941; a=rsa-sha256;
	cv=fail;
	b=gjxoU8S0RBFPdGT6Y+B5U2IZZcnevTcnmC6GcwciNj3UjwJ/KTmj0PUOXvqnZbuco10sEu
	2b9QX2k5Z9Fd3udFgD3ZFIRLTi19rpVlTs/6qDsJwShILNOplG7MgZl6U7P2GTluIE8hQH
	FdCpCGBHf+FoHVpW9Jt0nqGQbiHRl0QiEgG1I36S8DhIaSh0YWgPwf3lWKfxZC/WHxksOz
	M/zuIKeUEfAkZEmD292+sAdxWjt3vy4yc2ivAZyCY+V4EQxaJcvMyNQklaKOXWaexuxUMl
	/bJjLzaFmLsybmvcb4manVyad5IY1PO5EV2RhSWBDXmKWFGqTj4t/XB0ZA8SDw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=0yPJyh7tWOLEOuEXC9c+Hfo0pRGL1xWrmTGGjhHjZFY=; b=f6c5ooepbVyeNP
	eR0aDgeI0cXcvnTfpejpw6h/D2AfVMGOw0H8FtCnZK+JYwBYP5MB2pjqNJQxlaSq/bRX4sFv6+Tdg
	8TN+sOkkcT8n8nCiRApFVx0XbYW1gxzI/jzfMpvZ3ePQ8rOfjf46wHwTJ8x6+rZM2h6yddbkmx7sc
	g3aJDiyf4MXyTb4fOj093tQGMwz8QBEi6iHBpUmwmV0CsVmFVx1HhBPQppViW5XRGCOevONF0pqiC
	ddfPrCuLLL3OJZuAvCxtmC7uomP5sQLY/5p33UXi+w7pps4Jsqvq4CWOLFiPx7JWZr90lnFvCOPla
	CsQlcW5FeZu1A+5rR05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFO-0000000BSs0-3gUw;
	Fri, 30 Oct 2026 10:54:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFL-0000000BSnH-2vRL
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:09 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1DA55202970;
	Fri, 30 Oct 2026 11:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0yPJyh7tWOLEOuEXC9c+Hfo0pRGL1xWrmTGGjhHjZFY=;
	b=AHgU429FbD51GjDy7NVuiggc9Q7qubHNkzsAxovdfv7HhbYkadkFB6LyFxhKtWJ44k1sdb
	Cddd3ZSk9lNltT8jOTXwDoSyMMzsECZGUV87HnPy8PvXYJFEsTnBunUGvWPUVLjXgcwbE1
	WyZN50BU58FFekRgyZh7lHbPazNzkFjzjWiOUWRolD4JRiwBI0uXLcG/Z4rh8xYltMbT5y
	r7U2F3385NPhfZBebE7wLL4KKfItvBRWc9vyoP3VoWgtScJMaYjWeODaDgRIYSqdwfxJGv
	sA5A7hOkt4fLS2xDlML/8BKMRL8dNFR/USntW2ilMJI1UgpLRHYwhGWJUQQzAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0yPJyh7tWOLEOuEXC9c+Hfo0pRGL1xWrmTGGjhHjZFY=;
	b=XOD9ixk3A6TCESm+Amq9oYxef44qqSKZHk3tGYIYtDV7wcUsaGuuRufA9UHFZVkXtFgRT7
	ZyLNHPHoKwXpxMCb54sNCCpiB7xuLarWuwbbTXE+NeBcoGzrzm+tyYcBypkujKjSKqyzNN
	ExD05hduN2I47hxaoaGk9NSkSuwEqB2xJ+Vj4/s2c2TIQo2Gj7QHf6XndUHPEQm+m/YWp5
	xmKlJjRzM8w77P6eF8SlooWaeAoBmcIReBM73JO+XbFhM8Lq1tCi8XPThwC1HU8rn151Pa
	DFh9SL1rFnG23o4SNN4GHvMfP0uUw4wDShS+bl4AzEaW7OvRmprm4z6zh82xFA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357641; a=rsa-sha256;
	cv=none;
	b=CntDiAhNlayYUe9QeBpWGQz7zOZSDYkP0c+W4s9NarhMInMPYBXnbOb2jFKrYmSPrAS0W+
	JSm0Z2+Ka66r+8qImC6QzDFgCnZl6f8eWR1/JsF1F/vMAf/pS0vY7nP8uoJBO9M1d+OK1P
	BF0kJbiuwUF6b+KMyAa+01ThKZje8qJdeW/kS9lIKfX5vB4VpEE4gTWTM26CRm/4BR26iF
	b9exQzQkbZgSPu2mbAY2xOOa1y7f2T+USHj9ClpWDKPPdCtj1y9nLdfk7DRiaJmdEGmVOq
	eaMsrToAw502YQG0Un/QFj/NGaZ3wtEHc6/ZUPQtY5iwA6Yd4p698uPW5nn2rw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:08 +0100
Subject: [PATCH 10/10] Documentation: migration-guides: describe reverting
 boot globalvars
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-10-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=1434;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I2/hjsoZkR2DQphUuNno79f/JaZbhFsm1NnpMUee740=;
 b=PkHJH1NQoSOhbJCP+Md862TLDspZlaP255SFWo1vH/4lT94iMRl94Iq+NJL9dG+pLWLfjGD+Z
 Gh5/uTfmpqzAjtvMwL06d55IAKSGgbvrdTfpPzxW646IUoz71alyIBK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035407_939989_0AFA19FC 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Describe that the boot related globalvars are now reverted
    after booting, that the .dyn infix is no longer necessary and that the order
    of the Kernel command line options may change. Assisted-by: Claude:claude-opus-5-5
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de> --- .../migration-master/boot-globalvar-scope.rst
    | 13 +++++++++++++ 1 file changed, 13 insertions(+) 
 
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
	BAYES_HAM(-3.00)[100.00%];
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
X-Stat-Signature: dk73fdhrjeh5j6oi5dq7398xasiqg6yd
X-Rspamd-Queue-Id: BDA6620296D

Describe that the boot related globalvars are now reverted after
booting, that the .dyn infix is no longer necessary and that the order
of the Kernel command line options may change.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../migration-master/boot-globalvar-scope.rst               | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst b/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst
new file mode 100644
index 0000000000..d7e322ca0b
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst
@@ -0,0 +1,13 @@
+Boot related globalvars are reverted after booting
+--------------------------------------------------
+
+``global.bootm.*``, ``global.linux.*``, ``global.of.*`` and
+``global.boot.watchdog_timeout`` are now snapshotted before each boot
+entry and each bootm and restored afterwards, so changes made while
+booting no longer leak into subsequent boot attempts.
+
+Boot entries therefore no longer need to put Kernel command line options
+into ``global.linux.bootargs.dyn.*``. The boot entries shipped with
+barebox have dropped the ``.dyn`` infix. As the bootargs variables are
+concatenated in lexicographical order, the order of the Kernel command
+line options may change.

-- 
2.47.3



