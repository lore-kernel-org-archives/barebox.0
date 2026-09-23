Delivery-date: Wed, 23 Sep 2026 08:28:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GSd-005KwU-2p
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:28:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AE54720075E
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:28:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ILBU6eqQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JR1Pol8u;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144887;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=p2Ba4e4zIE6G8r0PpX35SVhulklpOaQOCH/rBD+fFdI=;
	b=Ad/nhfBY348/5XCCm6UETowhsj73NxAFeQfQucQNrfWskOHfw+tHm0puFa7+bTz6IpECln
	B0vd/b662+yxP3AyVTKWrQK6T77b/ekmlS549kojlCx5Wf8878D8pkYtJNNCpcOKx1BLK8
	o+UQMPulwPdeyR4m5KeL5lgmSHpnFnK8ho/ruZCof0pEfdeMHbB2hwmZLYfg3nx1N+xt7C
	ICzvOhvuH0wCPn3tHwFtqy3qRYPwqzBLbCzATk1+B9K8k8ZZmz7y6sQfRERS4o2j56rDoP
	Sdavm6olifAiP2lt2/oQiZJ3LROWgtX4121AV2ISF4VGO6gdXRumZpYaptrfZA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144887; a=rsa-sha256;
	cv=pass;
	b=eaoSMaUCs+8IUmEaBUVhcWN9voJKCCnvkOqtKs90Ic+ad5PbIc+6pEtvW7qYWKjI2N5L3G
	ALnGl3RJuSAyioyo2tcVrQWxOKPVQLpZ1S0Xc/MM5BroiBkkqfpZ1cvF4IPc35qpdlNbT+
	e6Fr9X0Equ6IVtf9H/dvld2Yx4zUrbyABafXYGNxXgd/t9DIAcCSdKTqzPju5BqwB7OR/8
	huwKt9lX1SYBZ9ZiVS6HH2GMe974lnszqHqxfplNc2o68+K8pvTqSKEYHC+dpQqFu+RcYG
	CqriN7sPPea4D+tO6A1lsCnfnCkcyn7SU0gI+FaGRcyEqP5h9DFEI2lxdU3G/g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ILBU6eqQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JR1Pol8u;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p2Ba4e4zIE6G8r0PpX35SVhulklpOaQOCH/rBD+fFdI=; b=ILBU6eqQ0G8qGiXl+BLrVKkB45
	tvYyizlRzZACaWgY7XY/cEhpf2Atxq9ppW6l57yDZGONCN+hIbt8S/EGNYLc5WQ0b//fZAOovtnO/
	yiyjjOI1KlB5ZmcCe5QF68ItbKs2U/xZd+9NnGTsaWssz3bs7kuAOkgzDfxiApAdfOXuSGFq2zocg
	kwAIQ8dBJB0sscTq6WcQQkrQy0XyiQyfrUefpKAmhGph/42hAuQgUaUPHhtvXf8meljYOLP5dLxEB
	vXfwF4ma+ULi+QPPcGzKrxo0XgZLzQEAHmVQZh8ZBjR6lv1ovm1BnYWPwxxt/WM+aGa5fACzhEFT6
	DCGulOoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GRa-00000007Gjt-2BTJ;
	Wed, 23 Sep 2026 06:27:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GRX-00000007GjH-0OAD
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:27:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3AA53201A8D;
	Wed, 23 Sep 2026 08:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p2Ba4e4zIE6G8r0PpX35SVhulklpOaQOCH/rBD+fFdI=;
	b=JR1Pol8uZo/KM3YxP/opdsnRpR99TXuvx5rh0sRFe05yPoMimTS9xnn64FIOG+zU8uyfx+
	uYGGd1hG14q7+bjHPCzkXR2pifwgFT+lCMRrG9b4Av+F/2J6sJh/AS02n9cGOn/pRTlkZt
	uWyuF6ZbsL7pOLFJd62+C1ZF+NQhdBs5yDjiKFQ82AS7gbOeQxmcgn5PyzPjJ+auxmb5mx
	YEmHF0wQpEv1Q1HWiuAx75eHjZcWRPbm6u/qqmOnrH1bkDPrpTCbTxst2pfzNqDnx+xRe3
	ATtpOb9psTq3XK8nvQoad9fBkKSisMdR1guJQd9NrI6L59an4URwKgJEPilEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=p2Ba4e4zIE6G8r0PpX35SVhulklpOaQOCH/rBD+fFdI=;
	b=ZkDl03ZjLnHqJoFujyCVNJ2HE7LpK+FRBbOMpvEgC5b6KC7K5YnvNBREbJ0wK+iICrjwbc
	18x2/11MfnqikNorCHnhlfQtoydNqaOWxmnvMlJXq+PRaThlEoo0/EEWWGbnUPEI5qnLkg
	34BQtKjwAxl82pOfD2Mwl/Zr90QBTNo4gBgbSu7jFvxd0Hfi7IVL7UkC77Wxpds2IFPN9Y
	gktBTcouT+kT+I0I40oKMstnK7unY2aM+Xr2Odjxo1tpTweVsi2dCAu4CnoDRVwzdCgtNC
	sHhjC6NMkZCP/O1t1l6Nk69nUyaAZq+4OZT/PdQMLGgl9EMqCAryrc2pITdO+A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790144817; a=rsa-sha256;
	cv=none;
	b=KeK76BODkNJXZ8rAOOlzOKK1KFX9jyrxY6UB4RH95BS9GZOlslxfzz3zsTGwxemhFPVwVF
	tIWEY6rZv0plxBEilAx7PGi7XvTTyyNCV6HHDAny4Xvldy5H5obNbmDhXlVfNfnQVzkoRC
	hetVQ0ZGr1MR7s7Z7oe06Og4mu7pSkNfmymchZwaR/bh1wCs1B0z+33uRIqCjJB35gV7JW
	YTnhc6BeUkkxMFseZeNsbdLcD9blgJktfpiAHzbVqeyUSqWnoGp68v8PFLBxNVcNgGRNRf
	xdbrTovrFphOHBn8hZxjKEUFlc3IRsmODJ5escWf4OWkU5NFs44o504iCoBWRQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GRV-002M5x-0U;
	Wed, 23 Sep 2026 08:26:57 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GRV-0000000BpYH-0KyP;
	Wed, 23 Sep 2026 08:26:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260921093646.882466-1-a.fatoum@pengutronix.de>
