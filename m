Delivery-date: Wed, 03 May 2023 13:02:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puAFu-0034h9-59
	for lore@lore.pengutronix.de; Wed, 03 May 2023 13:02:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puAFr-0003QP-Qw
	for lore@pengutronix.de; Wed, 03 May 2023 13:02:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EP8R6mP4v2WFPYiMRatdJLwvlp0wzDaHZgbpsae0I3Q=; b=Pc6d2ksxFLWD1y/ZQQ3Qx5FP+S
	8CTD19N22cBFTuIaUJV23uJomEI8+DZLJSnXPjSWnwsd/J08L42AzlNGUuw8ndwKvARmGX3rUrrfE
	sv+PjYQPTmaaJg1ByWCwyHqN2XPiKH/DuWtMEEVdsKsk2i6lb590ASed9vmhP4tovAOHU22Bzssje
	CCjtXAL4+jJDXZ/wTMQbSOh0FNWOVGbeRen9Hk1gNT1Tp3L63ccCAzOE5NuXFuRNk1M5WJ/M9sISh
	zo8fHtl5m7wM3YaCKYialW+8obA/OLOlS86LxsP++z4o80EZUbxYJYZvinco4QYYepLMI/d5HY4eg
	6tnNd9Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puAEh-004KbU-2Y;
	Wed, 03 May 2023 11:01:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puAEe-004Kad-0H
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 11:01:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1puAEc-0003FO-8e; Wed, 03 May 2023 13:01:22 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1puAEb-00074K-Nh; Wed, 03 May 2023 13:01:21 +0200
Date: Wed, 3 May 2023 13:01:21 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230503110121.GC6255@pengutronix.de>
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
 <20230503101919.1826193-5-o.rempel@pengutronix.de>
 <80c80104-7665-e993-cd2a-c8a3facbdb6b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <80c80104-7665-e993-cd2a-c8a3facbdb6b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_040124_124371_0467CAA0 
X-CRM114-Status: GOOD (  24.73  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 4/4] arm: dts: stm32mp151-prtt1l: Configure USB gadget
 FIFOs for multiple gadgets support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On Wed, May 03, 2023 at 12:25:03PM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 03.05.23 12:19, Oleksij Rempel wrote:
> > This patch configures the USB gadget FIFOs of PRTT1L boards to support
> > multiple gadgets at the same time. The configuration was tested with the
> > "usbgadget -S '/dev/mmc1(mmc1)' -s -A '' -b" command.
> 
> What's the downside on configuring the FIFO this way globally
> in stm32mp151.dtsi? Should the same be done for Linux?

I do not know. It seems to be the use-case and SoC specific. Probably doing
this type of configuration in the devicetree is not the best idea at
all, but currently it is only way to do it in kernel, so let's do it in
barebox too.

> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/dts/stm32mp151-prtt1l.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/dts/stm32mp151-prtt1l.dtsi b/arch/arm/dts/stm32mp151-prtt1l.dtsi
> > index 98a9c20d6d..fecd068fc0 100644
> > --- a/arch/arm/dts/stm32mp151-prtt1l.dtsi
> > +++ b/arch/arm/dts/stm32mp151-prtt1l.dtsi
> > @@ -56,6 +56,7 @@
> >  	phys = <&usbphyc_port1 0>;
> >  	phy-names = "usb2-phy";
> >  	status = "okay";
> > +	g-tx-fifo-size = <128 128 128 16>;
> >  };
> >  
> >  &usbphyc {
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


