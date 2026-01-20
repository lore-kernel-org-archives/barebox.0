Delivery-date: Tue, 20 Jan 2026 16:05:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viDIC-003QYJ-2E
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 16:05:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viDIB-0002AI-Kx
	for lore@pengutronix.de; Tue, 20 Jan 2026 16:05:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uh7oX298M0+4bYZH94t8c08WfsbSub8bWGp2rpWYhCA=; b=BnuRYl04A8Ee0+twXdr2CqEXsB
	P2WjE3b/qqkqXcR5EvdAOrT3uFW0GhNCwH7Ad6KXAbk957SWP0dDWlbkySTjNOFXSMwUgdZvgoMYr
	F51Rbej+LCs/v9ONVbbH4EJCgcUJ+piSun2MJPlu/W2b0QqU/9rTPeMcMnaLzkWypI/mgJxraOAGw
	JUDdGMr4m2WciheyqOxZ7cPFPHrLXnYOPjho19noRTL9hXkHaFMPUR6ZfKwdT1brqGLlGTm+Qjb/Q
	u6qEoFAbtMRnxDKibEfrtB2JEEjSiN2giv++zGT83lnuRoCqPkFYUJliy87g6rcfoaFITAfDEn3/A
	M2VbyLHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDHe-000000042wS-3Q9W;
	Tue, 20 Jan 2026 15:04:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDHd-000000042vw-2jBW
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 15:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Uh7oX298M0+4bYZH94t8c08WfsbSub8bWGp2rpWYhCA=; b=JBBzNCNRd5R7MVO8k9x5/aVtRZ
	5uy1+u4+mDvc93skzgRWvEirxKyqyHj6pRd/Ng+DSPuYgwJdH8x1UAQ6tlS/2Ja3OiC1nsVvsWc0t
	2aw3DfFxI0aEwMYGcs8fQbcWbbbCfEg249M59s00+6ScBNy2bTWKPBhbyPEm6a8ogI+jRbhnX8KmH
	VuJdaW6dMw4DxrUexTfjqjKmQbhiEBXY1B1FpwcnVUjcOi1ePUbfzwBdZz/uCPVjlt9bm/37X3moE
	IcCtOTpbej/D4lZ/VcXbinRkjG1NaEsJ47/jjj56tbMbhRxrOW0hMTRSligp8ZZD/3p6Q7f6t6BfV
	SFiBwc+w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDHa-0000000EH9N-2IQW
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 15:04:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viDHZ-0001v6-Oz; Tue, 20 Jan 2026 16:04:37 +0100
Message-ID: <758e79dc-56df-491c-919f-906cdb91c56c@pengutronix.de>
Date: Tue, 20 Jan 2026 16:04:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
 <20260120-android-image-v1-2-820595a1b8a4@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260120-android-image-v1-2-820595a1b8a4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_150438_829306_A5076903 
X-CRM114-Status: GOOD (  17.25  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: add generic android image handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/20/26 3:55 PM, Sascha Hauer wrote:
> +	if (kernel)
> +		bootm_data.os_file = kernel;
> +
> +	if (initrd)
> +		bootm_data.initrd_file = initrd;
> +
> +	close(fd);
> +
> +	ret = bootm_boot(&bootm_data);

Two quick comments:

I think this feature will not be usable when
CONFIG_BOOTM_OFTREE_FALLBACK is disabled, which is a shame, because I
think normal deployments should disable that option to avoid unexpected
fallback behavior.

Here the fallback is expected though. Would it be possible to change
this, so the barebox oftree is passed along explicitly to avoid falling
into the fallback?

On a related note, this will probably trigger a warning on every boot if
the barebox device tree has a state node. Maybe we could mark dupes of
the barebox device tree as such (maybe set device_node::dev to a special
value?!), so we can skip the warning? This also bothered me with EFI
boot, which always passes the barebox DT along and leaves it to grub or
whatever to decide whether it wants to use it or if it wants to use
another DT it finds itself.

Thanks!
Ahmad

> +
> +err_close:
> +	close(fd);
> +
> +	if (kernel)
> +		unlink(kernel);
> +	if (initrd)
> +		unlink(initrd);
> +err:
> +	free(hdr);
> +
> +	return ret;
> +}
> +
> +static struct image_handler aimage_bootm_handler = {
> +	.name = "Android boot image",
> +	.bootm = do_bootm_aimage,
> +	.filetype = filetype_aimage,
> +};
> +
> +static int bootm_aimage_register(void)
> +{
> +	return register_image_handler(&aimage_bootm_handler);
> +}
> +late_initcall(bootm_aimage_register);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



