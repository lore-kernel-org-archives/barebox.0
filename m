Delivery-date: Fri, 27 Nov 2026 11:38:54 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWtLx-003nR3-37
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 11:38:53 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C0F4205AC0
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 11:38:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q1hhC1yu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="GB0/fVHu";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795775933;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sDhkaED5A7PuzfkStQj344Km2einRFJQXxVO28qufo0=;
	b=LQ9KmtExiThk7U1JvZWCP0khabuFMy4RSVZbxCuxDSH39pMKQDQruOciZFZa7scymPcdhE
	ypai2fbEdHG97uxZFYhZ029M4sYrAX71HvVeHAUOtY5kHrS4btG4KLohHi8MmnOXJTW6Io
	uApCTaPWrhMI2Zjek7T+RCyZMJUolzj6pba86CjA3G/kp0E46kZAlh8sLlZq1F8NMAtVpH
	E7rQpPacd4O3zAiC8DYAEeiuAzAsk5C/4bj+YmMPC2nbufIcR4XdjtyN1gkNeqxNPPoG2H
	1jRlcrxXqjETNBwytd5uWX216nb8G0//FK/VQk0Te5/9R5pRUJG4T7sewwTMzA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q1hhC1yu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="GB0/fVHu";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795775933; a=rsa-sha256;
	cv=pass;
	b=T0Kk2hvEneM2z9xiZ31b/PKGvyRcoFKIXhGNSWZxemchcy55XREaEQ610uvyef62JTBbYy
	lzqpm2MB6m4/yaRYWOP6jn6rGlRBy2YjL1yRQBnnH6KNf9GhhvIxoFiTDM6AeHXlr5V5YN
	jO42tU0Cf1ET/1rfCIaEW6Sot0KnAUFRtj2lZZ7c1xAuFqLIni4Vo367cKjY6N1ITHOa8O
	xmQ11YjXJ3Tv/PrdncPkGTnrdk/rHoIPR5JoGdn+zcFd+NwPdyEogPXWcSdAulhCi0JyZE
	CP/jblA6WEjhQNUTohnfq9N6CXhQsqL2sriLTCf/W2q2SJPfGstdp0jDnoiA4w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=sDhkaED5A7PuzfkStQj344Km2einRFJQXxVO28qufo0=; b=Q1hhC1yuG53z4W
	t7xZDdbQ/cH4sfa/4DNGlwC5dI6cfF/OJy7hzSOY8FaPM9ISvuqU75qlh5pKCFouaONtkXAFMmxOW
	3sY3Ub5cJaVKrCbHQJe3r7rspf4pCMbCGQ+5QfbkXXANNdGtOlIz7Zm68I0Imgf2CnuWGwEi8gV2s
	Ajx6gyfMjaEndzeWBXXk6xCgH+ivIfw4ki2hyaU1FB+QMPXIBz2K5JQ4lsGaIR6NoQdjCEvHybnF6
	POiBDIMGy4l5dw6TxDLrwgaB1iEwjelaNqeQP89ZaT535uVFt3W5KJQkYR1pbxzcYI9aWZGwbkflR
	q3z+Yi2KMLMNSawOthPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtKZ-0000000FcyX-1mel;
	Fri, 27 Nov 2026 10:37:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtKV-0000000FcxZ-3Uwz
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 10:37:25 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C66F42016CA;
	Fri, 27 Nov 2026 11:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795775841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sDhkaED5A7PuzfkStQj344Km2einRFJQXxVO28qufo0=;
	b=GB0/fVHuqr/3TA/CGP7+EVc3wSYFFcPwjrBDYFjfkF3ccDu6GVrVkcAG1/WsISpeFO9+du
	yE0ZqfOOMHks4VWFCcgk5qC9STZPLZfyyzbxAa50HK9wmdkAPoNdPFwFPmx1EZX3/tv8F3
	ipT3vc7jrncjrzmM5MvLSgqZMQYmQF/Ptd9mC27hyKYMMGyYVoJM2RneiW784q/HRVn3Mu
	HytGUomTOVt1KD6dKrkwCFkDtXfswaPm7iyaxGX750U2i6s0HhP2btsuRVu0MJgwIdMmLj
	vIZWOgXGDfO2DHA5wMxUh3HjoXdJ8FaH1+HSWPf5kPFEKDfytG9yX7GEK/sH0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795775841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sDhkaED5A7PuzfkStQj344Km2einRFJQXxVO28qufo0=;
	b=K/pFuSvnsgeIF6zTTwicqS575uCy/MNlaQHD5wKxytcT0sJ8PRG7S6DTuZkVLE+AVPhZln
	xUGM3MhRzDvGtgSz466O4hJAab7zmmKng+QNZz6zvPx2BwtX6p99EBT56WGljK01Y5YwL+
	iTIqzcxO1hKJwbh6wEXtQh6Y2lQVSwchGWQYuWbkLgRj/69exE5ftbOQ2jSAkZKjaDjagF
	AVVXintTl8eDD+pUJ3N6lAiAKM+wltmNF5in/rYEeYvMC1xxm3xXYV1eZ68XiqEMgx/NLp
	jxACSJrLWD65VdERxOKjh+nkwYj3yPD+NSRYd/DJern4znSiM6U2Vyh/VQPU0g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795775841; a=rsa-sha256;
	cv=none;
	b=RoxEEgDOdWEo03JGo4mI+j1Ot82lwpP15EXMfwK4o57rYEC2zuz5dx0PAU0lfYj16rfeyj
	jo1imP9N30iOkKtn00vGL1PupfqVkDUKF205D2N8xxWLm8WHXx9FLCVmLm3LFyEBhmM45Z
	hNt7fW7uthHTpNtX3D8xd3i/OfeylTnTt78zyUZNDID9iihV3aBNjQ8imwaD8C+bZLdyG3
	MBLypC8OBXw6XQwjHFupeXmN8971sviC8ED3IfAsrIvoD6zkjOiVCXQVhBQ7bPx/aDhW47
	Kh3sEARiKpNSx6umeUe56Vb7UHT2n7X5yVHHUQ67EbLyZZ+160H/oBpPhdQ7mQ==
