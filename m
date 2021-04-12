Delivery-date: Mon, 12 Apr 2021 14:23:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvbV-0005Bw-Rk
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 14:23:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvbU-0004bf-SS
	for lore@pengutronix.de; Mon, 12 Apr 2021 14:23:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ldFU6d+oWn9kuh3g9uC/lMr+s2bhkGzsQYC6cPe1nwc=; b=UmOJaExp+WVMS77u1jyYDH/DL
	5eRiYRgzsHbX51KnEHPiBvnckT7GmfVLvOBGvZd/YTAsZoDswlQW1n88sHSGpqHiN3rQDPwSSUFyy
	sey+y94l9KcOw8xeBciyt+41nQl2G4klIOjWeMwpAkX7ClCCaJJC+VJS/J6rTr6axzkJGyCnX4WFh
	35fMTxpj+SIqGqZNrDJMF+A9bwu/j//GlRx/NbZyJPfmbnF6xEQSAkcX+9iitmewQtewKKJ/ssbjz
	SlTfGwF29Nd8w5FX5wQqvpUmiYyCQnsJGVB79K0/NpiWdP3+YBbNGSXd+si9e+Hq2XvUBftvDmNPz
	AMU9+Yzfw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVvaR-006fkq-MH; Mon, 12 Apr 2021 12:22:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvaM-006fkU-8N
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 12:22:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=BlMS8xtMOueA2dbydc4slctMk9/ZBIf5r5qfmAHAZVY=; b=D75U7YXm3MEVQYWa+Qae3TRkha
 HMIO0nOiLn9z1NH/kCobRR5jQdJ3DN9L9NvuOnWHpcjDhEVSm710oju0lXXfqP0jz+xNcS2+HkEH4
 3FMYnMp1IZnfXUYEKBc2SBzUcGT8vWtX9WDc1sphB396B1QoOO01bXGQIc+KUdb7PbjxfQBVsM3uU
 1cEud4ykeygijTELPbaa9Ne8dU6D1dHMa0fiBFtwa/rh4zVS1WJ4nlgagLP7n/K3FGoyiovqIO7TY
 NQUz3THbFsQXUUWglG6xlWBExy9XoBU46bZTLJCLFZoJJOb+5p1ZUqbwc4f6oJBetbjQCvJAhU9mW
 HOoKmMQw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvaJ-006DRt-NK
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 12:22:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1lVvaF-0004Vo-Rv; Mon, 12 Apr 2021 14:22:27 +0200
Message-ID: <28d4e31c21b59e3ae6fcd84617207ab02e3af02d.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
Date: Mon, 12 Apr 2021 14:22:27 +0200
In-Reply-To: <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
 <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_052231_789788_32615A5F 
X-CRM114-Status: GOOD (  29.30  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 2021-04-12 at 13:24 +0200, Ahmad Fatoum wrote:
> Hello Lars,
> 
> On 12.04.21 12:45, Lars Pedersen wrote:
> > > > +#define BOARD_RESTART_GPIO IMX_GPIO_NR(7, 12)
> > > > +#define TPM_RESET_GPIO IMX_GPIO_NR(3, 8)
> > > > +
> > > > +static void kamstrup_mx7_tpm_reset(void)
> > > > +{
> > > > +     imx7_setup_pad(MX7D_PAD_LCD_DATA03__GPIO3_IO8);
> > > > +
> > > > +     gpio_request(TPM_RESET_GPIO, "tpm-reset");
> > > > +     gpio_direction_output(TPM_RESET_GPIO, 1);
> > > > +     mdelay(100);
> > > > +     gpio_set_value(TPM_RESET_GPIO, 0);
> > > > +     mdelay(100);
> > > > +     gpio_set_value(TPM_RESET_GPIO, 1);
> > > > +     gpio_free(TPM_RESET_GPIO);
> > > 
> > > We are trying to cut down on code that doesn't use the driver model.
> > > Couldn't this be represented as a gpio-hog in the device tree or
> > > a reset line for the SPI device?
> > 
> > I can't find anything in the DT binding for the SPI/TPM driver to use
> > a reset line.
> 
> Proper way would be for this to be added into Linux then,
> but that's out of scope for the patch here.
> 
> > Can a DT gpio-hog toggle the pin? Don't you need a
> > driver for this?
> 
> You can't pulse with a gpio-hog. I assumed the TPM is in reset by
> default.
> 
> > I see the following options:
> > 
> > 1) gpio-hog with a label and use new gpiolib in board.c.
> > 2) gpio-hog and control the pin in a boot script.
> 
> If there's no straight-forward way to do it without board code,
> it's ok the way it is with one change though: I missed it the first
> time, but your board breaks multi-image support because you don't
> check whether the initcall is indeed running on your board (See for
> example imx_v7_defconfig, which builds over a hundred boards at once).
> 
> Easiest way to get this right is to write a board driver.
> See arch/arm/boards/lxa-mc1/board.c for an example.

TPMs usually don't have a reset line since it is a hardware misdesign
if the reset needs to be done within the bootloader. This opens up the
TPM to an attack where the system is properly booted, unlocking keys
which are only accessible if the correct PCR sequence is send to the
TPM. Than the attacker resets the hardware/CPU, but potentially loads
up a different bootloader or tricks the bootloader into skipping the
TPM reset. This will leave the TPM keys accessible even if the system
has not been booted with the correct measured boot values. Boards with
TPMs should be designed so that a CPU-Reset always results in a TPM
Reset as well.

Regards,
Rouven 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

