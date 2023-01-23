Delivery-date: Mon, 23 Jan 2023 10:52:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJtVR-002zob-I0
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 10:52:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJtVP-0004dB-JS
	for lore@pengutronix.de; Mon, 23 Jan 2023 10:52:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jOHYg0bxgt/odEoxWgY/dMFdhqlEj4L/OYF7Hl2BdEw=; b=wE5jh5+qkazsrAfVift6y9qlha
	S3KcFGnSCyfaAQkzFvPqooXX6wHu8y2heH7Dqvtx1dTjdUNo/oa00DYfq9qrLVP03xWYdaEAcwaGX
	xsEs/+HAzRn/dYt2Zskp8YU3P3Nmo7ytI29+QAA9+GVeIXPSdE0PVZRqrb0tB8/pgLlVDLgOqnSeI
	1SWLU6NinXLGdaX6Y8v8W/wXxUIs2m5UYi5C+kUBZr1VuF8C18QHNaMfCX0lmut7x9xgcOVetJI+r
	QpIYZe6G1zIa8AwezXa51mjz4153eEUyd1/t3gMkZKEgVRuYsJl4UVB3es6rqIlB18J3aOnrb5Owj
	UI2sFMzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtU8-00Gae1-B6; Mon, 23 Jan 2023 09:51:28 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtU2-00Gacy-PY
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 09:51:24 +0000
Date: Mon, 23 Jan 2023 20:49:59 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674467481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jOHYg0bxgt/odEoxWgY/dMFdhqlEj4L/OYF7Hl2BdEw=;
	b=nph5ah0gnBtylCUwm6ECus3yvRNy5NL+F7rsgRM8MfCkoDfStX1Y2gaqCZ3CDZ/kAXQtz1
	tc4DTjRE/jGeb9Urgpy4zltUJ4tRzH+010ncLS69qJsdbGyvSwJgkrNDIfLCa17dW4BKDr
	lCR38jgu7zjnDXJWXrgzkdvSAxSCrwyIVOuibDnF10nbIj5mUJIaAgoFX0CG7Tj9uiunrs
	9h+35uQlH6rXDr8dGc08K+x39PaaVm/IfDkwxA87UZKnw1bPp4qHq/nP3Lp5wAF/OWJ2ND
	T95hyFNN1OB8ZnE/SUzabUBQ4Of6nz6Tmhcs+om8Lm6NPwFq4a7EP05PA0bWEw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y85YR6+Nc6LTTds/@novena-choice-citizen>
References: <20230121144429.3524905-1-contact@jookia.org>
 <20230121144429.3524905-2-contact@jookia.org>
 <20230123090123.5zza52xrylekf36i@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230123090123.5zza52xrylekf36i@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_015123_008461_E19989C0 
X-CRM114-Status: GOOD (  19.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/7] I2C: i.MX: Add early i2c support for i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thanks Marco,

The lack of commit message is a good catch though I'm not entirely sure
what to write in it.

One criticism of this patch I forgot to note is it it needs udelay() defined in
the PBL by the board. It might be better to move that in to this patch.

John.

On Mon, Jan 23, 2023 at 10:01:23AM +0100, Marco Felsch wrote:
> Hi John,
> 
> thanks for your patch.
> 
> albeit it is obvious we tend to have a small commit message here. The
> code change lgtm.
> 
> Regards,
>   Marco
> 
> On 23-01-22, John Watts wrote:
> > Signed-off-by: John Watts <contact@jookia.org>
> > ---
> >  drivers/i2c/busses/i2c-imx-early.c | 14 ++++++++++++++
> >  include/pbl/i2c.h                  |  1 +
> >  2 files changed, 15 insertions(+)
> > 
> > diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> > index 4e0f7e517d..6c8bdc7904 100644
> > --- a/drivers/i2c/busses/i2c-imx-early.c
> > +++ b/drivers/i2c/busses/i2c-imx-early.c
> > @@ -303,6 +303,20 @@ struct pbl_i2c *ls1046_i2c_init(void __iomem *regs)
> >  	return &fsl_i2c.i2c;
> >  }
> >  
> > +struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs)
> > +{
> > +	fsl_i2c.regs = regs;
> > +	fsl_i2c.regshift = 2;
> > +	fsl_i2c.i2cr_ien_opcode = I2CR_IEN_OPCODE_1;
> > +	fsl_i2c.i2sr_clr_opcode = I2SR_CLR_OPCODE_W0C;
> > +	/* Divider for ~100kHz when coming from the ROM */
> > +	fsl_i2c.ifdr = 0x36;
> > +
> > +	fsl_i2c.i2c.xfer = i2c_fsl_xfer;
> > +
> > +	return &fsl_i2c.i2c;
> > +}
> > +
> >  struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs)
> >  {
> >  	fsl_i2c.regs = regs;
> > diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
> > index d9910f531f..32e456d46b 100644
> > --- a/include/pbl/i2c.h
> > +++ b/include/pbl/i2c.h
> > @@ -16,6 +16,7 @@ static inline int pbl_i2c_xfer(struct pbl_i2c *i2c,
> >  }
> >  
> >  struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs);
> > +struct pbl_i2c *imx6_i2c_early_init(void __iomem *regs);
> >  struct pbl_i2c *ls1046_i2c_init(void __iomem *regs);
> >  
> >  static inline int i2c_dev_probe(struct pbl_i2c *i2c, int addr, bool onebyte)
> > -- 
> > 2.39.0
> > 
> > 
> > 


