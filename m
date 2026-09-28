Delivery-date: Mon, 28 Sep 2026 10:19:40 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB6aK-007Dza-03
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 10:19:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7CCAD200044
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 10:19:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kMlJPdVE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=L8bVOHyb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790583579;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xEindD2vYbqqDQotovWSA8zXK/CBZAsYtCPfLJ95JzE=;
	b=CNz+dBTrMQtrjThm3OKT7xGhdqdRpFEahVqYaiV3ITzZZHlsIjeNWdPdz36fGBUUnQWkst
	oYYPjCUx8azymKRxpopn3tSj9jWCIlpohTtytlj0BoXTCPXT3akT8NizjgxNVyCJwgL9Kk
	uUL7XeFWRAcRCBaeZVDJa8MRaF4LjMBzhaojaXmEBBBqe5Iv3CrJ4KuQk+ZfV7QQxgRFII
	k+bWa8SVQnVJjhT3em+4C7QSbK8SldNuRUqfPt2GJ6WetecIVQqlpSrPiyGmtw8sGBpvb0
	IApreca3dnakf7uPc4poMmKWSdbrISKcM76iDq1ztxAd12mNQqW25wkLXsHz4w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790583579; a=rsa-sha256;
	cv=pass;
	b=DTV2RqO6ATQJDRF3M4Nh4kQUttRXKQXZ4MRPKDv8WwYHsvQiaIMW2gzghmbOauBH5ACsmK
	mgoL348EkE63yWuESi/KkBYZhUsVF0rMECPhVYlAa6KL5QyIoXHjBTYLmX6UT44dcyfxpV
	denMsEQOt9xCZpudjT1Ak2jBalj1vgjsP8FOtRBviH9ZEso709TbHUDPjoKAvGVXFb/O3J
	qWUf7R8Oj3QCE97jTTrkWkxeARMhxDIMpE3CqA+EIlIro5rpAnxJ8ia1N+9dCpTKQ/zyjn
	y0D/smJvJYttggCAYxFwzQJEUKLYwqodlE4OGIHrOcTI2ErLiVH3ASgvLulkFA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kMlJPdVE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=L8bVOHyb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xEindD2vYbqqDQotovWSA8zXK/CBZAsYtCPfLJ95JzE=; b=kMlJPdVEbuu5XBS3iVA+MCMcP1
	MVCTu0+pmNDIXE1LOhqnbqFqmI2FXQ7P5ZFyb2CINafQjmv1ivYv6tnVLyC/wYzK4D1TTOAuAgsBE
	M/hEc6rZZUOhcTPZuvrVaebWAfh2JDAzVT1FIuA68n36SfOGRGlVCRgizieYVAhKgVoVgM2oRJF3l
	X1oZwcEn67QoHwXHX6Sx6RXJkQj+fESGpqobTMH2gf1pNwyYAnn9+MAhqJKcMjsW4fDL9LDHD9khL
	VWmlUzbnNi6MpnI7LMRaW33K6yKpXUwL5B4Bvqajn55P/CgGiZpfX7+ttzJRfaBMToRKHS4YSie/r
	YaKOZp8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB6Zm-000000003eG-4AdT;
	Mon, 28 Sep 2026 08:19:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB6Zj-000000003db-1Lqz
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 08:19:05 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EA8EF2018D2;
	Mon, 28 Sep 2026 10:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790583539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xEindD2vYbqqDQotovWSA8zXK/CBZAsYtCPfLJ95JzE=;
	b=L8bVOHybzZItoU2nadJz7O/n8x5KQbQ/QJ1ypXhqE2UbEne6XesjlhG31bmuwFlD4dvI0q
	LOzaWZwZ8EnI7+G+WH5tZsowkVDGNeHXp/y09N2jvoq1gfwwYx/BR8+SjgrUNYkLtrAKFu
	zjYaMPMIOCJvjdIrYt8/1baZ8jQhFGlZPs0YzPbzWcAmcvgBfxxSH1+xXt8zLc0sJdznlW
	zEbVDl3aj8Vv7iFnJqNPYVgKO8dURN6bRrqjHceeDRp473FmsrT5GECikfT1YJIzDa9l+R
	xc7KVCECqBlLkqbnFv1Qkf/W/6t6TAjv0A7SYG8hDekHXlmKUgOlFAczOiwVKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790583539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xEindD2vYbqqDQotovWSA8zXK/CBZAsYtCPfLJ95JzE=;
	b=Da7l9VDhnSFDr8Dg8kiIRsHMi8dAnRAeRqwKkpsXJ+BqncIYTrm0maMn4uMDe7Zp+klnhy
	YtRujN2rtM7V+gUZeOlnwc6pWoq9CO52KR6ca+lzeSftbA642vcE7zOhb6TpETJ9TK3RJi
	IcEDixpZ5A8NyBrzFtvPtyzoyVkneu03ecn3g7+BNYCGfL6mkMZevenrJq2jqpt6dCYbPG
	cErgRrddqbjz8vkSk26ErUMZKilE+9PSWwMSMlG7Bb6u9n0NtAYbscN7H+NrvgM4edbR1S
	Z0WMLu+YaaTDxt9yeR4rUN4ryK3BZ/DAwq7SGtZDhAvCqjGX4JOLCP8UJIYtEw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790583539; a=rsa-sha256;
	cv=none;
	b=aiEWGRAHaCogCPK/YRLP63wg99jR6er9RKwKXs++QeZ6dmrafQQr0cyj2pLRQfcyg8qPWB
	bt5mhCGZxXz1LFpW1K9Sf6N6gPNIRbHkJ36wS+Uip0jLIhnhPf5x0EB9/s5qMHA64KicYz
	NYwt1OgIc7uL+nw8pjw0N5+rFW5Zjo9uFFto+UhVYBaw1jxxxk4/3IuJM8/ur0Z04Y2+tP
	HXdIJQxINQoPWhKn3ifgC0HKKs/09icYHWgQJbcoeEqEscMwyC5FUeQvNVx4JrFYiVurFL
	tnbKQmAgyBG/BVJ2bP9mkg5mdws4S+dRf34JX1XJKWHJ893sqCo19pmXV0FYrQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <d8a1924f-a798-438d-aeeb-4cc5139b254b@pengutronix.de>
