Delivery-date: Fri, 27 Nov 2026 10:14:38 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWs2Q-003mAv-1I
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 10:14:38 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D695C2007F9
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 10:14:37 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KGDT+56W;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FoJHHlJb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795770878;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ElDZFwJhoEiGni3HmS1KqqfLjoJWvvg1K5sP5DrL+mc=;
	b=Ys41amP8J4A4XAibOiSHw3aRHfQx+ygwx0OBS/DbvWaLz4yKl4k4w+XybnJKwkagDQXpCr
	Vy6MnzqYwzsTpjYNnUKfs4NEXQKHe/Ny9Ht0X/0aYDGpNMAa7EI4HnZopLD61x0ZuHHxzu
	W23lq8fGNx2s7qEnhb9FX/6I56+dZ9ikDdhpxh01HLCbFNqw0MJNAPBGTOZbOMA8E23g0i
	AT3loTov+LkJbD5jW8lJ2msaoM8DdLP9PQf5tqO1gydNztImmenizgc/FYg8Q2cV8hTn16
	dOXBOhC3z6ZhJf27gT7O29dCiu77hUJmCHwHnsgz3V2iMlzkFhQTQnu2QQK7dA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KGDT+56W;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FoJHHlJb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795770878; a=rsa-sha256;
	cv=pass;
	b=GH/vvwv1w0fD+t/1dEvh7v/JpyIpdrIsEfzu0qK4dvnJVj71wLM8QI522hpBZcHZjKFPZS
	5o4dS97N49hH5ajZ8fW9osw9CRhgf5pn6NgnytFMtJMgYAQtyqyxulOA4KxZDTHxskPx6S
	mW3LOjHZM2+DpSyuukxTXNsQHBLYeQeZTpbIRd6FJv1tPhEY89mqxSLv3cpsdffoxYO6TG
	IURyuy7gQAhLDYwU4nQiZfIiAiHNlG6/nsETIgIZ0rMUAC6vmMoyvlaXevzHKyEqhNTwyW
	VT02nMCpQo/Hf8JVwOhmOCkYAPSPsB5dphvJysXooLBjxLJVuifx94BMn+vUaw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ElDZFwJhoEiGni3HmS1KqqfLjoJWvvg1K5sP5DrL+mc=; b=KGDT+56WES69fK
	9CwV9hQucWE+xkK3iKDTnsz+QJWS9uzAlvTbuGNVw/YaDCzeHzxPiVjjvwK0D/EXEHy9U55sWf+hm
	z43jxfpuar29u1HHRNlFTwxjN64MjlFmXTWzFuTgI6nFb1r7BofJb3R2Ucrl9oDo8mhK78hK3gufH
	3fnX/ZJumDzHbZRZBQzKX5xi+UwCerM5JcqFhVjhj6Cfg1soWc2SUctxkBO/9oZPMbhd6wdQj8b92
	mu2B4urduM6cl92JoMH7dWArHBilp5jn9U89CKIr2uuEhSQDQEevzPSzNzb9U0lhwW69suLGrVPx0
	/9YqFRVDMoZKfQacqLaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWs0W-0000000FOLa-2NdI;
	Fri, 27 Nov 2026 09:12:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWs0S-0000000FOJa-1S05
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:12:38 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 92EE4202492;
	Fri, 27 Nov 2026 10:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795770752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ElDZFwJhoEiGni3HmS1KqqfLjoJWvvg1K5sP5DrL+mc=;
	b=FoJHHlJbFtA7kU0D/9JK7dAxLbBkh+42hGV+hSctjYmrNWx2H2TvcbEc+AHhRqCby++yk9
	R9rNFFBmtUJkeEQ3Q/zQBXlj9UFcm0egSkkKX2I6M0I2hTFsWDFD+Ke0HGQyNQD0KWSOt/
	PiTc5cf5viA0hxbbIJB02Wu2DdwGj7MQ4GXgdPaNs8p2zMO5czFN6PB1k1ciVkfnsQBDTr
	B0zGzY0NgC7W1GS3z3soVoIvE5tDuCmt6+PIfWAsqWsv5x8RABwxz0c/6+xmvTvoAOBsom
	w96A3aEQqaSig4XMVNW9dYwkeZLpkdHHGj95BDv+W3829uOHLFewfL5cgp5VFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795770752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ElDZFwJhoEiGni3HmS1KqqfLjoJWvvg1K5sP5DrL+mc=;
	b=cvVquh96L7lfxTMAoJ5jatEcMNjbX1+h06LbMvnzqxgOdF/Q2unETMoTA3AeF6Ohpve64K
	2uR8bwdlWGHK0RZMwxvyHlJfXbg1oLKFLX/OdBRclJjp+OdzInCBPvE5x6uRcaEQ+AlFtt
	Q7Oz+7fF4NzoAsYLkgR1n1U3YtK2CRT2148SPjdGMI4PCsZlh3GNe46OICxYx8mKCiyo/P
	zuHcplf2su6ihGuTZtCOiRDeTzIpwD5clv6BoudaOcLNqI0FXhn/fDAynKfqlefDPaQ8zQ
	9Khc9nY5zc0FJUOjOwwC7WmdEsvCBDXDHl33iinEH7vlUoFBYIEDRgkNZjrWaw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795770752; a=rsa-sha256;
	cv=none;
	b=Veoy3DyWBLqbpgTNJhUBMT1p0MHm85nKM0to8YmNxwft94MHXmPLS7fSzG471xGVg0spjo
	55C1235zYzB9W4jEnLzNIDkXqeVEf+FWVBAE1Z653RDL8Tfl9BDmF6gQ2ciJ9IaVTW08ir
	v5YDFgaF/Z949051zBkcdERe/1D5i+kdh9S4Tpqg8dwG7Jn1vkuxTsvv+PcyxEhTwzJV0G
	CtVO476p4lqaX+anzZhV0GXP8HAEiiCGdV+fafcAYjNnQvvHqnyaPqW1kKPT4VS4GmhAqn
	/q2p6t8WOK2X8jSD/lDIDXHxRuj00Seq5LrEJNfV3Z742u5B0D56GsYC8GRtCw==
