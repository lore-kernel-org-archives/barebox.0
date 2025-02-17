Delivery-date: Mon, 17 Feb 2025 15:56:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk2YG-003WUG-2N
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 15:56:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk2YF-0001lx-Ih
	for lore@pengutronix.de; Mon, 17 Feb 2025 15:56:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8n2RIIAlpbJAzP+UEbgoCZ9wNw4xU3cXJIHbIEZJwZk=; b=tAtu8V7JDruFQJeEeaVKlLNVtx
	SpScik+iEXtQJExkeetkkt3sBsrJVrkfDrC1yZOOKWs4FiAEumjeVdQySCjWX9y3DTEwZUEkaoxOY
	LhegwknLXeCAt5NU75KvwCzLbAn2Ws1DMH018YbvYZWHzeE4SVkDvsAL6srKPDgdjbPDZbFmtTXMO
	yTU6H/28Pyq5YWT+0RhFt1IMtvm21GGDR+Ir1DzVTlrl3z0lcu2m/n0COGue2Gobwn3JbyDwjiijl
	PC5w3nbd/EWwOioszsNo79Y6fhXAv70OkWrdahnhnnLPNKWbbIyMrs/7NwaElzelPaih/vda0H7eC
	FQvYbFpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk2Xo-00000004wxx-3WEb;
	Mon, 17 Feb 2025 14:56:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk2O8-00000004uui-22CX
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 14:46:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tk2O7-0008QC-2K; Mon, 17 Feb 2025 15:46:23 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tk2O6-001Qdg-2q;
	Mon, 17 Feb 2025 15:46:22 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tk2O6-002YjO-2Z;
	Mon, 17 Feb 2025 15:46:22 +0100
Date: Mon, 17 Feb 2025 15:46:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z7NLvn7piJFNmuqz@pengutronix.de>
References: <20250108153216.484573-1-s.hauer@pengutronix.de>
 <a06cfea0-5584-4173-ae9b-aafa2f5d0142@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a06cfea0-5584-4173-ae9b-aafa2f5d0142@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_064624_525906_672EECCD 
X-CRM114-Status: GOOD (  24.50  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: add am62 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 17, 2025 at 03:34:16PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 08.01.25 16:32, Sascha Hauer wrote:
> > This adds the glue code necessary for the DWC3 controller on TI AM62x
> > SoCs. The code is based on the corresponding Linux driver as of
> > Linux-6.13-rc1.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Sorry for the late review, but I have a question.
> 
> > +	/* Calculate the rate code */
> > +	rate = clk_get_rate(am62->usb2_refclk);
> > +	rate /= 1000;	// To KHz
> 
> Nitpick: We have HZ_PER_KHZ, which would save you a comment.
> 
> > +	ret = of_platform_populate(node, NULL, dev);
> > +	if (ret) {
> > +		dev_err_probe(dev, ret, "failed to create dwc3 core\n");
> > +		goto err_pm_disable;
> > +	}
> > +
> > +	/* Set mode valid bit to indicate role is valid */
> > +	reg = dwc3_ti_readl(am62, USBSS_MODE_CONTROL);
> > +	reg |= USBSS_MODE_VALID;
> > +	dwc3_ti_writel(am62, USBSS_MODE_CONTROL, reg);
> 
> It's odd to do this after of_platform_populate. A deep probe
> system would always try to initialize DWC3 without this
> set, wouldn't it?

Copied from the Kernel driver. But right, I just sent a patch to change
it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


