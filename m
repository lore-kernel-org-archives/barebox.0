Delivery-date: Mon, 11 Mar 2024 11:30:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcvQ-000trC-1J
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:30:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcvM-00059C-MR
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:30:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HeZ6+HSnz+A8AR6LMLbrjaJAw2cqoQYOwkyAbOiNAA8=; b=z8bRDqkn8+G1loMVeDrdJForXi
	sMNl+HxnXPCTCFK2HCvCTAgl5A70rqUuUDwDR0NZFnu7AXC/rsGCQvpoTjH48q9NEqNZC6sSFyR24
	r9da+F4yIp06PJqwHf/ZVipNF/y826YvOK/NaFo3/ouZh912cIfTU5MujJVt96ZbQ5QB9gxPB4NsV
	0WypBbbrPiVg91i3yS/cJolp1IvryWJhv5LwrteZp4X2Ji493pUSKpmU8T9oaBV3t8RGm5+qdD6sm
	gAtY6cLoCNi+UAbTRdlxfwkdHLswkXMWHQ5AXi1Nprty45eOCYSnaJQNcDq1gsLKEWGGDGG1t1DTw
	aLPATqAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcul-000000016go-3Oa7;
	Mon, 11 Mar 2024 10:29:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcuh-000000016gI-2aKm
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:29:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rjcue-0004eR-Aa; Mon, 11 Mar 2024 11:29:44 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rjcud-005h0k-UO; Mon, 11 Mar 2024 11:29:43 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rjcud-00CVdT-2m;
	Mon, 11 Mar 2024 11:29:43 +0100
Date: Mon, 11 Mar 2024 11:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Ze7dF-ntkUKW0hcI@pengutronix.de>
References: <20240311080624.1836184-1-s.hauer@pengutronix.de>
 <f01a0d63-1377-4532-8122-d924bbcb9c0e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f01a0d63-1377-4532-8122-d924bbcb9c0e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_032947_719117_A8D113D9 
X-CRM114-Status: GOOD (  29.51  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: ele: start TRNG on i.MX93 rev a1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 11, 2024 at 09:20:07AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11.03.24 09:06, Sascha Hauer wrote:
> > On i.MX93 a0 the TRNG seems to be started automatically. On rev a1 it's
> > not and OP-TEE panics with "Cannot retrieve random data from ELE". Start
> > the TRNG to let OP-TEE startup successfully.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/ele.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
> > index ab3958cbd3..f8093fc694 100644
> > --- a/arch/arm/mach-imx/ele.c
> > +++ b/arch/arm/mach-imx/ele.c
> > @@ -165,6 +165,23 @@ int ele_get_info(struct ele_get_info_data *info)
> >  	return ret;
> >  }
> >  
> > +static int ele_get_start_trng(void)
> > +{
> > +        struct ele_msg msg = {
> 
> strange indentation.

Fixed.

> 
> > +		.version = ELE_VERSION,
> > +		.tag = ELE_CMD_TAG,
> > +		.size = 1,
> > +		.command = ELE_START_RNG,
> > +	};
> > +	int ret;
> > +
> > +	ret = ele_call(&msg);
> > +	if (ret)
> > +		pr_err("Could not start TRNG, response 0x%x\n", msg.data[0]);
> > +
> > +	return ret;
> > +}
> > +
> >  int imx93_ele_load_fw(void *bl33)
> >  {
> >  	struct ele_get_info_data info = {};
> > @@ -204,6 +221,9 @@ int imx93_ele_load_fw(void *bl33)
> >  		pr_err("Could not start ELE firmware: ret %d, response 0x%x\n",
> >  			ret, msg.data[0]);
> >  
> > +	if (rev == 0xa1)
> > +		ele_get_start_trng();
> 
> Does it hurt to start it unconditionally, even if it's already enabled?

I don't know and I don't have the a0 board available at the moment. I'll
test this once I have the board connected again, but for now I think
I'll only do this for the a1 board where I know it's needed.

> At the least, I'd prefer this to be rev >= 0xa1, so it need not be debugged
> again in the future.

Changed that. We don't know what we have to do on a new SoC revision anyway,
so it could be wrong either way. Note this is directly below this code:

	switch (rev) {
	case 0xa0:
		get_builtin_firmware_ext(mx93a0_ahab_container_img, bl33, &firmware, &size);
		break;
	case 0xa1:
		get_builtin_firmware_ext(mx93a1_ahab_container_img, bl33, &firmware, &size);
		break;
	default:
		pr_err("Unknown unhandled SoC revision %2x\n", rev);
		return -EINVAL;
	}

So we'll need to touch this place anyway once we get a new SoC revision.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


