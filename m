Delivery-date: Wed, 23 Sep 2026 08:10:10 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GBG-005KQk-0C
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:10:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D2D90201FDF
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:10:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VYYeil9c;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TmwOgS8S;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143809;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IHDLo9T4ltLCMGJdGw3p3UY8COYVK1Ig/QAJCyp1ABw=;
	b=EQ55Th5tjJZ5TtFUricQg0FvyTTK4UrWJse36JJqGs2RY7O/eFXWJbKJnXHpKprfK/TRUw
	Jrox3GOcsbPxoSQ9k7lD/2tLkKzwPBCFjCSLCBp3g1c1twLoNhZDoBEtL0qTXYNfYHWH2L
	eTg1ExTBx3MVeyBLKkyh3az7ejzhhLppT53X3LIByYOcuqypyIAzi40KJPtcrraeVkKcij
	tVTdH+4IvysgOqFNT00bnB+zbOsHUCSgCGpodjN6jtR13vqpG3EpSLmqZCzktMikKvhqyY
	odfdjOXmRK70U0wa9afLRLhvUratgLwtuunfn0BLf8merwdmrjs5rJaFOKbuTA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790143809; a=rsa-sha256;
	cv=pass;
	b=M6drPebAiRkUL4V1jAugedA7iSgoHyB/F6NzmOdc7FeIqu+5qiuGWJ1lPQNXUINKj8HNAi
	LwCeHj8t7hNx08ShzoFWr22l15xM4Bk2+lXrq8Ow1NkrDfZGZJNx/WjtSPuVUpoTYB3SdH
	+w4XYx68+a2q8LOmaXOmHCzv/DoKAt4FQ6Vy4VzRVWM2jKrz10lxNVAaIjj7EVGtuQB+YL
	nU7fHo0qpGZR33kgy9DS1i1mtjNfH9vwFyy9VVzkQfVjFv8tLmeDdn9PARPu1Za9A5LDv7
	AYlekP+woqgvr0cRpZ7DYO44CpAbRXjut8Kmt7ITcdC5kASzQQqEk9EOyFec9Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VYYeil9c;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TmwOgS8S;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IHDLo9T4ltLCMGJdGw3p3UY8COYVK1Ig/QAJCyp1ABw=; b=VYYeil9cQ87KLtNGFZgzJomyrm
	59KdkjZjw9yJmH26+yl4X14F5JA2yDRRD4CO95HJDYxh1uS62N8KbC6Z6FXiHANggl39bH2+jLkJX
	IhHOUm1IwkvXVoedNUL4qSNGKwY3ooY1ej6kcIpVMOvvaSp1e0Jqa57ilE42t8nhdRDw8hOYR1R/r
	le+Z2aoGdaJEcZ1ILkwS8B1soDqxxgRKqCgHwo4dUqC4Nw3hXCnj77zufS4ntJMEhpJs51zl8VV0N
	aubnQimad/TRXuPTMcjTJZeW6xejRIDGT4AcBvZBDNA2JU/xie9qek5voP8ugJrIsEl2UZGCIM7zF
	CVoVIhXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9G9u-00000007F3W-0MjJ;
	Wed, 23 Sep 2026 06:08:46 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9G9q-00000007F35-3FM6
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:08:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D58E20026F;
	Wed, 23 Sep 2026 08:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IHDLo9T4ltLCMGJdGw3p3UY8COYVK1Ig/QAJCyp1ABw=;
	b=TmwOgS8S3Ivx/i7wWWfxAr7xy4i1olVftCXdTi941FHxlL8lK9Qck0v1dGtCPS3U8lY9rf
	qUHKMG1StWtofnQOXnyMRvRVLH055T3dA6TpH8he/U7yPjxK5l4q0S2eMyeErp9NsSLeLm
	PdEYQ9wa172U/esIGNPOIDLjX08BnvOM4u67kaKfThjW4MRUmMwwvwCHWvfctt9H6umZvg
	TDAGKbsNWPjgSUPiZ1IFqFV76jeazE74J/wFOXKCxM6ExYWCwdj91pwI3WcWDq037IAQf2
	ml3eoHuxQnu3IphSqVtAPl+598j2PqXLDNteM/bIK+7CSt/eO4lbH7sR6t31Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IHDLo9T4ltLCMGJdGw3p3UY8COYVK1Ig/QAJCyp1ABw=;
	b=EYWmaFNwJppDv/xZnHCQ6NhSFubK8YfTasWX5MqhuA9LvtjGbDXboaq4Z0h7DVui1FgMc7
	iKcy43a0PhktsCSx16IBw1/+iNAmvnzRLhb2ApkHmA8umIqdd6BkhrkmTdQzIK8jGxlY5q
	gOSAw7TGH+6NRgUvgDAZjAu+S9rZzragnAfzwrkiBq9ebbHGswTnxbDG1tp2AmrhXsFd+0
	JpkTJnmbKl7m8FjIR1y92Ge6XGK0uBOt0okcboXNXQREiQIc8p8RjWQQjanIp5xY6vpalF
	CnlfTiCdNYeCDAuvKAVsVeRSKmif8XG1CorLoxSAOUGA2pPLJbV7xZdpoJ5YIg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790143719; a=rsa-sha256;
	cv=none;
	b=V9MkIvFQQsWHLv5haASNYLI55DHlptii7HidycFa2QqSBYwGFMy/VQIzNkavu55p1mQm2z
	s1UY9O28jpp4ePe0yGjqxSlhNFXpwLHXzhp3wNWg1QfX1ikXFpLLcaokf2ZuY7g6iVyGEc
	Gj+K19sSmPget+WPIQkACKiGnubg4qq+b0dRGjE4NGgIcSiOfm4QJTVo9lPa0Z7ynOq0lY
	mPqefLmUY+8A8IaF8MCRO0CQIOfTu89za/ycivHh16pwEHjzmpD0/+KrZNo2AFU43PeMKs
	ILCg3tg4rpNy65zSuLex7+6Pv5F3brw+183OpRavjH3M2molFlFR7YR715u73g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9G9n-002M4I-0J;
	Wed, 23 Sep 2026 08:08:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9G9n-0000000BoZV-08Ag;
	Wed, 23 Sep 2026 08:08:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260922124600.1556201-1-a.fatoum@pengutronix.de>
References: <20260922124600.1556201-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] treewide: replace git.pengutronix.de addresses
Message-Id: <179014371902.2815970.10914024528471443453.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:08:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_230842_994210_EAF3ED39 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 22 Sep 2026 14:45:59 +0200, Ahmad Fatoum wrote: >
    Our public-facing git server has not been spared from crawlers and slows
   > down to a crawl on occasion as a result. > > All git.pengutronix.d [...]
    
 
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D2D90201FDF
X-Stat-Signature: kjqtwsfoooyys3rpwqtz1ade9bjtq6cq


On Tue, 22 Sep 2026 14:45:59 +0200, Ahmad Fatoum wrote:
> Our public-facing git server has not been spared from crawlers and slows
> down to a crawl on occasion as a result.
> 
> All git.pengutronix.de links in the barebox repository are also mirrored
> on Github. They also have availability issue, but less pronounced, so
> point at those instead for now.
> 
> [...]

Applied, thanks!

[1/1] treewide: replace git.pengutronix.de addresses
      https://git.pengutronix.de/cgit/barebox/commit/?id=2484dce3741d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



