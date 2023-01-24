Delivery-date: Tue, 24 Jan 2023 13:03:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKI1h-000Rst-94
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 13:03:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKI1e-0007Io-Mk
	for lore@pengutronix.de; Tue, 24 Jan 2023 13:03:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i+0h04hRekN8omaO+jcbMsW1g7kBasYldwKtihg1iZA=; b=RfjghWAQOfbp7qzrV9NRizZsqM
	d9kyXoNm3pzTrpguYq5A7E0SEd4jZKWHfGRKn8NYs2zHU8xD1KxFSH0Pexdh7SjTOWqSJiJAisWHf
	Jl2U4NKaAHk+cZ3Jg6pL7FPPDSYewma7lgEgkiYQlttXIEa4fsASL8SQ6lQgEJ1+5AxIJ4HEDNz3r
	S80zGPSKaXIEWXCUx8iQj3OGpfNorbc6fJMwJw3S8OzBGTy2CHiIAi/MXfChEJlDIuSjrVwgTlRkq
	vBEagvBG6LzYp6bI9peEbmHxVo5LLE1gbDY/J/8aMrZwmizPxNZlSMT1g2lQZx5nioAnQRk6WLaCK
	uQoj0EXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKI0K-003bnx-LR; Tue, 24 Jan 2023 12:02:20 +0000
Received: from out-22.mta0.migadu.com ([2001:41d0:1004:224b::16])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKI0E-003blF-Ep
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 12:02:17 +0000
Date: Tue, 24 Jan 2023 23:01:47 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674561730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i+0h04hRekN8omaO+jcbMsW1g7kBasYldwKtihg1iZA=;
	b=QAgJGP3fHhvJmjP8R9EiLE3fOxa/iLA7qTZiDc/fzMnw9JsGkac0Uu3lK0OWW4OQa7iTph
	T2QvgRw3JtNKjhGNak+KlYAIPFqepk++bH+IijeQWe9C5if9DGk+zmZtnkv6fYrWxlV4VL
	xGP4V2unzk1ofAJp0WWas0khXvL9/pxvPu6dREJc7Ypk3x6Duf+RqPcVPuNzmCWWJy43V/
	Vp9DVXbNHUatI0xGcL3lNUhVxrJUG/aqBwt21e5uH4i1FqO07B56BiAOf19H6YeKtbHjYb
	HJvONkbVL/4VP8KPxgM++yY8nXYvUtpBjbkcBVGczPjIJiusAR8OuUPdLcidpg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y8/IqyxBWfHDdri5@novena-choice-citizen>
References: <20230123201817.1084728-1-contact@jookia.org>
 <20230123201817.1084728-2-contact@jookia.org>
 <eb9bd043-b6ee-4338-ac56-4f7836cecd04@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb9bd043-b6ee-4338-ac56-4f7836cecd04@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_040215_468439_498C0E07 
X-CRM114-Status: GOOD (  13.11  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] imx6-mmdc: Revert calibration configuration on
 failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 24, 2023 at 09:29:02AM +0100, Ahmad Fatoum wrote:
> >  int mmdc_do_write_level_calibration(void)
> >  {
> > +	u32 ldectrl[4] = {0};
> 
> Initial value never read back.
> 

Remove the = {0}?

> >  	/* check for any errors on both PHYs */
> > -	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
> > +	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS)) {
> > +		pr_debug("Calibration failed, rolling back calibration data\n");
> 
> Still you only restore P0 calibration data, even if it succeeded,
> but P1 failed. Is this intended?

Not quite sure what you mean. I restore both P0 and P1 calibration data I
think?

If you're asking whether it is correct behaviour to REVERT all calibration
data, instead of for each channel, I'm not sure. It seems like the safest
thing to do to me since it's unclear why the calibration process has failed.

This is the behaviour U-Boot does and seems to work in the wild.

John.


