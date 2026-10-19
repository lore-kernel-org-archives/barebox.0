Delivery-date: Mon, 19 Oct 2026 13:22:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIlRl-000aqu-1s
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 13:22:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 05349201F3E
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 13:22:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Khblb0jK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CPSlvF1V;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792408949; a=rsa-sha256;
	cv=pass;
	b=GfLQy7+i6XzPw925J336sO5PLB7qC+lyI9OyRlcxDLbTU+GR+YXcGCxVFI9yzen5TcI7GO
	hUGqTVk5TpOFX5ZJ8PSOQwGVA0+ai4dKHMdhPzhkOFDhjMUwwStyT4FKGZPWWD3y6lPimo
	2fPN5IAYfvfmku2uFUBOXlocCpnEfsT1cOJR4GjqAs1YNO63aWAPX5zWI8vW/laAqo6Jhb
	zTcTOkQ4tyVp492v4kUcGm17NuCKD77E4LXjL+kl5+c/6eVsg2FFi4w8LQVU/IHLP7ba5l
	cykRhg39wSdv59UQ840/pGNCrfRYonfRGNPwd5AufM8mYLaKGLOUE3mziPJ8Rg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Khblb0jK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CPSlvF1V;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792408949;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PXKQc+Dz0tkJAOBcNM6hhNePojKK/pK9bBnQA2fEDCA=;
	b=FmLbGLIdSk3RidrwLBi4scnQ/pOYXlQBDUHXNZeH334WouqacEqorBF0h+BHAFQP9EL43w
	b79MylYS9Tp0XiZWb0ixovvq+v7RyCl0FwwiuB4iDgVY/4DRv3pbvkylzbGRwMp/AGBCHj
	tJF6CZzHByObKP08tFqIqlxSsRMWEJareZKfRAjlcNSNSfKmNagpqi5ok+44OMWT9I1fRV
	dnfm/kxq0UEbdN69unKP0hJY2IXrg1sOnCpAZS5ThoLZZKDzTeY9QEbIQ8whzdQ0kbGOXm
	PgMqMwUPa62fs2bwqQlHOT0WbdT8GQG8K5qykIJXceJqLg2aBLGF+PMwfmd3og==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXKQc+Dz0tkJAOBcNM6hhNePojKK/pK9bBnQA2fEDCA=; b=Khblb0jKzvEAch+pTHSEs9JI/5
	zyCnFmtUcYs8EwhpsS9ICzSXCPBHJJNOBq4qTOdK+HrMKkxLnFpkYMaww1FhYuX2i5VhWOzKZ4LO1
	3G2g8J/CsCPB4sGvDYcNY63lUpyahjf0oneX8OgUKXjqmruMPj7gSiLLNr8SMaZL0ifYWccJGYjnO
	8PkTIdOqv99cemDqPcsNrdNmp8kYjPC8m9xjmT0rtex6zVAn7IPMbOfPTbhZxM4erY6ws7cEl/eCw
	j8NsJD1QdUcKLP575bdxGsd97okE6+mLqgN2Dq74jd4WeZwP+dKpnOxm+h1uN/pNN9BG3YnaflEvA
	DSoD3PEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIlQR-00000007HlZ-00uL;
	Mon, 19 Oct 2026 11:21:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIlQM-00000007Hkl-3a73
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 11:21:05 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2362B201BFB;
	Mon, 19 Oct 2026 13:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792408861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PXKQc+Dz0tkJAOBcNM6hhNePojKK/pK9bBnQA2fEDCA=;
	b=CPSlvF1Vl+Sqsy3HguTn2+9mhsj+A0vVLT3QkxFKYwRvMw6IH30t0YHPeCeg7lI85OTzdG
	ZJDby7BeN0wd7zinky2DfqJRapiUYD8q23XKaxr0aeZP+j3rhhtCE342wYt+qC/1i8DCHE
	9n0gi5k/QuZpo1OctsyegIrglzRUWdehvAy3HgWr2YsD3aB9OcsfCOqiwxqJ5MydUeayZ9
	zL6gyDMRrSYKtsILsAjLAUIyMfG4zviorBc5F5QsTpwCl+Hqv/ga+W/wLpn+E/54E+OHGk
	ftlwKlpuuvYibJxaqJxDQeNnuG6girY26GS7ukfqGLvot8E1vAmikYJsU2mfGg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792408861; a=rsa-sha256;
	cv=none;
	b=fh8BRjGIKXrho6Q6Nh6TTaExcbbuS5uFTbXo5MrmbSHML9oQ4zjz/dU/FEphF65xDAKKRh
	GVcJ6vnONwdLX7fC8Kqzg74WkZvENIVgj64o0NcRXsDsMjSSK0Fdi30KRTasb6tBUu5krX
	GCTWWmH1Z06F3Ndwxjk2xAjt3X8obk/X6vQRmgEu7Lll4P0Ne1cuszIsY6xFmA8haCfO7k
	cFBAyXZ+XqTMSMsJ29XisY1BrMs3cnjQ4Yt6VbkNbKTAjiYEud4euMkYES4zHR8OqUmmIR
	REURHLSbQQrhH6gVwxAAuBNEWN8XH5MIxvVpZsB/YclXivIcBJPSocme6IjRUQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792408861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PXKQc+Dz0tkJAOBcNM6hhNePojKK/pK9bBnQA2fEDCA=;
	b=SkJPGjyUZuTfmGu9UZ9QpFyvtjrw2LGp8f+7YNEaAnsg+RROHjAoQdKWmmb+JYrQ3QvbL5
	wIn6oxRmPVhBmzlJO5Y1PEi4+4i0yYgTZE+Z+juhKcHNxF/VFnkGmdwBaMCws3AkHkEALY
	ytxEh2TB3aLKyDyrNaVa42hR5k0K38B9iwf2ckJZxU4yBw2Y/dq8t3d4E6UqrXtQj45BXw
	BriK7Mxbash5PsPsiOTPcdkUlijFolGM+5PsncI66mh+8D6gv6rlohidD9V2aip6qvvQiY
	5tjvDIsPxXmZW/g0CUBnaiYFcAcw766J/F3HgU0jTiuRXYwtGzZo/vX890mcdA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 1A1C6FF899;
	Mon, 19 Oct 2026 13:21:01 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Florijan Plohl <florijan.plohl@norik.com>
