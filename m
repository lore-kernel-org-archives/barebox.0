Delivery-date: Fri, 30 Oct 2026 08:35:58 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMh9a-0053xB-1U
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:35:58 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A974220295E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:35:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eYnFDQde;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=T3GeJYti;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345758;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0yjZGngbLP2JsoAPDp4lE5orK2F5tLsPzE2BXR4HukE=;
	b=bYEM1q4+iEvOYcKuHSH7MqxF9g5Mqv4hd12zSdNntS7T2UW+l++CsR4AjfRwot38CHHAhM
	u7uu5R1doRMtS1djrKn2jZ28Vw+yrlgM4CxWoajw+19T5bXwG8ZpJiTLoSWt2Yr7LVX+uC
	tk1hrldaR0ChzMrHs7o9SS6RnmFFkBJ8agWnQ/b891YtsKSgMl/iY3By/vxggmAhWOz3+V
	17XHEJbD25d+al19xnruiY/e2c2ITev9MsCuLN5DL8GrRV9BKF+MBHHelhbWwg5kpMmIf7
	ahbcl7A/STSGN7oquuM+2qMGVGjqMfM4RqUqhsLjWDQmEj0TIZP8uqBPiSm9Nw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eYnFDQde;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=T3GeJYti;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793345758; a=rsa-sha256;
	cv=fail;
	b=JcV2Pn78vVWncO1iDBqrN9AMMuA/MoeqJ7wcWnRFIiXhr63pFFl99lS7gfH+0XWvu4gUHf
	gj6NewbxzdhAIQMsED/uI5hwG6a5HCugv66w2eb7Pr+6DBwINcyW6KG/l4iMArF5/QKz8p
	kFryh7P09yCnHKfeqImTgj7uKmFSs3q4wCSi039qdPegk37biyBvz3AJfEu4ne4drGx6CF
	QO4e+ZRmB+l4P1qS5C5DlOO/OFfkZ75Hqg2z8F8DPM1IYhO6ByNYaBhkPzMG98z0RJdldn
	A/qgIwaoi3f2tsQ/dEjl/O4GI10gwD0jApjPbYJaXDlKuziE+ESegc4ouDQjeQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=0yjZGngbLP2JsoAPDp4lE5orK2F5tLsPzE2BXR4HukE=; b=eYnFDQdegQehqYT/UkMBnrp/Yr
	cdRlSRE3bvIR4e5U6Gq1YvKGDQ34EAtv8m1OmqvpSKO1q9buYEUenoTOCRGEjGxY5XPsHzcOs7XJ6
	9r//AcSlfbrWkt2tFvAX+64E46G3NezzKF8C3o5s90HhvoBu2R0Atss2HpTJ8NpdXY8cqz++1Uu56
	oMHWhNiGScEpiJzlET5ye3Vztkkq7pxqeZRAYYnO8jERdqoDZxfbkEP5igVOCdYKlN9GqaUKcc8xT
	rFNre4B8QrSnH3ekRl3lPE/qHZX4uYQwl1cDXbKVnCP2wetMNEyU3PF6cmc/+jKgNoj0562xgVY8p
	YXQJxPzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8U-0000000Azyo-0Vwy;
	Fri, 30 Oct 2026 07:34:50 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8O-0000000Azwr-28GF
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:34:46 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 057042007F9;
	Fri, 30 Oct 2026 08:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0yjZGngbLP2JsoAPDp4lE5orK2F5tLsPzE2BXR4HukE=;
	b=T3GeJYtiIz3gtQqc6+q01Py+iPsmu2TC6vgG0NgZBsGYeoAVT6m0V4Tw8vj0ngmF2K8qW6
	Y7cFfPIgp319UmfEkT7o0V9Q1/skv+Rk/YQVcFfsXXWcR2VglavL1/+R3ldfCPCNrx3Gkp
	gdHUTtP0KmE7beWHVLy5nozfoJb2YBezuv7IlQOdX3VrDup0cWRkJUDXqR/jpeV4lEdhyl
	w9pdVhKSqpl0C7HCDEUvpTGGhhYYqlHTp4d8CAThkJDR+GAPauwatNUqGyEMZUa2RjIe+Z
	zqdYTImeNwo8XmZmXEIE0+H9nFRKHLS8bFWM48XloYROpDMvafLk9F/sZcmPHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0yjZGngbLP2JsoAPDp4lE5orK2F5tLsPzE2BXR4HukE=;
	b=Bzq7TGIhan5LxdJz3zLPzS9ctHu+Jr8nQiPQAg1FktsLFY8JL5RpbX41u5gpHswWlLKgbF
	zUEgbLicv/HkdFBh1UelAkpfb1Bl+SY0loukDkGzpeciOHiH8kcqqvl1Ke5ZeluTYnwb/g
	G5G7So5WHTxm13bummxaelg7O1UqDHR9hpYr/BZ5t+RyLcwqauywYDOVcTDpCzo09nwKmU
	wTrnQ/Bs0Yzo5b1YxkwqG/UHDCUssNFsPzbGtxqFU/7JqqtD6JqiqOf1X3yITwk6Sb9mIM
	dUBYalNz6W9bzSYvdRfmjJxDsgB/TnlzP1dgJ3/RJ4EuLbiJa5FlPaA5HKhOzg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793345682; a=rsa-sha256;
	cv=none;
	b=PoaE65oBuivPU3hie8CZsoOZYTgwae4fUhN/4TJGVNb+Im2rP0vQmkBAr0Clkcfm1T5qr7
	IxPHjBZSpqI90DGbPAwx7Ph11ftZ1EbNnl3pmYJnVTfpF3L3wkB3z6hd4nh+f6fDWLb21g
	G4FkijFpphpFPFpCk4p11fGIkucI2F23EERmxCQPltSqU0D0mJLd5rEndH9ewXq19FwE1K
	wB3Cns55JXgOEivJi625p3TyjoAMNEWvgFVXtgkJo03hOjBf1FzhFSbwLs6j03kx+Cp29d
	RqYjqGdsmXN4RsLc/cPPcfwxUulh/n/R293gmzmwy1KkvEbXRb6c/+pDh1Po7Q==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/4] boot: UAF and double free fixes
