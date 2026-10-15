Delivery-date: Thu, 15 Oct 2026 12:37:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIpn-00DsoK-0Z
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:37:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A2B8E201ADE
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:37:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ThnX/KNg";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="MF6h7Q/0";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792060635; a=rsa-sha256;
	cv=pass;
	b=UKONtLrM0BpYhzwxZeRh1AgOLKaVyH8txTaO9BiAYFG8OMC31j+ZhNg3ud1nUP1BZPDfKf
	6KtgP7F4yvy5oSzOdds0a07PI+dnDg0wvGsZ2NoWXPUh+koLK5QT6ypSq03Iww/89pDXuo
	UQNcJZcA17LoXoqsxbZ3qDdML3x0ifAQM945OfJzJjd8rMUD4AB961zI2MXv0QtDbbePAA
	pdorWXdnQf3GQnghLXFTSluP2ZnkiYw+gbhus/vzRs3fCUA2W8iwRf6vph05qXvR2FzQ2U
	dgTUFNjPJkMnwqfsaFTQSSnmjfzxhkc56ODSSE58qrDe84bUOeSM2e89ddMXmw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ThnX/KNg";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="MF6h7Q/0";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060635;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=X3BRCfcQvkUDbLyS+v0euDXG2XNAxgkb8SArtLF9Mp4=;
	b=az0Je/5kir46mKNnXvfTcL4dS5Y+iDwccOVA4Rcp5RSY+ZSRkYFM2kOU1prw6D/yRosWgI
	s8cQ1Oth9ZZojnZRU63vXQQrrCDQDLW/xokgjhzV89XAFI7siqPfDB4MvJ80b5WpwM/8mQ
	Vdxp+bNC8l04inn41UBt834opfFA5y7Fv1m7ABnd3TKqzvAZ5YwgbIyQo+yjiRayWd3Fla
	5EdrgN9ZadHGn3MMkD3KWLv4CculcBE6XNR45XTln/9QiewHGtFXxacfWkylTnB76PTC0/
	UJ6Z+ahjmjiPF9HFMNAUztagYn7puJZ7CzyZUS8Np32OrHg8wcDR5fNOeDtxQg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3BRCfcQvkUDbLyS+v0euDXG2XNAxgkb8SArtLF9Mp4=; b=ThnX/KNgnEmUTuOn0G0mBmiKSz
	Yl5cJhxEAlAvxwIfDGOSElzk7obLEJtIw/eZU4RB1BkZ1FxAOWmpqZ7sl13U3Xl0d5vG1FARQm76N
	/0QK12ktZGlPypY7aq3vBhoXythwwoL6G3u6HnlLyun0ZaE6LHPhOka0rgwantVWqq9/dG+j/s6F/
	PLtrFLcQEYL6dmwzSVqBacLlWMIwK3mf/5qSDdxOyfPo5DaCAIahXwKaJMuKs+VHuKxr/yG0JRNhf
	vnSlTOBTgd+pS8U/deY56ONueqihxM189SVgXvE6uGJsnOPWP+qG4qR27DUV9GPh+D0ScpYEtgufj
	YVUe851Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIof-0000000HSYf-2aCR;
	Thu, 15 Oct 2026 10:36:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIoc-0000000HSXs-294i
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:36:04 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BACCE201B6D;
	Thu, 15 Oct 2026 12:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X3BRCfcQvkUDbLyS+v0euDXG2XNAxgkb8SArtLF9Mp4=;
	b=MF6h7Q/0Zl97TwV++c/gAOQU2FEKP3fH76BeJqOwLqN6jKN47UsfU9ApJGemoiwjwktJpE
	U7CKS6xcfAEauGnbsWgR+sDQJzDXBllf6vpZbYKmGa6Hh+RBvPhA5KuwHQxSnlZThAiWDW
	UZsqx2xzgLx923FuLlFnhnnB4hBtn6i7HETNNxBDY/Jdm404sj7l9DldaAxlGN5p8VLkRE
	Os2hxJw6qkdkzq//ehucGXISvQ6dkP2LJ+LsgL2qUkAmY5VCY0JQpdKggJFfZdJuqPxhYg
	RUvW4e60UMmmE7nmKZXFEMOy1tSb5r4ckf7bxCFVNazZ2IaoacJCsEtfROUt9w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792060560; a=rsa-sha256;
	cv=none;
	b=YvhV60keHeUjfsAgJADAgEESdOrme2h2GGc75JhQH3yMEJ54Y1j87i+yvYbHk/Uc9YIhcf
	P4K3M80usr+U7RJmPT5miVMnAOEREGLK4Bv+diLPLkGw11aH1satDSCW7ORZ7JXBM61leT
	ywJQ5sNsg9VtkVMSJ+TnQgzSZKONnmsMWDuvO90qDRWK7h7Z8e7Ay423JLwf7BGYzI6GEM
	iznYflJHP+VQcjwY6PFal1KExp7ltGCAtw/k5aA4pfSxpkcXl93JYLskDAI9g/oCnmJ24t
	muY0egWctr9XHtWe+zCMuaET25gF3aRlRhUMVPfhA7P+uNnRVTRBtF3/uZ+1SA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X3BRCfcQvkUDbLyS+v0euDXG2XNAxgkb8SArtLF9Mp4=;
	b=asvJoMrfJA8aY9aVFNb1Z2eMTzob2Rt0hei3cNKDjFn8lWm7p6ZM5Yw0Ia9SvB/XTz+Qe/
	iFUk0rcnPtSOSVxxFFjYqw4eXug14GLPJ5n9UbiRYre4Cys4eS4GkgcvU4AMmE4yHoNnBc
	HPnDjOtflLZdsg2FsD4yRhyyFSsnnKrG/QMdQk/nZ2NfWR60Ead6ZrIHVPXIfUA9wH/20K
	Y6CWrOFk7ORKLaMeW5C1hXDofXSeyFxJ230t0L1sICiHLDQtJwUBkENf4oeO+AMKPxnaXt
	C/6tQN/aE2PSZV93ashwNqF1EZLLh+Xa+VymdnhDuWNAOybAj50mRsI3rXnYVA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id AFA71FF972;
	Thu, 15 Oct 2026 12:36:00 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
