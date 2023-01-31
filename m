Delivery-date: Tue, 31 Jan 2023 11:30:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMnuH-008isY-K5
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 11:30:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMnuE-0007Fv-6D
	for lore@pengutronix.de; Tue, 31 Jan 2023 11:30:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y4IJXJWsAHh5WxavxtacWqc5DnE08zJ2Ql5XVx3pI9s=; b=15InMKnOEwiIkcC+ujj4ZrCVe+
	9ptEro/B9KSDLUjqmrz7Vahd8rVUuooHJ1iyh6oTwQJsTIlv84sKe5+0jwPkM8AA9iWqmzINtn8UG
	SkzDt6w0K5lsf6rVCo24IZ7aYR0GX7u3XWa92Vwm42LH4mPX/OIAe+3QvvGArQvzT+B179i7jxb01
	YdJD5XKlxnOFWjseFKwFmhYmq9bP4geojPoyH/RTlGyVG4uZMea8h6pQ6pYbdV8Sk0/QKyHHVLJV1
	gg/xInOZh5pT1lU7azf1m4O0MjWCQXrnEmjAATtbitGTqgAKBlfo0fPy5QtOGJ1TxISvbrhBeZcF2
	VHsOYyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMnsN-007P8U-Rf; Tue, 31 Jan 2023 10:28:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMnCW-0076zw-Cc
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 09:45:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMnCU-0006mw-RE; Tue, 31 Jan 2023 10:45:14 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMnCU-0004ae-6L; Tue, 31 Jan 2023 10:45:14 +0100
Date: Tue, 31 Jan 2023 10:45:14 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230131094514.r5phcktdy6jvrbki@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-2-contact@jookia.org>
 <20230130201308.iqzujvfb4mek3qdk@pengutronix.de>
 <Y9gn+G5ll/lHIv1G@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9gn+G5ll/lHIv1G@novena-choice-citizen>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_014516_481755_0BBE08B0 
X-CRM114-Status: GOOD (  15.27  )
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
Subject: Re: [PATCH v3 1/4] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-31, John Watts wrote:
> On Mon, Jan 30, 2023 at 09:13:08PM +0100, Marco Felsch wrote:
> > > +#define STACK_TOP (MX6_OCRAM_BASE_ADDR + MX6_OCRAM_MAX_SIZE)
> > > +
> > > +extern char __dtb_imx6q_novena_start[];
> > 
> > Can we use compressed device-tree's instead? For this feature you only
> > need to rename this variable to: __dtb_z_imx6q_novena_start[] and select
> > 'ARM_USE_COMPRESSED_DTB' within the Kconfig.
> > 
> > An example can be found here:
> >  - arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
> >  - arch/arm/mach-imx/Kconfig
> > 
> > Sorry for not recognize it the first time.
> 
> Sure!
> 
> > > +	pr_err("Unsupported boot source %i instance %i\n",
> > > +				bootsrc, bootinstance);
> > 
> > Nit: Please align it correctly.
> 
> Just a single tab?

Alligend with the opening parenthesis so like this:

| pr_err("Unsupported boot source %i instance %i\n",
|        bootsrc, bootinstance);

Regards,
  Marco


