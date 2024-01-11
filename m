Delivery-date: Thu, 11 Jan 2024 17:32:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxyc-00DAwL-1G
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 17:32:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxyb-0004jN-Q3
	for lore@pengutronix.de; Thu, 11 Jan 2024 17:32:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/H5Us2Ad7jmm6D0NZi9LRAlNzDTF1nfZPnQwrb7s+Bk=; b=3XFmV8Vxsrpiotf2ncY59aLxmk
	APAGYLFKjP744bNN95nNnunZ1294nk8wmP1MXw+B4hEPvVf5hKShwks9IZAqAfMFzeeHSTnugVfSB
	J2CUrFJYGN4nRTmDEhWecOEFhevynnCULm2YyA1P1P1JOX0LubfAn1lqRof0rtoWAFtyhll32laVp
	wTJnbDGfbO7cQVrgeYqmlvxsH4ZXnYInvDXspYifYWZUVx7HmdrqT8OGaSIJJrGj6WvCe5wVRnlby
	OKLf9+q0YJvplQFJV5q2+DjBZtxTuPalYkE0NRnfippDqPMGwWkfCKq8F5KHnUCaosQnLWCKUZ/Mt
	zofxZpPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxxP-000cUN-22;
	Thu, 11 Jan 2024 16:31:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxxL-000cSs-0x
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 16:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rNxxJ-0004R2-Gc; Thu, 11 Jan 2024 17:30:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rNxxJ-001y1H-29; Thu, 11 Jan 2024 17:30:57 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rNxxJ-00BOac-03; Thu, 11 Jan 2024 17:30:57 +0100
Date: Thu, 11 Jan 2024 17:30:56 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240111163056.bi4l37lmb765x32d@pengutronix.de>
References: <20240111115120.2678876-1-m.felsch@pengutronix.de>
 <20240111115120.2678876-2-m.felsch@pengutronix.de>
 <20240111153058.GB2711697@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240111153058.GB2711697@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_083059_329633_53B10828 
X-CRM114-Status: GOOD (  21.24  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8M: convert the machine init to the soc
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-11, Sascha Hauer wrote:
> On Thu, Jan 11, 2024 at 12:51:20PM +0100, Marco Felsch wrote:
> > Convert the i.MX8M machine init code to the previously introduced soc
> > framework. The soc driver was mostly copied from Linux with slightly
> > adaptions for barebox. To the soc driver is called during the
> > postcore_initcall to keep the level aligned with the previous imx_init().
> > 
> > +static int __init imx8_soc_init(void)
> > +{
> > +	struct device_node *of_root = of_get_root_node();
> > +	struct soc_device_attribute *soc_dev_attr;
> > +	struct soc_device *soc_dev;
> > +	const struct of_device_id *id;
> > +	u32 soc_rev = 0;
> > +	const struct imx8_soc_data *data;
> > +	int ret;
> > +
> > +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> > +	if (!soc_dev_attr)
> > +		return -ENOMEM;
> > +
> > +	soc_dev_attr->family = "Freescale i.MX";
> > +
> > +	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
> > +	if (ret)
> > +		goto free_soc;
> > +
> > +	id = of_match_node(imx8_soc_match, of_root);
> > +	if (!id) {
> > +		ret = -ENODEV;
> > +		goto free_soc;
> > +	}
> 
> This is executed as an initcall and as such shouldn't assume it's
> running on an i.MX8. Please check for foreign SoCs early and return
> without an error in that case.

You're right, I will do that.

> > +	soc_dev_attr->serial_number = basprintf("%016llX", soc_uid);
> 
> xasprintf should be fine here.

Okay.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


