Delivery-date: Thu, 07 Sep 2023 11:49:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeBdr-006yQ7-51
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 11:49:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeBdp-0004Mz-1e
	for lore@pengutronix.de; Thu, 07 Sep 2023 11:49:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rC/JO4Ez3HH3QuL3KI9eaTa/aXdHMhCcmHoM7AapAvg=; b=K28wJx+gvxZgN8RRwByJrWwYB4
	WVTJspMoMpg+NdVsjcOE5hRBohxSFGoFsNUBO1NENcce5XE85ySSrwybaSH/NYzmqz9nAbgsNhxCW
	5R3msqqQ7SwWYH1QiDWTXYcGnLBvFVq4C4z8zSb2NU0EyQspINk4gotQE69JVOB1K5anuykfwIJa2
	+Apz16RkrhTlkpPYXANH0NRE84mIxWPctVUpzdhUAuM1CSGI1TIF8GPxQ1RtfHHENHww4EbmjSG4k
	1Ep7HG+3P+mz/DVwp4xhUdcQ1XsQqLwWOv7vTwt26/o0Bx0smEbb9w0ngDuUQVCI0engKlWyebeZg
	f4d4gC+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeBcj-00BiNa-1X;
	Thu, 07 Sep 2023 09:48:29 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeBcg-00BiLF-0j
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 09:48:27 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D86851C0007;
	Thu,  7 Sep 2023 09:48:18 +0000 (UTC)
Date: Thu, 7 Sep 2023 11:48:10 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZPmcWuI9wqCPfCpK@tour>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <20230906150857.32035-2-jmaselbas@zdiv.net>
 <fb906f30-4765-3c9e-b89f-92ae93ff59cc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fb906f30-4765-3c9e-b89f-92ae93ff59cc@pengutronix.de>
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_024826_405387_F934C2E8 
X-CRM114-Status: GOOD (  20.36  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] scripts: Select XZ --arm64 BCJ filter for 64-bit arm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 07, 2023 at 10:56:21AM +0200, Ahmad Fatoum wrote:
> On 06.09.23 17:08, Jules Maselbas wrote:
> > This change will select the arm64 BCJ filter for aarch64 instead of
> > the arm filter which was always selected for arm based architectures.
> > 
> > The selected filter is also tested, by looking if it is present in
> > the long help message of xz, this is because the arm64 BCJ filter is
> > a recent addition to xz.
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> 
> How much of an improvement is BCJ=--arm over BCJ=""?
In my case using the --arm BCJ on a aarch64 barebox is slightly worst
than no BCJ at all.

$ xz -vkf --check=crc32 --lzma2=dict=32MiB barebox.bin
  100 %        84.7 KiB / 236.9 KiB = 0.357
$ xz -vkf --check=crc32 --arm --lzma2=dict=32MiB barebox.bin
  100 %        85.5 KiB / 236.9 KiB = 0.361
$ xz -vkf --check=crc32 --arm64 --lzma2=dict=32MiB barebox.bin
  100 %        81.0 KiB / 236.9 KiB = 0.342


> I wonder if we should fallback from --arm64 to --arm.
>  
> Cheers,
> Ahmad
> 
> > ---
> >  scripts/xz_wrap.sh | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
> > index 7a2d372f48..5b5f3adcff 100755
> > --- a/scripts/xz_wrap.sh
> > +++ b/scripts/xz_wrap.sh
> > @@ -16,8 +16,11 @@ case $SRCARCH in
> >  	x86)            BCJ=--x86 ;;
> >  	powerpc)        BCJ=--powerpc ;;
> >  	ia64)           BCJ=--ia64; LZMA2OPTS=pb=4 ;;
> > -	arm)            BCJ=--arm ;;
> > +	arm)            BCJ=--arm$S64 ;;
> >  	sparc)          BCJ=--sparc ;;
> >  esac
> >  
> > +# clear BCJ filter if unsupported
> > +xz -H | grep -q -- $BCJ || BCJ=
> > +
> >  exec xz --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


