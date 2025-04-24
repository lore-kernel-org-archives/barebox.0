Delivery-date: Thu, 24 Apr 2025 11:24:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7spF-004qJd-0E
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 11:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7spE-0005xX-Ag
	for lore@pengutronix.de; Thu, 24 Apr 2025 11:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UMa0QmdyLtnns2QvYpbJdOrIx9giM4xAB8q1b2jESFU=; b=ZUgrnjcLKgECl/lY0SNHOIV7oU
	yqCESLolGJdGNw2IEQY1KRaWDI+aKZ4ro8nRnNAMuiYo9s7Ofvfz974/jGZ6xjgBe7Fuo1ODr9p8r
	JUSqdUZyeaJvWGYVwyj2OwNF3Vywg8WmMEfWvcgAlvyvr2AsmPRSlj9G89xH6zjhrfHeBxBkiW6m6
	Vtc3PRsz23//wZ7aqC71RmK8jHF6FtfAP526UY8dwtL25zjLDl7zlEU1Im7DM0nS3kqzVZvajgBcY
	+YDmBuGorcCJXvah6qYWEnWAk0f/ClHTzE9ib805/1giOeEMrJLMUs/HlGY9faMo0razx5N1KJ2OA
	gcfzcc9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7soY-0000000DUWt-2xfV;
	Thu, 24 Apr 2025 09:24:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7sD8-0000000DORG-42Pd
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 08:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UMa0QmdyLtnns2QvYpbJdOrIx9giM4xAB8q1b2jESFU=; b=piuWkpXWMuvXpx7VM0sxtpYQyS
	7Yxh3AKwv2GQvGDM9InX/jBRPR6dnaxSi46IfzWgsRaaIMhcYwztcUqdDHSnu0+XGgBTbY09FVzCd
	k4T/MNcY7Ug+iKEmSKeh9vKnB8aACaH+S/pgdsr6b/B9ny65rLclfQrCoDxuGZd4y8H2gFff/Zeh/
	runTL6Sa+mixEyZ6KkHWV/Ous3mJom8fR6iQSnm5nM6M/YpU0D5VDN4o+/fC8axzOJSHK6PzdqG1B
	4GxAMftdLJkHw7dMQd2DpRCQKs+Gt4qU6gl5ZeDb2dqEhPqNraIBkb1c5r3Baa1rTq35ZUVM21RJQ
	5ewUQL6A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7sD5-0000000BdbR-2S2L
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 08:45:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u7sD0-0001Nz-Mu; Thu, 24 Apr 2025 10:45:26 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u7sD0-001r1M-1g;
	Thu, 24 Apr 2025 10:45:26 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u7sD0-001H2B-1J;
	Thu, 24 Apr 2025 10:45:26 +0200
Date: Thu, 24 Apr 2025 10:45:26 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250424084526.zelkn4bfmr73racq@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-4-m.felsch@pengutronix.de>
 <7b6f5626-6d7c-43f5-9faa-a19380237bfb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b6f5626-6d7c-43f5-9faa-a19380237bfb@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_094531_791723_3E3463EA 
X-CRM114-Status: GOOD (  22.03  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] ARM: riotboard: drop static barebox-environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-24, Ahmad Fatoum wrote:
> Hi Marco,
> 
> On 23.04.25 16:09, Marco Felsch wrote:
> > Since commit 9f868f78bc54 ("environment: use barebox environment from
> > GPT partitions") barebox can try to find the barebox-environment based
> > on a GPT partition GUID.
> > 
> > Make use of this mechanism and drop the barebox local of-partition. This
> > allows the BSP integrators to provide a proper GPT or if no GPT was
> > provided we fallback to the autom. minimal GPT mechanism added recently.
> > 
> > This also fixes environment handling if booted from a SD card since SD
> > card boots make use of eMMC barebox environment at the moment.
> 
> You didn't fully address my suggestion[1] on v1. Why not keep around the existing
> environment as a fallback?
> 
> https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de/

Argh.. I didn't noticed your reply, sry. I will answer you on your prev.
mail.

Regards,
  Marco


> 
> Thanks,
> Ahmad
> 
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> > - Adapt commit message
> > 
> >  arch/arm/dts/imx6s-riotboard.dts | 10 ----------
> >  1 file changed, 10 deletions(-)
> > 
> > diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
> > index 57817c1197a7..cca34d6dba95 100644
> > --- a/arch/arm/dts/imx6s-riotboard.dts
> > +++ b/arch/arm/dts/imx6s-riotboard.dts
> > @@ -11,11 +11,6 @@
> >  / {
> >  	chosen {
> >  		stdout-path = &uart2;
> > -
> > -		environment {
> > -			compatible = "barebox,environment";
> > -			device-path = &environment_usdhc4;
> > -		};
> >  	};
> >  };
> >  
> > @@ -31,11 +26,6 @@ partition@0 {
> >  		label = "barebox";
> >  		reg = <0x0 0xe0000>;
> >  	};
> > -
> > -	environment_usdhc4: partition@e0000 {
> > -		label = "barebox-environment";
> > -		reg = <0xe0000 0x20000>;
> > -	};
> >  };
> >  
> >  &clks {
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


