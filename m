Delivery-date: Fri, 06 Sep 2024 12:44:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRq-001qxo-0U
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:44:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRo-00048R-VA
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:44:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nMYPfuw/f/sGzr1/i5nWUFYnoYOqR/wrJzs3/Oqi18U=; b=id68ZAaApeT6j6szBsH/yOO1+e
	EXrK8V/SW3BMP2QUIRh26+eq0DzgMTHZEHg5QsHedl3acY5iqAnMHf6742yzFc222BQ5aBGrkrbO5
	Fg1s1a9OHz2yANGni+h57LLD5YM3texjwRYiuoZ5VnNTk860fQkDltrUn/FxGdLpBhBga+o4zMLIV
	6UXEDImM5+Mv3m5VRLozsWfpGATYTEbTxv4UFQl0LDY/9PLGH31+tn+RDwlo8TzRTZbDgzkNvflWH
	apnwKuQfJmk73WGSiKDReBJUCamvsKS5ZpQeXZpTDRtHTHc07HglcDRsYEvuGL1LWpE0kPKDLqj2n
	EqG92a2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWRM-0000000BpLe-1M1k;
	Fri, 06 Sep 2024 10:43:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWRI-0000000BpIc-0qMg
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:43:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1smWRF-0003cC-Ld; Fri, 06 Sep 2024 12:43:37 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1smWRF-005vOk-1q; Fri, 06 Sep 2024 12:43:37 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1smWRE-00A4Ow-37;
	Fri, 06 Sep 2024 12:43:36 +0200
Date: Fri, 6 Sep 2024 12:43:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Florian Otte <fotte@uni-osnabrueck.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Ztrc2Jy10eXEA_QR@pengutronix.de>
References: <9f97-66d58780-19-542e2c00@140924414>
 <Ztb1I3-mc5dZBUxU@pengutronix.de>
 <8f55-66daa100-d-4fcf7800@71062216>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8f55-66daa100-d-4fcf7800@71062216>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034340_263286_F22614F9 
X-CRM114-Status: GOOD (  36.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Bufferoverflow on eMMC partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 06, 2024 at 08:28:26AM +0200, Florian Otte wrote:
> Hey Sascha,
> 
> thank your for your reply. I am a little bit unfamiliar with the
> processes, so I hope this is what your are asking for.

Indeed, that's what I was asking for. All good now, patch applied,
thanks

Sascha

> 
> Kind Regards,
> Florian
> 
> 
> 
> On Tuesday, September 03, 2024 13:38 CEST, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Mon, Sep 02, 2024 at 11:37:56AM +0200, Florian Otte wrote:
> > > Hi Everyone.
> > > 
> > > I tried to use all general purpose partitions on an eMMC storage
> > > device and ran into some trouble. In ./include/mci.h the number of
> > > partitions is limited to 6, but there might be 7 partitions. This
> > > results in a buffer overflow or access out of bound and causes a nasty
> > > bootloop when all general purpose-partitions are used. I created a
> > > simple patch and appended it to this mail.
> > > 
> > > Kind regards
> > > fotte
> > > 
> > > [Edit]: Sorry. Clicked the wrong button to fast. Now with Attachment.
> > 
> > > From 0bae0df23bbc4a9e98f1bcac6c6fbe0c3b21bc78 Mon Sep 17 00:00:00 2001
> > > From: Florian Otte <fotte@uos.de>
> > > Date: Mon, 2 Sep 2024 11:27:47 +0200
> > > Subject: [PATCH] FIX: buffer overflow on MCI-partition enumeration
> > > 
> > > Memory for up to 6 partitions is reserved, however there can be up to 7
> > > partitions on an mci storage (e.g. emmc). A user partition two boot partitions
> > > and up to four general pupose partitions.
> > > ---
> > >  include/mci.h | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > Your patch lacks a Signed-off-by: line. Please respond with such a line.
> > 
> > Otherwise ok, thanks for fixing this. I additionally created a patch to
> > check for the array boundaries.
> > 
> > Sascha
> > 
> > -- 
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

> From e5121cb2ae2a2d4294cafb93ec30abf6b7bcd0c1 Mon Sep 17 00:00:00 2001
> From: Florian Otte <fotte@uos.de>
> Date: Mon, 2 Sep 2024 11:27:47 +0200
> Subject: [PATCH] FIX: buffer overflow on MCI-partition enumeration
> 
> Memory for up to 6 partitions is reserved, however there can be up to 7
> partitions on an mci storage (e.g. emmc). A user partition two boot partitions
> and up to four general pupose partitions.
> 
> Signed-off-by: Florian.Otte <fotte@uos.de>
> ---
>  include/mci.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 3bf1455a40..cd01e2f992 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -600,7 +600,10 @@ struct mci_host {
>  
>  #define MMC_NUM_BOOT_PARTITION	2
>  #define MMC_NUM_GP_PARTITION	4
> -#define MMC_NUM_PHY_PARTITION	6
> +#define MMC_NUM_USER_PARTITION	1
> +#define MMC_NUM_PHY_PARTITION	(MMC_NUM_BOOT_PARTITION + \
> +                                 MMC_NUM_GP_PARTITION + \
> +                                 MMC_NUM_USER_PARTITION)
>  
>  struct mci_part {
>  	struct block_device	blk;		/**< the blockdevice for the card */
> -- 
> 2.39.2
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