Date: Mon, 28 Sep 2026 10:19:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] nvme: check for readiness more quickly to speed up boot
To: christiankbberry@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_011903_810215_F262867F 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/28/26 1:03 AM, Christian Berry via B4 Relay wrote: >
   From: Christian Berry <christiankbberry@gmail.com> > > nvme_wait_ready() polls
    the controller status every 100ms, although > the controller ma [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de,lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7CCAD200044
X-Stat-Signature: dpgqq9icye3hr99trgeyd6gf3hau7o4o

On 9/28/26 1:03 AM, Christian Berry via B4 Relay wrote:
> From: Christian Berry <christiankbberry@gmail.com>
> 
> nvme_wait_ready() polls the controller status every 100ms, although
> the controller may become ready much sooner. Every probe then waits
> at least 100ms longer than needed, and possibly twice, since both
> nvme_disable_ctrl() and nvme_enable_ctrl() wait for readiness.
> 
> Poll every millisecond instead, as Linux does since commit
> 3e98c2443f5c ("nvme: Check for readiness more quickly, to speed up
> boot time"). The overall timeout is still based on elapsed time, so
> it is unaffected.
> 
> Tested on an Arm64 SoC with a Samsung 980 SSD in a Gen3 x4
> configuration, where PCIe + NVMe probe time dropped from 165 ms to
> 65 ms.
> 
> Signed-off-by: Christian Berry <christiankbberry@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/nvme/host/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 345707ecfe..9686268d44 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -173,7 +173,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
>  		if ((csts & NVME_CSTS_RDY) == bit)
>  			break;
>  
> -		mdelay(100);
> +		udelay(1000);

Nitpick: I'd prefer mdelay(1); but you don't need to resend just for this.

Cheers,
Ahmad

>  
>  		if (is_timeout(start, timeout)) {
>  			dev_err(ctrl->dev,
> 
> ---
> base-commit: 983608b439b803f72f12d56d0ab10bd6ba29e536
> change-id: 20260927-nvme-ready-poll-4bd640377bab
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



