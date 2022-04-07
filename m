Delivery-date: Thu, 07 Apr 2022 14:47:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncRXp-00ARkM-0a
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 14:47:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncRXm-0000An-3W
	for lore@pengutronix.de; Thu, 07 Apr 2022 14:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJsCD0zTGrQJVur1Xt5TLtoP6Tyts3+joQeAPgm5ZBc=; b=GovURe0qKbmbgD
	M4ecEhSL7NvosmvPT+ybfPFVqWyWqUCfbmCrRP+s5CHO6DGgBNYCzuTO7BP39dqf6dfjNIxLVfrWM
	WLMtCt55QI1rw3KoR+J+79+U3FI0+bIKjcMb0qDG9QfD33mhiczq4eZQTgvmuE0lgxXJAYHgCbYj5
	sBDs2YogRVi+VRj3FmH0KcN5dk5dIRrtJ37uEQbe3CLaAIDh1/GW1X2dkXO2lg24znWZypi479cFJ
	72XFEwY3/BhUcS67licdH3FsUfCQy3BmvpOgt9JOu1BCQ5Atzk1iV5/2Yl06ehVu++xnnFzI2/Le9
	gVKrVzxcEHXfcvCw6/eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncRWX-00BwTn-Df; Thu, 07 Apr 2022 12:46:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncRWS-00BwSa-Lb
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 12:46:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncRWQ-0008Ni-OX; Thu, 07 Apr 2022 14:45:58 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncRWQ-0000da-Fm; Thu, 07 Apr 2022 14:45:58 +0200
Date: Thu, 7 Apr 2022 14:45:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220407124558.GC25348@pengutronix.de>
References: <20220407085933.952078-1-o.rempel@pengutronix.de>
 <daaff335-c133-e29e-ef4d-0dbe75ed63f2@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <daaff335-c133-e29e-ef4d-0dbe75ed63f2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:39:40 up 8 days, 1:09, 73 users, load average: 0.33, 0.26, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_054600_761584_9A276890 
X-CRM114-Status: GOOD (  21.22  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] ARM: dts: at91-microchip-ksz9477-evb: start using
 kernel DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 02:26:18PM +0200, Ahmad Fatoum wrote:
> On 07.04.22 10:59, Oleksij Rempel wrote:
> > This DT is mainlined to the kernel. Now we can start using kernel
> > version. At same time it will fix SPI and KSZ switch detection.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> 
> >  / {
> > -	model = "Microchip EVB-KSZ9477";
> > -	compatible = "atmel,sama5d3-ksz9477-evb", "atmel,sama5d3", "atmel,sama5";
> > -
> > -	aliases {
> > -		mmc0 = &mmc0;
> > -	};
> 
> Doesn't this change the name of the MMC device?

It is done by arch/arm/dts/sama5d3.dtsi
which is still included by this file.

> > +&reg_vcc_mmc0 {
> > +	status = "disabled";
> >  };
> 
> Why?

mmc0 is not working if this regulator is enabled and suddenly I do not have
enough time resources to investigate what exactly is wrong with it.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

