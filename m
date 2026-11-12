Delivery-date: Thu, 12 Nov 2026 09:49:47 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRQV8-009yaP-2u
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:49:47 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1BB782004B4
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:49:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VRaDYzV2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Pqz6H/ij";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473387;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rZPD6IoCItScFMxLc49PJA0KgeIYB98aBPkZloWqFbw=;
	b=GTURkgfzfIgtSPJ6liMMy4snG6JOyxp6Vd3TsPq5hH+tGnHXKg+X1YEyGYwTgka/GeeiPi
	W375pLdcxSuGuEJlsjzEq1KaphEK6BjoMoTBo5u3qeF4bgDP8qjtLbpRKXVyOibCSMjBhU
	fYXAKoRsBxs6gYmhAIw70QNCEPFqAe9nfv7EtG0fWvZvJnRVUCLrLzTCercSzM1EGm9lzg
	eejm2rewwtERJKtTWlXvRr5sbrvHsd4gapyfiMWMc2XzUehkxT08RkbxW13M7YRST03mQX
	d1Z/kuvFFlqVrx0YaiegWl4/6aZ2GxQIwUg0PFfzEI1vynJPqASbkDKE+qpaYQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794473387; a=rsa-sha256;
	cv=pass;
	b=LD7vGEzVR+XqVbnAtrzZ5aIhVqVSGZ3WogY/f9EcydyBQWp/rXtF3B8R+FJ757KB6cVFI6
	6Nh40BnKO3u8Quoikzb+bxMLlslmm7ay+QAW1Ueb5uDDhjreGuavm60TpGx44/2KWTxED0
	SypeucC2M3zzMZqH6qA3HXyENCxLt4dZp194hZbptU9HDy2yGdyU0cxBcNVZQDdKbiJdBs
	2QtOry9scjFrVkjAEw016PnUBDD7qwawnaZVsbiuGaPFjcYzzH9dcUj/Kbt7sLZvMG/+XF
	xDscF0q4b4kmPrHC4qY66Y7u3oB2ErwKWGH7CBtZYhf+mXVV8lLR5iggDs0L/Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VRaDYzV2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Pqz6H/ij";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=rZPD6IoCItScFMxLc49PJA0KgeIYB98aBPkZloWqFbw=; b=VRaDYzV2l5BCY/
	0prmHvvd9Awh5YvLbDCBZF1l17iYSRXTRm4f240p2exdFr1gW6yO++vEb2eEtR4GFsB4xgIIlgUF9
	S40BlfYfK78/v2Gg0fRfT0bgLw4osskdgQxGpJGbusnK0DYinlzSm+pnDVoHG1uYh2PeRtupVIDyj
	1CuRaq7fLQGXkvJK8ZTdG/oEaMiY8UGe+CFmfrQe23IBXat/Z+HlHuqdzcngYAkOU2obcDmDpxzST
	y1NzS77klYKZvABseG9urfGTuiwCZ1ps93DJKWL4fBNNb0Moa0zeZKN0RWE7hhX3EQXY0TB/S7SAh
	czLFty8Pe/3HBaVutCzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQU8-00000009EPw-0wlf;
	Thu, 12 Nov 2026 08:48:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQTt-00000009EM0-2c6i
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:48:40 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8ADCE201A86;
	Thu, 12 Nov 2026 09:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rZPD6IoCItScFMxLc49PJA0KgeIYB98aBPkZloWqFbw=;
	b=Pqz6H/ijgM5w396PKkRMtbXcKN9CuUIOaSTgBpaD9rS/0l+acOf1CEEiFE4rfBNk3XyoAL
	ho5vXoYSz2uq4muNHkm/SASeAcPtaykPff0IOIb7vF3JX88Uvy/XMyhaa9Zt5tDcpusJWh
	7+bRxr3BUKNHf4/c2ICni+4XTO5IZ9GIe/+ineUBwT+c2qXaMilRc++6D93Dqh+EmWc7tm
	k5LzOXWVtrGdqmZ1Fqzt+QWyeDY0VCdTdes+DlvwJfEAjJ0MbJURh15kUtE7HNd0G13G70
	wL+wOEhZrRbh2SXzviybxTVPulA/klszFwn6L2xnz+zn337zQAdjIAcTb4xfuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473307;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rZPD6IoCItScFMxLc49PJA0KgeIYB98aBPkZloWqFbw=;
	b=LmE7dUSsLa1uzpceAGsVZaGDWdi4Rwk0R1TDYzRrqtuSHYtugbmZPYM/asuTXkDdfZJyHr
	kKI9muJ/R5YtL79wf/uxLMZCx02CWcHneFGibp+CiFzLMqPEMruU7XV2ZoZ7Ymc9YLHyLU
	Ww252V3nrdlN2stTVQQHdy6jbnUMadP/JiQn2bUX56hGK5tITaH0SDzRQGw5HgFarvh6BC
	qnMHTVoZOVm013NYIgiz3j5tZnc3eg4uvZVdFUBVt0GFS3s+wcO8Q0DhNLDHCDNO7GSGDx
	gbBtOIKCOV5XCut+VFp1+a3XLV33CRdlzWPq7YGIlhlhCAbECazxUJTOGeZVFg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794473307; a=rsa-sha256;
	cv=none;
	b=FLbKGB37+O07JxPhNWvZ/dD4CAiNvyuNmMcrvAaPJbjSOz4TsBcAqvgzBphJ8pGCRu8Al7
	fC7bPCduCNnoD3G+euLK2BpagICXWlfFd8P14DVB9dPhy6lXiBEYdfMtcvr1QkQePZ9Q9O
	rpb6BUWm8xGbsp+NY9kv3Y++QLsaKe5goB4Ci8WJFmt4RUKvUYO3Jz5LNYZ4ehi8PoVz4l
	LmlUBM9xdt7CaVY2U3QDcPYLSkJ1ukvwSHpjk6sxIpyQIE61c1CR6Tr2SAD1/gx83wLPa4
	FP6sgwozn0sVlaLx4NvlKtTeY12fNVKtmqf9Dcki/ZMngaoy7B+5NMO7BoYvuw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <13ab8584-d716-4047-be42-4b67fa7032e6@pengutronix.de>