References: <20260921093646.882466-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] scripts: genenv: make the temporary directory writable
Message-Id: <179014481707.2819724.12866022677566305052.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:26:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_232659_291610_B807E9E9 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 21 Sep 2026 11:36:41 +0200, Ahmad Fatoum wrote: >
    genenv copies the environment directories it is given into a temporary >
   directory next to its output and removes that directory again when i [...]
    
 
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
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: AE54720075E
X-Stat-Signature: yk7bm44qjng6hir8yr76osbnd9nxujya


On Mon, 21 Sep 2026 11:36:41 +0200, Ahmad Fatoum wrote:
> genenv copies the environment directories it is given into a temporary
> directory next to its output and removes that directory again when it is
> done. The copy is made with cp, which preserves the mode of what it copied,
> so building from a read-only source tree, e.g. a Nix store path leaves a
> temporary directory nothing can be deleted from:
> 
>   rm: cannot remove '.../defaultenv-qemu_fw_cfg.bbenv.genenv.tmp/boot/qemu_fw_cfg': Permission denied
>   make[7]: *** [scripts/Makefile.env:41: common/boards/qemu/defaultenv-qemu_fw_cfg.bbenv] Error 1
> 
> [...]

Applied, thanks!

[1/1] scripts: genenv: make the temporary directory writable
      https://git.pengutronix.de/cgit/barebox/commit/?id=859a88435455 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



