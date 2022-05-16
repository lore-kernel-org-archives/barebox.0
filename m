Delivery-date: Mon, 16 May 2022 17:30:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqcgC-00FiDz-Ax
	for lore@lore.pengutronix.de; Mon, 16 May 2022 17:30:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqcgA-0008NQ-VE
	for lore@pengutronix.de; Mon, 16 May 2022 17:30:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/L4qBTZdIAhW3iSdo7Q8tawzcP9QJ3zS0zUcZmh5RQ=; b=q6KH5c4sEBA7UK
	XdpCzCxcL3E0dIBwMaXuwJMdEduDSIYyH9veQj7qi5nrvUelIW4SqI5iT8b1LK4l71O+AWCfJtN7g
	o5B4oYpEEg+/j7heKmzfhwWSL4C7ePj1i5WQ/dEopOx2jDgfHmYwrFQx3ExYamoWDhkWSQiTLsvN0
	rpousLYTCuN8SFtx3xGafXAJnjP+OMU3odL4sF9wUYddm61FFrxSgpdrU4Lz0eOSsnGbEm2rI9bgR
	RS/GhIuD44qhZ37PnjIfxfXI3sIwko+Q0FZy7cX2V17aFUyTiTgamT6/qUs7/wzTEt94+L8H9xwuC
	+ZPYP3ACgo8Ipo/4tzlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqcej-008esG-40; Mon, 16 May 2022 15:29:09 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqced-008eqO-5O
 for barebox@lists.infradead.org; Mon, 16 May 2022 15:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=dmZMBTGNzVaC1MeP5eyGLWyVYcea5AI7utiJXoOMDZg=;
 b=rTUfGtZzX5RWiWUhIKyahUPTJfJQai5mV6PN64s4jurIm5L+0hoz3DBnRLd4YANZKwfB8A1j7sJ/e
 vzTCvWyIvPCgDvZkNbZDJbxAoJY4B6x/jlXG6Vn/jiufS9+INAeoLGXeL0dBGegdvEHCO+fsIM5Mcj
 lwcW3rLw38Q5y5RASklY7nLsOwvu2lMjdYBnTkwGdWanzKWAsXDQ00lM3ZRap2xdHuczP9uh1wYRmD
 24XLSy6DhNQQXBp74aUhZZVFpAVkswCpQ2nQKrnTHGLv3SQy4pM5n49YovPq23LI7QfmaaA/5UPr1L
 tneHUGaoerXTGy1ZdZ1gq8/RuOSgkjg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=dmZMBTGNzVaC1MeP5eyGLWyVYcea5AI7utiJXoOMDZg=;
 b=lNYesUehgSyXH+p578s+hSuxEfHkkrTiItuQtmL5qrP3KVWcXD8hcT866PQekOg+vIcIkDTLUGUbl
 K/EmQ1zBw==
X-HalOne-Cookie: 731d3c22cc6c095490ce994ec9ec6133f0f30c93
X-HalOne-ID: e5e4171c-d52c-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod3-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id e5e4171c-d52c-11ec-a908-d0431ea8a290;
 Mon, 16 May 2022 15:28:55 +0000 (UTC)
Date: Mon, 16 May 2022 17:28:54 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YoJttiCoFb5Ohq07@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
 <20220515193807.354903-9-sam@ravnborg.org>
 <8453b93e-905d-3df5-88f1-53eb4d4679f4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8453b93e-905d-3df5-88f1-53eb4d4679f4@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_082903_548974_E7717465 
X-CRM114-Status: GOOD (  38.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 8/8] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, May 16, 2022 at 01:15:42PM +0200, Ahmad Fatoum wrote:
> Hello Sam,

Thanks for your feedback - very appreciated!

> 
> On 15.05.22 21:38, Sam Ravnborg wrote:
> > This updates skov-arm9cpu with xload support, and we can now
> > use barebox as a replacment for at91bootstrap.
> > 
> > Only boot via SD card is supported.
> > 
> > NOTE: Actual status
> > [x] dbgu support in pbl works (can print)
> > [x] Other init stuff ifdeffed out - from at91bootstrap
> > [ ] Check what the original code used for div/mul - there is some confusion
> > [ ] load barebox.bin and boots it. Right now mount fails
> 
> Is your SD-Card perhaps 2G or smaller? The AT91 PBL MCI functions
> assume high capacity (> 2G). It's a quite ugly thing, but
> finding out whether a card is High-Capacity or not happens
> during init phase and as we don't redo init in PBL...

