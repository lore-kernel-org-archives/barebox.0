Delivery-date: Fri, 19 Dec 2025 11:07:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXON-00DA5Y-2y
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:07:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXON-00019v-A0
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:07:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JM3vjeVnLUdsOdEL6wNI5vcFQPaYYsx2p8CQTfAOcZ4=; b=gq7nH+Wkocci1aHbokB6hG2huW
	w7z8VP75uNp3lS10VMaI8tsPknPkHbB6uFyFMK9dRkzWXfEnGzxs/0HK8D4y0DDAys+Yfa3QYlMmG
	yFArXA7ZcroFv7Qi3IvarNSeBpNfSYssAun7SxktpiHpKsFvLOP9dIY4Zbqs/oPj9w2nTlDCuxByr
	JOaCEumTNGlgUw+t52kfVi1fbZ5l4saYv0CFG+8fZq6I0NnnyMkXZcFc1K3kJ00CK0Zvhpv1J1FNQ
	OAidcACk2qP7PjRvm4Z0BWgpmJQ7EFIHSzNgA9Lx02YLm1+na6uzNKOrQGae+fl3etIIgvAR3T2mG
	Xb1Q2MWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXNr-0000000A11T-1NBL;
	Fri, 19 Dec 2025 10:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXNp-0000000A10w-09Wy
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWXNn-000140-8K; Fri, 19 Dec 2025 11:06:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWXNn-006RAQ-0D;
	Fri, 19 Dec 2025 11:06:47 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWXNm-00GSOo-2t;
	Fri, 19 Dec 2025 11:06:46 +0100
Date: Fri, 19 Dec 2025 11:06:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251219100646.c7iytlzannxf7b3r@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
 <20251219-v2025-11-0-topic-imx6-field-return-v2-1-2696ac61ae2d@pengutronix.de>
 <4114d7e2-9331-413f-9dda-b16b53ea42bc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4114d7e2-9331-413f-9dda-b16b53ea42bc@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_020649_096693_0FAD6DC8 
X-CRM114-Status: GOOD (  21.51  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] arm: mach-imx6: use kconfig for field return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-19, Ahmad Fatoum wrote:
> Hi,
> 
> On 12/19/25 10:06 AM, Fabian Pflug wrote:
> > There is a Kconfig option for the field return, that is also documented,
> > so using it here instead of providing a headerfile to patch.
> > 
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> >  include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++--------
> >  1 file changed, 3 insertions(+), 8 deletions(-)
> > 
> > diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
> > index 45da2981cb..c24bf84b85 100644
> > --- a/include/mach/imx/habv4-imx6-gencsf-template.h
> > +++ b/include/mach/imx/habv4-imx6-gencsf-template.h
> > @@ -39,17 +39,12 @@ hab Engine = SETUP_HABV4_ENGINE
> >  hab Features = SETUP_HABV4_FEATURES
> >  #endif
> >  
> > -/*
> > -// allow fusing FIELD_RETURN
> > -// # ocotp0.permanent_write_enable=1
> > -// # mw -l -d /dev/imx-ocotp 0xb8 0x1
> > +#if defined(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN)
> >  hab [Unlock]
> >  hab Engine = OCOTP
> >  hab Features = FIELD RETURN
> > -// device-specific UID:
> > -// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
> > -hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
> > -*/
> > +hab UID = HABV4_CSF_UNLOCK_UID
> 
> How can this work without a CONFIG_ in front of the option?

Good catch Ahmad! I think Fabian just copied the broken mainlined
version from the i.MX8M.

My v2
(https://lore.barebox.org/barebox/20240703-v2024-05-0-topic-hab-v2-8-17419aa5d3a3@pengutronix.de/)
used another abroach to set the define which didn't made it into
mainline :/

So mainline is broken for i.MX8M as well :/

@Fabian
Could you please include a patch which fixes this for the i.MX8M as
well?

Regards,
  Marco


> 
> Thanks,
> Ahmad
> 
> > +#endif
> >  
> >  hab [Install Key]
> >  /* verification key index in key store (0, 2...4) */
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


