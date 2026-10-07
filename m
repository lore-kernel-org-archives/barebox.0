Delivery-date: Wed, 07 Oct 2026 14:13:16 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEQWK-00AvVd-0m
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 14:13:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7F4A3201E26
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 14:13:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1H9RfyRe;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=I9LlSvuX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791375195; a=rsa-sha256;
	cv=pass;
	b=Ls8h0EjxbYwIosNmQ7A8Hhe2nbrEv3U9Zs41zPVDnCjzyGWlM/VBwgk3grjnnEAXgMEa7s
	Tmr5yUMp7meMDZ20DiL+CP+O0OWC+QOs3nbKum2d51w562vtpRBuDOMUpWxo9aChFT/vgI
	6lNAsLwVPRPwvDN5y7PXTA6X0VwKC5thQACi7b+3hgqJg6Y1BH2balEdkKXsAnTcrxONqT
	f6wxraKyM0DwVjFBd3gczrZ8ox7otzyap6nSS8OXjWDsa/muV1dz1lhZp83219DlhcKDsp
	TXWLutv3TLUwht4R94iiGxui5aTbx87vP+iFHSTF6+EqhvhZsXnCSbzR7WgOzg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1H9RfyRe;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=I9LlSvuX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791375195;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=/6nVbpuqrVvoBrl+Je0Nz1ESefu1ZHYYfwsle908VqI=;
	b=DLVdnHiUMpw6+qg56ftcqtjcqsUyLpUKiNeertX81C70qVJa1HJhQ/AbyZZ5ClFCbzg7LU
	R13OE5X93fbGDg9qKoK9hZVrOgu1DoHaWmnXxDxXLSdKvcTtcpa0MusSP00nJvqVYz1ahG
	mj+pJ9+37YRW79hl5TjGh0BPA/0qBZidKi7ILZi78ndylMlu1vQD4pi3hVRlIXnwqDFHUH
	liaUKzXvifKrKgpy0wIEi/gY+xI4Lh+LECvynzEhuljWuJJhHnKvpuy+pEx+jCaUHC/0sW
	8/zbPo3wYypQD7VNEPwKFStcoWj4oGTYbr45wzBcFHLGlbVaxKTarHz3ez6HzQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/6nVbpuqrVvoBrl+Je0Nz1ESefu1ZHYYfwsle908VqI=; b=1H9RfyReZkUnkELCiu/0P4I7cu
	6JPksVC3U3m6xEe/gx+ckemD+qVG6BWOVo8LmAPXUAz2DLHzj66/VD1z25fW1ujFG0YR3eTOJHUJm
	OjN0JJ0ciUAP3Zj6BgfKg/9W7tgZ/KIiSsP/6mlOR5QskIavnjr7gbBD9eTdOc9Pi9ofsqU7kWkJ4
	wtvJz21nNBt+fdt/S+DDqyWlFaCSq6puGm0LL/skR71a8AQQSUQikFgXZSZtXFqJ5ngdYj7pfNEA7
	Wv/AXJo3dQpcLAbwGVSEBFESooojnuZKOdqc9knWI4qdHICzNHPDL4h5nn4x7O4ynyNmDA6xcbpDL
	wXF4fN0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEQV2-00000002PxB-0VCS;
	Wed, 07 Oct 2026 12:11:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEQUz-00000002Pwe-0xX2
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 12:11:54 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 79EDF2018E8;
	Wed, 07 Oct 2026 14:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791375111;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/6nVbpuqrVvoBrl+Je0Nz1ESefu1ZHYYfwsle908VqI=;
	b=I9LlSvuXRzARpKWlH3FRJp3kyBjeW9Ln65dHtBKEiPh7gAr2s34qlpAwvlB6JzC/wKCsvV
	mO83EJNX0l03VgzTLqDXFyjzwOQ4DptUzLjD8VKqZNb7enG7lbmLs77qXj5Dn2rubkX1iU
	8XDNpWTN4I/NCdyb1YR934r+cFiCKh8C1RSO2XXmMXyZ0mxfrG3Vsj8kdEuOsgQKSyZxLR
	hIeGGfBr5QWtdRazf07CPfgh1XUegy2OoqGEwAi9GymK8WixEF3JB6LX/GpSpjbkajOE6B
	mxUE2BNBUbSbv6Jhf8nD/lr63vnho8TGJhTsqMXwd+R3y+s4mHEpDcxwvA5wuQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791375111; a=rsa-sha256;
	cv=none;
	b=Wk73VrwxS81Ml1SAMntwb2OrwQx6Qu7fVTazEF40E/kXWzrhycWoWxUcoK0E+bDwzJYJY+
	qp2/oGhpOEd8cO5tjG+OTCvWkW8ZKGDR1d5AQKWbeP6jB6m8STODhJlgF5tFF9oPG2bsHD
	OZZjT9dQtDv+oQuSO7IOwG5KaIWGtPSc90vl0tZPT+sZfd9iiO6i7JTZihP5Rqrcvr4PcD
	kuny8oE4VKq2eLLgqlkMVEkDckfe2mfLCpAolmyklB74EEelToUZ2oxAt8spAtsq6I3enE
	k3SPJIy/fFClSwjtGUNI/j9HkPJnhSCYH3hV+y+HGaxm68T4gwcEtTzXjhvh3g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791375111;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/6nVbpuqrVvoBrl+Je0Nz1ESefu1ZHYYfwsle908VqI=;
	b=LUENzdQT7VLnPbHUA9YFGlU7vdYQ7uWOGQpu16DFDsWtu/N81YHnl/h3E3xckBy9Or1hsM
	OKHluogokkSrDDHtnzn30N39AAJJR/A2G8GfEkVNvHwROeo0kapuW7qpCdogzt9ZIUbT8K
	+lrUgVz6Y3mhKBHT+qJz6nkYLiFwxos6eZh9x7H94Qe7oFS4vSnmapLFm/6jtSFbZ/Ci1d
	p0xNegSzSwXygyrfkh+A7ij8H6EvxUDTBxXtC72LauQjGHVjF/XoaGkBaSpNPa1ww5h3nI
	Qn6aeQtTnc/wOVzUH33mMANMHRViMcUYN+U1kNT2UWflwxAyxBg8W+yXWApOzg==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1056)
	id 60E441BFAB5; Wed, 07 Oct 2026 14:11:51 +0200 (CEST)
