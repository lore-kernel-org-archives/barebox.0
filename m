Delivery-date: Fri, 06 Feb 2026 16:53:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voO8n-009Wxz-1I
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 16:53:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voO8m-0000Jf-Cl
	for lore@pengutronix.de; Fri, 06 Feb 2026 16:53:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lPAtSrHW1E3FuFvZYMk1rKvtb/13gPBV4GIXInT3vWE=; b=k0YcTl+/G8yu2y8/xWvi22fvEc
	Rt9qI1sTYj/kpzwJufALC4vmmPM8p2zT/2qE5hgZiRFEMuGrce0lCHS6ONBcceEsZ/yXpuhmEF7u+
	3pS7Ap0FTLEXr8rmMKXS9W9EUbArucbr2efebBP2x1Ct+ZW2wtcQAZUAb/GKbMnnOSWl6GL2h/wiO
	cqiz1T6qPYFDd9ctUPGmvbgOV293pdZ9TD5HCEevCRibNEXohHufun9nzexd3mwJ85hmWlCSzSocW
	cisnV3IxIXa7uLMf9b3ddplbBOz89rb4KUJwM9IaQBkASMBivCvpI0uHH3uWpOxnjHVYFoilIhcnY
	qzTTerYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voO8L-0000000BWVt-05M0;
	Fri, 06 Feb 2026 15:52:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voO8H-0000000BWVV-2XH2
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 15:52:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voO8E-0000Eo-CL; Fri, 06 Feb 2026 16:52:30 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voO8E-004QZl-2k;
	Fri, 06 Feb 2026 16:52:30 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voO8E-002OWY-0G;
	Fri, 06 Feb 2026 16:52:30 +0100
Date: Fri, 6 Feb 2026 16:52:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260206155230.oepiwmlqhzmpxj4t@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-3-a80b234ce1a1@pengutronix.de>
 <11768616-d5d9-40a2-acb3-beef9055e7a2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11768616-d5d9-40a2-acb3-beef9055e7a2@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_075233_650990_0C22A5A8 
X-CRM114-Status: GOOD (  21.08  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] mfd: Add Hexagon EFI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 26-02-06, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/5/26 4:45 PM, Marco Felsch wrote:
> > This adds the EFI core driver to communicate with the system
> > co-processor.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> but see below for some nits should there be a v2.
> 
> > +	max_msg_len = HGS_EFI_SEP_FRAME_PREAMBLE_SZ +
> > +		      HGS_EFI_SEP_FRAME_POSTAMBLE_SZ +
> > +		      efi->coder->sep_header_hdrsize + cmd->payload_size;
> > +	msg = p = xzalloc(max_msg_len);
> > +	if (!msg) {
> 
> xzalloc never fails.
> 
> > +		dev_err(dev, "No memory\n");
> 
> dev_err allocates memory, so this wouldn't work anyway.

Dropped the check and the print, also for the probe() function.

> > +	/* Split header from payload first for the following str-ops on buf */
> > +	payload = strstr(buf, ":");
> 
> Nitpick: strchr()
> 
> > +	if (!payload) {
> > +		dev_warn(dev, "Failed to find header delim\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	hdrlen = payload - buf;
> > +	if (hdrlen > sizeof(struct hgs_efi_sep_ascii_hdr)) {
> > +		dev_warn(dev, "Invalid header len detected\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	*payload = 0;
> > +	payload++;
> > +
> > +	/*
> > +	 * Albeit the CRC is optional and the calc as a few flaws the coder may
> > +	 * has added it. Skip the CRC check but do the msg-id check.
> > +	 */
> > +	p = strstr(buf, ",");
> 
> Nitpick: strchr()

I applied all your findings, thanks!

Regards,
  Marco

> 
> 
> Cheers,
> Ahmad
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