>From the at91sam9263 datasheet:
"Boot ROM does not support high capacity SDCards."
 
Sounds like a very plausible explanation - and gives me something to go
after.

> High Capacity cards reference start block offset in sectors, while
> older cards use bytes. On i.MX, barebox just reads at offset 0
> and all is good, but on AT91, we need to do random access, so
> we need to decide whether to use sectors or bytes. Currently,
> the driver hardcodes the sector assumption. I found this to be
> the lesser evil to the alternative: having a full MMC stack in PBL. 
> 
> If that's indeed your issue, there's a heuristic possible:
> Try to mount for High-Capacity, if that fails, assume non-high
> capacity and try again. It's not 100%, but it's better than status quo.

I will try to find a nice way to tell that we shall go for a non-high
capacity in the first place.
And then I will dig into the sector versus byte thing afterwards.

> 
> > -static void __bare_init skov_arm9cpu_init(void *fdt)
> > +ENTRY_FUNCTION(start_skov_arm9cpu_xload_mmc, r0, r1, r2)
> >  {
> > -	struct at91sam926x_board_cfg cfg;
> > +	const struct sam92_pmc_config sam92_pmc_config = {
> > +		/* X-tal is 16.000 MHz so 16 / 4 * (31 + 1) = 200 */
> > +		.diva = 14,
> > +		.mula = 171,
> > +	};
> > +	sam9263_lowlevel_init(&sam92_pmc_config);
> 
> This is needlessly fragile. Compiler is within rights to never push
> this to stack and to regenerate a relocation entry here that points
> at .data, which has not yet been relocated.
> 
> > +	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
> 
> Both sam9263_lowlevel_init and arm_cpu_lowlevel_init are global functions,
> so LR will be pushed to stack in-between, yet stack is only initialized here
> after.
> 
> Also ENTRY_FUNCTION is __naked on ARM32, so it's a bad idea to do more
> than the absolutely necessary stuff here as GCC can generate very unexpected
> code when it decides to spill to stack inside a naked function.
> 
> We have ENTRY_FUNCTION_WITHSTACK now that removes this footgun.
> Please use that instead.
> 
> >  
> > -	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
> > -	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
> > -	cfg.ebi_pio_is_peripha = true;
> > -	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
> > +	relocate_to_current_adr();
> > +	setup_c();
> 
> My preference would be set up ENTRY_FUNCTION_WITHSTACK, so you don't have
> to write naked code. Call arm_cpu_lowlevel_init() first thing, so you have
> active I-Cache. Then relocate and setup_c and only then do the SoC-specific setup.

Thanks - again very useful feedback. I will go along these lines.
> 
> > +pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload_mmc
> > +FILE_barebox-skov-arm9cpu-xload-mmc.img = start_skov_arm9cpu_xload_mmc.pblb
> > +MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
> > +image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu-xload-mmc.img
> > +
> >  pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
> >  FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
> >  MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
> 
> Unrelated to your patch, but you might know the answer: Why is there a max PBL memory size here?
> AFAIK, you use at91bootstrap to chainload barebox into DRAM, why do you need
> a PBL size limit then?
The limit is from the old days where we tried to squeeze barebox into
the SRAM, so it could be used as the only bootloader - dropping the need
for at91bootstrap.
The new approach where we do a PBL barebox and then a full barebox is
much easier when you have first understood the concept.

I will drop the size restriction in my next patch stack.

We see other at91sam boards with the same restrictions due to the same
history. I think we can safely assume there is no use for barebox as
at91bootstrap and we can drop the size restrictions.
But then I am not happy to edit old boards that I cannot tests.

I have an at91sam9263-ek board and will update the board support
when I have skov-arm9cpu done. Focus is on the skov board first, as I
have more HW to play with here.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