Date: Thu, 12 Nov 2026 09:48:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] sandbox: defconfig: enable boot overrides and devboot
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
 <20261030-devboot-v1-5-ab9dd3a92c66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-5-ab9dd3a92c66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_004834_273629_632133F9 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 15:13, Sascha Hauer wrote: > Enable boot overrides
    and with it devboot along with the devboot > snippets, so that the devboot
    tests run on sandbox as well. > > Assisted-by: Claude:claude-o [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1BB782004B4
X-Stat-Signature: 8f7c6mcxjxs4b4uqfnpdz8gm57aexp5b
X-Rspamd-Action: no action

On 10/30/26 15:13, Sascha Hauer wrote:
> Enable boot overrides and with it devboot along with the devboot
> snippets, so that the devboot tests run on sandbox as well.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/sandbox/configs/sandbox_defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
> index 5b2cfdd515..46f1270178 100644
> --- a/arch/sandbox/configs/sandbox_defconfig
> +++ b/arch/sandbox/configs/sandbox_defconfig
> @@ -4,12 +4,14 @@ CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
> +CONFIG_BOOT_OVERRIDE=y
>  CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_CONSOLE_ALLOW_COLOR=y
>  CONFIG_PARTITION_DISK_EFI=y
>  CONFIG_DEFAULT_COMPRESSION_GZIP=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DEVBOOT=y
>  CONFIG_DEFAULT_ENVIRONMENT_PATH=""
>  CONFIG_STATE=y
>  CONFIG_STATE_CRYPTO=y
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