References: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/5] clk: imx: pll14xx: enable PLL output in
 clk_pll1416x_early_set_rate()
Message-Id: <179206056070.2007930.1407925847665265842.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 12:36:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_033602_710960_1D05494E 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 02 Oct 2026 13:35:46 +0200, Ahmad Fatoum wrote: >
    While clk_pll1416x_early_set_rate() programs the dividers, waits for > the
    lock and clears the bypass, it doesn't actually ungate the clock. [...] 
 
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
X-Spamd-Result: default: False [-60.29 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.88)[99.50%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A2B8E201ADE
X-Stat-Signature: 6crx13f3y3ywfxi88sr5tr19t8dwcmyd


On Fri, 02 Oct 2026 13:35:46 +0200, Ahmad Fatoum wrote:
> While clk_pll1416x_early_set_rate() programs the dividers, waits for
> the lock and clears the bypass, it doesn't actually ungate the clock.
> 
> Therefore, the i.MX8M early clock init sets the CLKE bit by hand
> afterwards, but it does so only for the ARM PLL.
> SYS_PLL3 is reconfigured without CLKE being touched, because it works
> out, because it's set at reset and BootROM doesn't clear it.
> 
> [...]

Applied, thanks!

[1/5] clk: imx: pll14xx: enable PLL output in clk_pll1416x_early_set_rate()
      https://git.pengutronix.de/cgit/barebox/commit/?id=2386a6205654 (link may not be stable)
[2/5] ARM: i.MX8MM/8MN: clock NOC from SYS_PLL3 in early clock init
      https://git.pengutronix.de/cgit/barebox/commit/?id=8831f6ac48bd (link may not be stable)
[3/5] ARM: i.MX8M: feed A53 cores from ARM PLL via CORE_SEL_CFG in early clock init
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb021545c98d (link may not be stable)
[4/5] ARM: i.MX8M: source dram_apb from sys_pll2_200m in early clock init
      https://git.pengutronix.de/cgit/barebox/commit/?id=d8e671542d09 (link may not be stable)
[5/5] ARM: i.MX8M: order early clock init like U-Boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=a13bb80f62af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



