Delivery-date: Tue, 11 Mar 2025 09:24:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1truuz-00CbGV-0G
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:24:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1truux-0000ea-RC
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:24:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Y8o5gN8trt6qjjbSdhasz1lmU+/8Tv29SzVGFya+SA=; b=o8H+pwNgqK1wfYg1+wN8Go6rQk
	DVg7YLv7UYTIK2aYt1U65cGokygChpNblpDvNXS5SFjc7bjKBtyls7dgJFhHDEigSVVoZMbti7Cfp
	6I0Rorv9O8SV9OrM3YYPHfPR81jhbjVrfKeD2x2LXvYCUp33kqtECs/ktKgo4fd/TERt0F28glCdN
	azCUS8jNNc9jsUiQVTcToh9+c5KRXpU8WQEU6QxWTMnBgVrVgbjIYQFy72HrbbBPv86ABbOC25GZo
	g25JrUe05kP6Rx4KNgZvqBk2IrQfTYqgDfclCn53EDPhm/SMHGZFw0QwEUDEQqNX0xDCWPaLV3QtR
	NFW4wzSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1truuV-00000004zlH-46jf;
	Tue, 11 Mar 2025 08:24:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1truu9-00000004zjz-3BLS
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:24:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1truu8-0000Ue-FQ; Tue, 11 Mar 2025 09:24:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1truu8-0059D3-0u;
	Tue, 11 Mar 2025 09:24:00 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1truu8-007g2W-0X;
	Tue, 11 Mar 2025 09:24:00 +0100
Date: Tue, 11 Mar 2025 09:24:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z8_zIC2f7n3-_sVn@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250228-am625-secure-v1-4-4002488ff5ed@pengutronix.de>
 <20250310185217.4bmple2ygkrcl3gp@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310185217.4bmple2ygkrcl3gp@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_012401_799069_BBEA5C88 
X-CRM114-Status: GOOD (  25.39  )
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
Subject: Re: [PATCH 04/13] ARM: k3: r5: add proper error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 10, 2025 at 07:52:17PM +0100, Marco Felsch wrote:
> On 25-02-28, Sascha Hauer wrote:
> > Add missing error handling in the image loading code. Properly check for
> > errors and panic when mandatory binaries are missing instead of blindly
> > continuing.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-k3/r5.c | 57 ++++++++++++++++++++++++++++-----------------------
> >  1 file changed, 31 insertions(+), 26 deletions(-)
> > 
> > diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
> > index 2418e9ae73..e12c888afa 100644
> > --- a/arch/arm/mach-k3/r5.c
> > +++ b/arch/arm/mach-k3/r5.c
> > @@ -283,7 +283,7 @@ static int load_fip(const char *filename, off_t offset)
> >  	return 0;
> >  }
> >  
> > -static void do_dfu(void)
> > +static int do_dfu(void)
> >  {
> >  	struct usbgadget_funcs funcs = {};
> >  	int ret;
> > @@ -293,37 +293,24 @@ static void do_dfu(void)
> >  	funcs.dfu_opts = "/fip.img(fip)cs";
> >  
> >  	ret = usbgadget_prepare_register(&funcs);
> > -	if (ret)
> > -		goto err;
> > +	if (ret) {
> > +		pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
> > +		return ret;
> > +	}
> >  
> >  	while (1) {
> >  		ret = stat("/fip.img", &s);
> >  		if (!ret) {
> >  			printf("Downloaded FIP image, DFU done\n");
> > -			load_fip("/fip.img", 0);
> > -			break;
> > +			ret = load_fip("/fip.img", 0);
> > +			if (!ret)
> > +				return 0;
> >  		}
> >  
> >  		command_slice_release();
> >  		mdelay(50);
> >  		command_slice_acquire();
> >  	};
> > -
> > -	return;
> > -
> > -err:
> > -	pr_err("DFU failed with: %pe\n", ERR_PTR(ret));
> > -}
> > -
> > -static int load_images(void)
> > -{
> > -	int err;
> > -
> > -	err = load_fip("/boot/k3.fip", 0);
> > -	if (!err)
> > -		return 0;
> > -
> > -	return 0;
> >  }
> 
> Removing load_images should go into patch-3.

I deliberately did it in this patch because load_images already does
error checking, but up to now the return value of load_images() wasn't
checked. By doing it like you suggest I would either end up calling
load_fip() without checking the error, or I would introduce an
incomplete error checking in k3_r5_start_image() where the return value
of load_fip() is checked, but not the return values of do_dfu and
load_fip_emmc().

> >  static int load_fip_emmc(void)
> > @@ -332,6 +319,7 @@ static int load_fip_emmc(void)
> >  	struct mci *mci;
> >  	char *fname;
> >  	const char *mmcdev = "mmc0";
> > +	int ret;
> 
> Nit: Sometimes you do use ret, sometimes err. I would like to align it
> if possible.

Changed to 'ret' consistently.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