Date: Fri, 30 Oct 2026 08:34:40 +0100
Message-Id: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJBI5GoC/x3LQQqAIBBA0avIrBtQA6muEi00p5qFGhoRSHdPW
 j4+v0KhzFRgEhUy3Vw4xQbVCVgPG3dC9s2gpTZK9hJdShcGCrjxQwVJjVJpa9ygPbTpzPSH9sz
 L+34H1H03YAAAAA==
X-Change-ID: 20261030-boot-mem-fixes-e19012a6b82d
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793345682; l=853;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=30G2a9MOT3aS12jAStQKyH1PD2RRHCbDZmLmfxMKkGM=;
 b=sfiMAQSy+0yYsJmHrhupn9oFo/wzji404lpuCT7J3zz+sTgVoqecDpNC2Z0fKYrgqLnHslC9V
 5zUdYazgu4yB7dSBFEs8y1R8Ooxo2hyiuQy00JwhIeNooPQxMDHob6x
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003444_712783_79554236 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This fixes some Use after free and double free cases. Also
    bring back the information that the kernel image can be overriden to the
   boot help text. Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de> --- Sascha
    Hauer (4): boot: fix use-after-free when restoring bootm variables bootargs:
    fix double free in linux_bootargs_get() commands: boot: fix [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ygkrmzzft9g4obhqxfkeywxse7b19tpq
X-Rspamd-Queue-Id: A974220295E

This fixes some Use after free and double free cases. Also bring back the
information that the kernel image can be overriden to the boot help text.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      boot: fix use-after-free when restoring bootm variables
      bootargs: fix double free in linux_bootargs_get()
      commands: boot: fix use-after-free of overrides taken from globalvars
      commands: boot: list bootm.image in the -o help text again

 commands/boot.c   | 40 +++++++++++++++++++++++++++++++---------
 common/boot.c     | 17 +++++++++++++++++
 common/bootargs.c |  1 +
 3 files changed, 49 insertions(+), 9 deletions(-)
---
base-commit: f2e574b9c63c6da07a06179a868cae8a471ec176
change-id: 20261030-boot-mem-fixes-e19012a6b82d

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