Message-ID: <f8473cb3-f488-4c2a-a179-a107006e6d84@pengutronix.de>
Date: Fri, 27 Nov 2026 11:37:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] ARM: nxp-imx93-frdm: name the existing DDR timings
 for 1CS
To: Freimut Diener <f.diener@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20261127-imx93-frdm-2cs-ddr-v1-0-64f5a99b3e4b@pengutronix.de>
 <20261127-imx93-frdm-2cs-ddr-v1-1-64f5a99b3e4b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261127-imx93-frdm-2cs-ddr-v1-1-64f5a99b3e4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_023724_025510_7D99427D 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 11/27/26 10:41, Freimut Diener wrote: > Make room for a
    second timing table by adding a 1CS infix to the > existing LPDDR4 timing
    filename and exported symbol. Update the build > and board referenc [...]
    
 
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
X-Stat-Signature: kr7gq1ntdkp7citkiqqfzo5meh4fbbmj
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6C0F4205AC0

On 11/27/26 10:41, Freimut Diener wrote:
> Make room for a second timing table by adding a 1CS infix to the
> existing LPDDR4 timing filename and exported symbol. Update the build
> and board references without changing any timing values.
> 
> Signed-off-by: Freimut Diener <f.diener@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/nxp-imx93-frdm/Makefile                               | 2 +-
>  arch/arm/boards/nxp-imx93-frdm/lowlevel.c                             | 4 ++--
>  .../nxp-imx93-frdm/{lpddr4x_2gb_timing.c => lpddr4x_1cs_2gb_timing.c} | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx93-frdm/Makefile b/arch/arm/boards/nxp-imx93-frdm/Makefile
> index ac419ef7c2..82e7bbc821 100644
> --- a/arch/arm/boards/nxp-imx93-frdm/Makefile
> +++ b/arch/arm/boards/nxp-imx93-frdm/Makefile
> @@ -1,2 +1,2 @@
> -lwl-y += lowlevel.o lpddr4x_2gb_timing.o
> +lwl-y += lowlevel.o lpddr4x_1cs_2gb_timing.o
>  obj-y += board.o
> diff --git a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
> index bc48160431..d797b3b215 100644
> --- a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
> @@ -12,7 +12,7 @@
>  #include <mach/imx/esdctl.h>
>  
>  extern char __dtb_z_imx93_frdm_start[];
> -extern struct dram_timing_info frdm_imx93_dram_timing;
> +extern struct dram_timing_info frdm_imx93_dram_timing_1cs;
>  
>  static noinline void frdm_imx93_continue(void)
>  {
> @@ -27,7 +27,7 @@ static noinline void frdm_imx93_continue(void)
>  	putchar('>');
>  
>  	if (current_el() == 3) {
> -		imx93_ddr_init(&frdm_imx93_dram_timing, DRAM_TYPE_LPDDR4);
> +		imx93_ddr_init(&frdm_imx93_dram_timing_1cs, DRAM_TYPE_LPDDR4);
>  		imx93_load_and_start_image_via_tfa();
>  	}
>  
> diff --git a/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c b/arch/arm/boards/nxp-imx93-frdm/lpddr4x_1cs_2gb_timing.c
> similarity index 99%
> rename from arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
> rename to arch/arm/boards/nxp-imx93-frdm/lpddr4x_1cs_2gb_timing.c
> index 84164094d8..083e85c899 100644
> --- a/arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
> +++ b/arch/arm/boards/nxp-imx93-frdm/lpddr4x_1cs_2gb_timing.c
> @@ -1890,7 +1890,7 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
>  };
>  
>  /* ddr timing config params */
> -struct dram_timing_info frdm_imx93_dram_timing = {
> +struct dram_timing_info frdm_imx93_dram_timing_1cs = {
>  	.ddrc_cfg = ddr_ddrc_cfg,
>  	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
>  	.ddrphy_cfg = ddr_ddrphy_cfg,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


