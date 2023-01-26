Delivery-date: Thu, 26 Jan 2023 10:15:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKyLp-002WqA-9E
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 10:15:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKyLm-00061G-B4
	for lore@pengutronix.de; Thu, 26 Jan 2023 10:15:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IjrEhjsl4pcgqyuzjgOwbStd5+WPFd3DXKDQgKIxuN4=; b=3WniAJfXkUiYFHnWIOwsHww1RR
	az+lndRJrU+8deyNMmXGnlMchstYHUfEftLheaSfofVGRy0Fp+2GBTXOdD/Y9JO8I1HAA2NFSIhA3
	40SU6VJT1ugNnAT726TGzRxaWeI/M/cAocqiZQ9AuESimH/pV575z3ldbWFy17ub7Q5Acm1dubiiH
	/omf9HNHCofY9AVDchKkOX0l5kiEFSapQveUnkmCNLqNpXDtRvi4gg2Q+2p0KA5I//e/8kZJ/b/5I
	QOf2NBWHOrjNm6WW/WG3Xuqt6Ztu2Jv5TIlfGHFcHwIyNWiOOInWvxI/3N5EqPk0xYs3k64OSOUB8
	Jgd9YARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKyKX-00AFcQ-0P; Thu, 26 Jan 2023 09:14:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKyKS-00AFbr-0s
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 09:13:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKyKO-0005jT-Hc; Thu, 26 Jan 2023 10:13:52 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKyKO-0000Ai-9q; Thu, 26 Jan 2023 10:13:52 +0100
Date: Thu, 26 Jan 2023 10:13:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230126091352.r2na3e7oyvxm6b3c@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-2-contact@jookia.org>
 <20230125193357.tdtpryxe5au6vne6@pengutronix.de>
 <Y9IwxqnzVSIvKbr1@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9IwxqnzVSIvKbr1@novena-choice-citizen>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_011356_085628_0B20B782 
X-CRM114-Status: GOOD (  38.22  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

On 23-01-26, John Watts wrote:
> On Wed, Jan 25, 2023 at 08:33:57PM +0100, Marco Felsch wrote:
> > Hi John,

...

> > > +static const struct of_device_id novena_of_match[] = {
> > > +	{
> > > +		.compatible = "kosagi,imx6q-novena",
> > > +	},
> > 
> > Nit: could be a oneliner.
> 
> I'm not sure I understand. I copied this from another board.

I meant this:

static const struct of_device_id novena_of_match[] = {
	{ .compatible = "kosagi,imx6q-novena", },

> > > +	/* NOTE: RX is needed for TX to work on this board */
> > > +	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D26__UART2_RXD);
> > > +	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D27__UART2_TXD);
> > 
> > Can we add a newline in between to make it more readable?
> > 
> > > +	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
> > > +	pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));
> > 
> > Here as well.
> > 
> > > +	pr_debug(">");
> > > +}
> 
> Okay.
> 
> > We could rewrite this to:
> > 
> > 	if (bootsrc == BOOTSOURCE_SERIAL)
> > 		imx6_barebox_start_usb(IOMEM(MX6_MMDC_PORT01_BASE_ADDR));
> > 	else if (bootsrc == BOOTSOURCE_MMC)
> > 		imx6_esdhc_start_image(bootinstance);
> > 
> > 	pr_err("Unsupported boot source %i instance %i\n", bootsrc, bootinstance);
> > 	
> > 	hang();
> > 
> > or use switch-case.
> 
> I'll do a fix with a switch case. I'm not a fan of having the style you just
> described because it's not immediately clear that _start_usb and _start_image
> are the end of the function. :)

Then an comment like:

/* This should never be reached */

helps :)

> > > +}
> > > +
> > > +static void boot_barebox(void)
> > > +{
> > > +	void *fdt = __dtb_imx6q_novena_start + get_runtime_offset();
> > 
> > The get_runtime_offset() can be dropped here since we already relocated.
> 
> Ah okay, that helps.
> 
> > Also we could move this function into the entry_function.
> 
> I like the symmetry and verbosity of having the two code paths both named,
> it makes reading the entry a bit easier.
> 
> I have a habit of moving things to small functions that describe what they
> do instead of writing comments.
> 
> > > +
> > > +	imx6q_barebox_entry(fdt);
> > > +}
> > > +
> > > +ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
> > > +{
> > > +	imx6_cpu_lowlevel_init();
> > > +	relocate_to_current_adr();
> > > +	setup_c();
> > > +	barrier();
> > 
> > After reading the setup_c() and the cache-armv7.S code I think we don't
> > need the barrier() here.
> 
> Lots of other i.MX6 platforms use this. Shall remove though.

I think so. I wondered because I saw boards not having a barrier() call
and some having. This triggered my curiosity and I checked the setup_c()
code.

> > > +	if (!running_from_ram()) {
> > > +		imx6_ungate_all_peripherals();
> > > +		setup_uart();
> > > +		load_barebox();
> > > +	} else {
> > > +		boot_barebox();
> > > +	}
> > 
> > This could be re-written to:
> > 
> > 	imx6_ungate_all_peripherals();
> > 
> > 	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > 		setup_uart();
> > 
> > 	if (!running_from_ram())
> > 		load_barebox();
> > 	
> > 	boot_barebox;
> 
> As Sascha said, this isn't the DEBUG_LL, but I again have kind of the same
> function where you can't tell that load_barebox is an exit.
> 
> I wouldn't mind something like this:
> 
>  	imx6_ungate_all_peripherals();
>         setup_uart();
>  
>  	if (!running_from_ram())
>  		load_barebox();
>  	else
>  		boot_barebox();
> 
> But do we want to setup uart twice? I guess it doesn't matter.

I think that correct :)

> Thanks for the review,

You're welcome.

Regards,
  Marco


