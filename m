Delivery-date: Thu, 21 Sep 2023 10:06:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEhY-005dpv-Eg
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:06:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEhW-0002wK-Kb
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:06:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aPCeJsMSViQedHolw8S2E5z3OmEtlXB1aBtYCoT7Mzc=; b=ANbQsWI60+tdTxq7cG259SLr8Y
	5fNVVEs5kY9yBFV3eAZYm2XoAPDOvMr2sGISbFupAr2NbLNfAE4w34HfcwkZGGI2YJOHA9HDEEQ+A
	NaZ/jeC8c5MukyUFqoDr1RemalWnwnDExftYpxr0BsWNRGBZc3hCXnvdtpXQDOky1q0KNmJoUMiRX
	mEcBZ36MKGzvgs/WP/OM30Qu++th8J1uvstQLY7hl4jecM/lfpaGqxqvHqknWDwkdJ9BQlLGP9Wf7
	fvPotaVItr2BfHGmQXljMlmqjK6BnyJybV0jKEUED98gYC8KCEzu+2f3V1Q3fRCk7WSQG5118BDFx
	D9HMWW8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEgW-005Rzp-1m;
	Thu, 21 Sep 2023 08:05:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEgT-005Ryo-1P
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:05:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEgS-0002Xr-8z; Thu, 21 Sep 2023 10:05:12 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEgR-007sKa-Sd; Thu, 21 Sep 2023 10:05:11 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEgR-00Af92-QN; Thu, 21 Sep 2023 10:05:11 +0200
Date: Thu, 21 Sep 2023 10:05:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921080511.GA637806@pengutronix.de>
References: <20230915130353.2217982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915130353.2217982-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010513_473349_E94063A5 
X-CRM114-Status: GOOD (  22.25  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: stm32mp: don't generate .img symlinks for .stm32
 binaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 15, 2023 at 03:03:53PM +0200, Ahmad Fatoum wrote:
> The .img extension for stm32mp1 images has been unfortunate. The format was
> deprecated and finally removed in TF-A v2.8 in favor of the FIP format.
> 
> We won't remove support in barebox soon, but we shouldn't call these images
> *.img. Since commit 3536e3904152 ("ARM: stm32mp: change stm32image extension to .stm32")
> introduced with v2022.04.0, the .img files have been symlinks to regular files with
> a stm32 extension and this commit now finishes the job and deletes the .img symlinks.
> 
> Users still using older TF-A versions should change their build system to use the same
> barebox image file, but with .stm32 extension.
> 
> Users with new TF-A versions, should use the barebox-stm32mp-generic-bl33.img
> as non-trusted firmware in the FIP in addition to a matching device tree generated
> during the same barebox build.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  images/Makefile.stm32mp | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
> index 59d65722078d..86ff870051c2 100644
> --- a/images/Makefile.stm32mp
> +++ b/images/Makefile.stm32mp
> @@ -9,7 +9,7 @@
>  .SECONDEXPANSION:
>  $(obj)/%.stm32: $(obj)/$$(FILE_$$(@F)) FORCE
>  	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
> -	@(cd $(obj) && ln -fs $(notdir $@) $(basename $(notdir $@)).img)
> +	@(cd $(obj) && rm -f $(basename $(notdir $@)).img)
>  	$(call if_changed,stm32_image)
>  
>  define build_stm32mp_image =
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