Cc: upstream@lists.phytec.de
In-Reply-To: <20261016082240.381141-1-florijan.plohl@norik.com>
References: <20261016082240.381141-1-florijan.plohl@norik.com>
Subject: Re: [PATCH] ARM: boards: phytec-som-imx6: Add KSZ9131 PHY support
Message-Id: <179240886109.1599608.7802524484525503119.b4-ty@pengutronix.de>
Date: Mon, 19 Oct 2026 13:21:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_042103_043597_EE276F69 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 16 Oct 2026 10:22:14 +0200, Florijan Plohl wrote:
    > The phyCORE-i.MX6 can be populated with a KSZ9131 instead of the > KSZ9031
    PHY. The KSZ9131 driver reads its pad skews from the *-psec > de [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 05349201F3E
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ifyqaore1d16txi6kbnsfjnzxzwskhtt


On Fri, 16 Oct 2026 10:22:14 +0200, Florijan Plohl wrote:
> The phyCORE-i.MX6 can be populated with a KSZ9131 instead of the
> KSZ9031 PHY. The KSZ9131 driver reads its pad skews from the *-psec
> device tree properties, which the KSZ9031 driver ignores, so add them
> to the PHY node.
> 
> The KSZ9131 additionally needs the 2 ns RXC delay of its internal DLL,
> but with the "rgmii" phy-mode the driver disables it. Changing the
> phy-mode in the device tree is not an option as it would also change the
> RGMII delays of the KSZ9031 and ADIN1300, so add a PHY fixup that
> switches only the KSZ9131 to RGMII-RXID before its config_init runs.
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: phytec-som-imx6: Add KSZ9131 PHY support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e58d2233e610 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



