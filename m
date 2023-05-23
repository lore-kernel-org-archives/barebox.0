Delivery-date: Tue, 23 May 2023 15:58:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1SX4-00As9B-Hu
	for lore@lore.pengutronix.de; Tue, 23 May 2023 15:58:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1SX1-0008Uf-U4
	for lore@pengutronix.de; Tue, 23 May 2023 15:58:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ryx66beejgXSOcK11rlt1z0AWt/BLzxZyDvxB1pVwEE=; b=S03hTd6A2ztANnbaiAP9AmtB/j
	fgkU60KCmhQOGnKl5FSmE9rc63XGpHzemSkO0Z4LtQc7r6r0J1jH3xz4NCmt+PvjfPErcq/B00YAN
	SWLjUx8wLi1/NQI6zlMP2z4aMCPxl8XNE5Q19xRGKr4CEbXb1D+1gxpJCQwOBQPfNukv2xTFKeOal
	AcIzx03zIzGONDaaMnRMf7SzdQgbmU6EnlBalKiFgYzvEbhvh+WpTbwNcZk/qEOrQBBwVP6OLyLoX
	7xFGDn8J7P/cS/OxUu/ZW7fDSfRCA4NYCTaOWTNX68humqfuDHNGBQMPvAXN6gCUdo67LGV7bN0cj
	zfePD4mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SVQ-00AR3Q-1X;
	Tue, 23 May 2023 13:56:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SVL-00AR2D-2c
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 13:56:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q1SVG-0008JM-0M; Tue, 23 May 2023 15:56:42 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q1SVF-0005aC-1L; Tue, 23 May 2023 15:56:41 +0200
Date: Tue, 23 May 2023 15:56:41 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230523135641.hqtjxlgecdqceplp@pengutronix.de>
References: <20230523071621.3796978-1-a.fatoum@pengutronix.de>
 <20230523075524.mzsvdr6htpwolwgm@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230523075524.mzsvdr6htpwolwgm@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_065647_847078_ED9B5627 
X-CRM114-Status: GOOD (  31.37  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] imx-usb-loader: Don't try to verify more data
 than contained in the image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 09:55:24AM +0200, Uwe Kleine-König wrote:
> hello,
> 
> On Tue, May 23, 2023 at 09:16:21AM +0200, Ahmad Fatoum wrote:
> > On platforms that don't have a 2nd stage (in my case i.MX6 without
> > imx6_barebox_start_usb), it usually happens that the transfer limit for
> > the first (and only) upload is bigger than the actual file length.
> > Then the right thing to do is processing the complete image (minus its
> > header), but not more. This was broken by recent refactoring and fixed
> > for the transfer case with commit 3cf4bcd86419 ("imx-usb-loader: Don't
> > try to transfer more data than contained in the image").
> > 
> > The same bug persisted in the verification code though, breaking
> > imx-usb-loader -c:
> > 
> > 	verifying file...
> > 	mismatch at offset 0x000999c0. expected:
> > 	[ hexdump of last bytes of barebox binary ]
> > 
> > A jump to the binary will then be skipped and subsequent imx-usb-loader
> > invocations will have their DCD writes unanswered leading to the
> > dreaded:
> > 
> > 	main dcd length 328
> > 	DCD write: sub dcd length: 0x0324, flags: 0x04w3 in err=-7, last_trans=0  00 00 00 00
> > 	addr=0x021b001c, val=0x04088032               w4 in err=-7, last_trans=0  00 00 00 00
> > 	!!perform_dcd returned -7
> > 	4 in err=-7, last_trans=0  00 00 00 00
> > 
> > Applying the same fix as in 3cf4bcd86419 fixes this issue as well.
> > 
> > Fixes: 3367ebc55ebe ("scripts: imx-usb-loader: simplify code flow for file size calculations")
> > Cc: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> > Reported-by: Roland Hieber <r.hieber@pengutronix.de>
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  scripts/imx/imx-usb-loader.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> > index 5f9c7ff3a458..676f077c2557 100644
> > --- a/scripts/imx/imx-usb-loader.c
> > +++ b/scripts/imx/imx-usb-loader.c
> > @@ -1415,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
> >  	if (verify) {
> >  		printf("verifying file...\n");
> >  
> > -		ret = verify_memory(image, firststage_len, header_addr);
> > +		ret = verify_memory(image, min(fsize, firststage_len), header_addr);
> >  		if (ret < 0) {
> >  			printf("verifying failed\n");
> >  			goto cleanup;
> 
> Ah, I see. Looks right.
> 
> Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> (hmm, already too late.)

Tested-by: Roland Hieber <rhi@pengutronix.de>

(hmm, also too late. Thanks anyway!)

 - Roland

> 
> Best regards
> Uwe
> 
> -- 
> Pengutronix e.K.                           | Uwe Kleine-König            |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ |



-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


