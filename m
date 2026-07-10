Delivery-date: Fri, 10 Jul 2026 23:37:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiIun-002Nmc-1x
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 23:37:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 783F9202032
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 23:37:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3SddWerq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bQgSfEuGOGAIfbj9/bz6hILJ7P3WDGo7J25twMvb2Xc=; b=3SddWerqeCpkm7ZCG283wRv+dC
	abu3ujrnk4VRswME0n1lT1b9ED38J83pZ2s0yQ+lukOvE4wsPP/N/7FtCN3/WQplMvvVjjwpq8X0P
	IL6d1/B1oOlATuk9XZedJjfuwdbzOwsGcdSoIXrcJ2tmoYM+L3wn50cwgHX19JwgewS0iYJhmZYBY
	0zb8qHJ+Gb2zKDfhcPWRfF7GmnMpl3BY06YlD6ABqE2SxnwZYsZzgxpFKsTD7f2UnXuzGLvqJYMxJ
	yLtmqmZNujcXfa4fjjD38mpwP1teRVY1tSA3qcA8j3qbDa2fu2b4DPe9pIRyuZsLRih4/pEauuGU/
	Uvb04SFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIto-00000005rbE-0uAT;
	Fri, 10 Jul 2026 21:36:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiItl-00000005ra7-2Hfh
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 21:36:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8CB7E20201F;
	Fri, 10 Jul 2026 23:36:39 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wiItj-0018qR-1Z;
	Fri, 10 Jul 2026 23:36:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wiItj-0000000ErZD-1lHz;
	Fri, 10 Jul 2026 23:36:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pfitzner <f.pfitzner@pengutronix.de>
In-Reply-To: <20260710-fpf-fast-auth-v1-1-5a2709d29ea4@pengutronix.de>
References: <20260710-fpf-fast-auth-v1-1-5a2709d29ea4@pengutronix.de>
Subject: Re: [PATCH] ARM: i.MX: fix fast auth wrong CSF file
Message-Id: <178371939941.3542486.11031266540737672256.b4-ty@pengutronix.de>
Date: Fri, 10 Jul 2026 23:36:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_143641_740795_E85B5E4E 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 10 Jul 2026 16:15:57 +0200, Fabian Pfitzner wrote:
    > The commit [1], which integrates fast authentication support on > i.MX8
    SoCs does not work as expected. The resulting CSF cannot be > veri [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 783F9202032
X-Stat-Signature: qqpit13hnkowba5p5nty3wtcb76z8k13


On Fri, 10 Jul 2026 16:15:57 +0200, Fabian Pfitzner wrote:
> The commit [1], which integrates fast authentication support on
> i.MX8 SoCs does not work as expected. The resulting CSF cannot be
> verified correctly by the boot rom, leading to an invalid signature.
> 
> The CST user guide documentation states in `Table 10. Authenticate Data arguments`,
> that the `Verification Index` must also be set to 0 when we use fast
> auth. This commit fixes that.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX: fix fast auth wrong CSF file
      https://git.pengutronix.de/cgit/barebox/commit/?id=deffe6346d7b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