Date: Wed, 7 Oct 2026 14:11:51 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Subject: Re: [PATCH 08/11] arm: socfpga: agilex5: initialize QSPI flash in PBL
Message-ID: <asY3B0BOBgj2GKCH@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
 <20261007-socfpga-agilex5-xload-v1-8-f8fb2d2819da@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-8-f8fb2d2819da@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_051153_497070_08D3CA8B 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 07 Oct 2026 12:55:53 +0200, Michael Tretter wrote:
    > Make the QSPI flash available in the PBL to be able to read a second >
   stage boot loader from flash. > > Signed-off-by: Michael Tretter <m. [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7F4A3201E26
X-Stat-Signature: r3dpoaig371u9d9raerici741mxb7bjm

On Wed, 07 Oct 2026 12:55:53 +0200, Michael Tretter wrote:
> Make the QSPI flash available in the PBL to be able to read a second
> stage boot loader from flash.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/atf.c | 34 +++++++++++++++++++++++++++-------
>  1 file changed, 27 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
> index 6d036d20d4b6..a59a73d1c31f 100644
> --- a/arch/arm/mach-socfpga/atf.c
> +++ b/arch/arm/mach-socfpga/atf.c
> @@ -13,29 +13,46 @@
>  #include <mach/socfpga/soc64-system-manager.h>
>  
>  #include <pbl/bio.h>
> +#include <pbl/mtd.h>
>  
> -static void socfpga_agilex5_qspi_init(void)
> +static struct pbl_bio *socfpga_agilex5_qspi_init(struct pbl_bio *bio)
>  {
> +	void __iomem *iobase = IOMEM(SOCFPGA_HPS2SDM_QSPI_REGS);
> +	void __iomem *ahb_base = IOMEM(SOCFPGA_HPS2SDM_QSPI_DATA);
> +	struct cadence_qspi_platform_data pdata = {
> +		.is_decoded_cs = 0,
> +		.fifo_depth = 128,
> +	};
>  	unsigned long master_ref_clk = 0;
>  	int ret;
>  
>  	ret = socfpga_mailbox_s10_init();
>  	if (ret) {
>  		pr_warn("Failed to init s10 mailbox: %d\n", ret);
> -		return;
> +		return PTR_ERR(-ENODEV);

This should have been

   		return ERR_PTR(-ENODEV);

Michael

>  	}
>  
>  	ret = socfpga_mailbox_s10_qspi_open(&master_ref_clk);
>  	if (ret) {
>  		pr_warn("Failed to request QSPI access: %d\n", ret);
> -		return;
> +		return ERR_PTR(-ENODEV);
>  	}
>  
> +	/*
> +	 * Failing to store the reference clock may result in an unavailable
> +	 * QSPI flash later, but is not fatal.
> +	 */
>  	ret = socfpga_agilex5_write_qspi_refclk(master_ref_clk);
> -	if (ret) {
> +	if (ret)
>  		pr_warn("Failed to store reference clock: %d\n", ret);
> -		return;
> +
> +	ret = cqspi_bio_init(bio, iobase, ahb_base, master_ref_clk, &pdata);
> +	if (ret) {
> +		pr_warn("failed to initialize bio for qspi\n");
> +		return ERR_PTR(-ENODEV);
>  	}
> +
> +	return bio;
>  }
>  
>  static int agilex5_load_bl33_piggy(void *bl33)
> @@ -92,6 +109,7 @@ static void __noreturn agilex5_start_image_via_tfa(void *bl33)
>  static void agilex5_el3_init(void)
>  {
>  	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
> +	struct pbl_bio tmp, *bio;
>  	int ret;
>  
>  	agilex5_initialize_security_policies();
> @@ -101,9 +119,11 @@ static void agilex5_el3_init(void)
>  	if (ret)
>  		panic("DDR initialization failed\n");
>  
> -	socfpga_agilex5_qspi_init();
> +	bio = socfpga_agilex5_qspi_init(&tmp);
> +	if (IS_ERR_OR_NULL(bio))
> +		bio = NULL;
>  
> -	agilex5_load_bl33(NULL, bl33);
> +	agilex5_load_bl33(bio, bl33);
>  
>  	agilex5_start_image_via_tfa(bl33);
>  }
> 
> -- 
> 2.47.3
> 