Message-ID: <c1c28d10-9b06-408e-9c16-321465638c5a@pengutronix.de>
Date: Fri, 27 Nov 2026 10:12:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] watchdog: imxwd: don't claim a warm reset with
 fsl,ext-reset-output
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
References: <20261127081154.3957843-1-johannes.schneider@leica-geosystems.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261127081154.3957843-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_011236_537438_413D6770 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Johannes, On 11/27/26 09:11, Johannes Schneider wrote:
    > With fsl,ext-reset-output, imxwd resets the SoC by asserting WDOG_B > instead
    of the internal reset. The external reset circuit, usually the > PMIC, then
    [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
X-Stat-Signature: gs5nf9jq7z6mfeck4th1o8n1hobqw1hu
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
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
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D695C2007F9

Hello Johannes,

On 11/27/26 09:11, Johannes Schneider wrote:
> With fsl,ext-reset-output, imxwd resets the SoC by asserting WDOG_B
> instead of the internal reset. The external reset circuit, usually the
> PMIC, then takes the SoC through a power-on reset, which clears the SRC
> general purpose registers the BootROM evaluates on a warm reset. A
> reboot mode set beforehand, such as serial download, is lost, yet
> imxwd is listed as warm restart capable and picked by reset -w.
> 
> Register imxwd as warm restart capable only when it uses the internal
> reset.

imxwd_force_soc_reset() has

if (flags & RESTART_WARM)       
        priv->ext_reset = false;

and imx21_soc_reset() then has:

/* Use internal reset or external - not both */
if (priv->ext_reset)
        val |= IMX21_WDOG_WCR_SRS; /* do not assert int reset */
else
        val |= IMX21_WDOG_WCR_WDA; /* do not assert ext-reset */


so a reset -w should not be toggling WDOG_B. Did you observe the
toggling or infer it?

Cheers,
Ahmad
 

> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  drivers/watchdog/imxwd.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index e74638f941..6e537e6c7a 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -225,7 +225,8 @@ static int imx21_wd_init_no_warm_reset(struct imx_wd *priv)
>  
>  static int imx21_wd_init(struct imx_wd *priv)
>  {
> -	priv->restart.flags = RESTART_WARM;
> +	if (!priv->ext_reset)
> +		priv->restart.flags = RESTART_WARM;
>  	return imx21_wd_init_no_warm_reset(priv);
>  }
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


