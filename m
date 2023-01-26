Delivery-date: Thu, 26 Jan 2023 08:53:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKx4A-002Rzx-U7
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 08:53:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKx48-0000Ul-7A
	for lore@pengutronix.de; Thu, 26 Jan 2023 08:53:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eL2JDTKZ8HxvRTq23lxZdqgW1G2rk7uhXXb/9tLSa6w=; b=QvxAdYGcqZpjcni4L1MZQYR4Su
	Lu0PfGaa5WXrthCEpTCh1MIuMZ4+qo0cPESdAp2nnbvwFB4spLdwDbu/w8l+jzfIgxrUKJZpOIxjX
	qh2BteQH7e+6jFdrWN14H9cbEOpJhnxpZs+5ipyoXMZB261kH3RSPYxtnECTdQhr8niUEhmpwHAFz
	ZYdsAhdBNa9CfwWX/YPXl+PoHpQ9zRYhWUUl4urHmv8S7TBwwu3PuI94sBCf/l/S6qWZEABSc9/8R
	hC4j8yoS+s+th2xc7BOizMl0CQHp4132qjtAG0LJZ4i1Hm5mfo0h8EDn/lg6rUQJT8sdWAt4Y7Bls
	s/aVq/sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKx2i-009tSR-BP; Thu, 26 Jan 2023 07:51:32 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKx2c-009tRU-JT
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 07:51:28 +0000
Date: Thu, 26 Jan 2023 18:50:30 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674719477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eL2JDTKZ8HxvRTq23lxZdqgW1G2rk7uhXXb/9tLSa6w=;
	b=DATlBJJ+SFixTvdWmtPmXyYwK45CizW4p5AZqAg+Zunqx0Px9+kQdzR0UJfb0cjgjGN8Gv
	rDiX9rN4xI4huVYUlX5qIpA4kEbmGCpS8LtRceE5uuNR/nfgpBzOmTra4ACseEJXB8z05h
	GDUygcSm4OnCWe4gdWnuW6A47Yfznjcj2J8lRWy3KG/ul5pfVQ2cB+7f/JRxpqExXlpNoL
	SSR0xpTmLqhVYyqT/WbeOM4V5eU2/wBcxr+SmZlfN9q5VowkglRS9m61jHfBCLv99ryPUT
	bO8WdrZ1YFQB4ELZrnAR+tacKddJ2jLNDd82ohARUDzVq+Kuax+NZmjPzYHsFQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9IwxqnzVSIvKbr1@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-2-contact@jookia.org>
 <20230125193357.tdtpryxe5au6vne6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125193357.tdtpryxe5au6vne6@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_235127_391907_F5936AF6 
X-CRM114-Status: GOOD (  30.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 08:33:57PM +0100, Marco Felsch wrote:
> Hi John,

Hello,

> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: 2023 John Watts
> 						^
> I'm not sure if this is required, but can you add your mail address
> here as well?

Sure!

> 
> > +
> > +#include <common.h>
> > +#include <deep-probe.h>
> > +
> > +static int novena_probe(struct device *dev)
> > +{
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id novena_of_match[] = {
> > +	{
> > +		.compatible = "kosagi,imx6q-novena",
> > +	},
> 
> Nit: could be a oneliner.

I'm not sure I understand. I copied this from another board.

> > +	/* NOTE: RX is needed for TX to work on this board */
> > +	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D26__UART2_RXD);
> > +	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D27__UART2_TXD);
> 
> Can we add a newline in between to make it more readable?
> 
> > +	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
> > +	pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));
> 
> Here as well.
> 
> > +	pr_debug(">");
> > +}

Okay.

> We could rewrite this to:
> 
> 	if (bootsrc == BOOTSOURCE_SERIAL)
> 		imx6_barebox_start_usb(IOMEM(MX6_MMDC_PORT01_BASE_ADDR));
> 	else if (bootsrc == BOOTSOURCE_MMC)
> 		imx6_esdhc_start_image(bootinstance);
> 
> 	pr_err("Unsupported boot source %i instance %i\n", bootsrc, bootinstance);
> 	
> 	hang();
> 
> or use switch-case.

I'll do a fix with a switch case. I'm not a fan of having the style you just
described because it's not immediately clear that _start_usb and _start_image
are the end of the function. :)

> 
> > +}
> > +
> > +static void boot_barebox(void)
> > +{
> > +	void *fdt = __dtb_imx6q_novena_start + get_runtime_offset();
> 
> The get_runtime_offset() can be dropped here since we already relocated.

Ah okay, that helps.

> Also we could move this function into the entry_function.

I like the symmetry and verbosity of having the two code paths both named,
it makes reading the entry a bit easier.

I have a habit of moving things to small functions that describe what they
do instead of writing comments.

> > +
> > +	imx6q_barebox_entry(fdt);
> > +}
> > +
> > +ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
> > +{
> > +	imx6_cpu_lowlevel_init();
> > +	relocate_to_current_adr();
> > +	setup_c();
> > +	barrier();
> 
> After reading the setup_c() and the cache-armv7.S code I think we don't
> need the barrier() here.

Lots of other i.MX6 platforms use this. Shall remove though.

> 
> > +	if (!running_from_ram()) {
> > +		imx6_ungate_all_peripherals();
> > +		setup_uart();
> > +		load_barebox();
> > +	} else {
> > +		boot_barebox();
> > +	}
> 
> This could be re-written to:
> 
> 	imx6_ungate_all_peripherals();
> 
> 	if (IS_ENABLED(CONFIG_DEBUG_LL))
> 		setup_uart();
> 
> 	if (!running_from_ram())
> 		load_barebox();
> 	
> 	boot_barebox;

As Sascha said, this isn't the DEBUG_LL, but I again have kind of the same
function where you can't tell that load_barebox is an exit.

I wouldn't mind something like this:

 	imx6_ungate_all_peripherals();
        setup_uart();
 
 	if (!running_from_ram())
 		load_barebox();
 	else
 		boot_barebox();

But do we want to setup uart twice? I guess it doesn't matter.

Thanks for the review,

John.


