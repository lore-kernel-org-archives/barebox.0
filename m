Delivery-date: Mon, 26 Apr 2021 11:27:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laxWR-0002xt-Ro
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 11:27:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laxWQ-0004JC-Mz
	for lore@pengutronix.de; Mon, 26 Apr 2021 11:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BOaCQs3lxmcS7m745o3Msx79kiOaOi5zE1Y8f+FXqss=; b=rUmv/zgW1WC+c4k3BS4lrLY9t
	Al6eisLIlLUbJpg7SgTQxvMuhnUUrGb9WO7Ux439pbFtlba85H91Oqmnxoym5pxd2IK7qe8dB0KRz
	95RL3+CcK+KWZyD0Ph4MRQt0aD+lTFj2DRiDqLTH5gzehsk2ry4k3Mf/dfVWlQ4/ejUVu1MzN3WgA
	/VHmj+BNnfTQX4jkduK3n4JX4HWJpGayaZhl2IWaDhSAr2KtAO0NXg7nS38OcVnkIFrIHsFduLXXu
	DL4bne2+rzrEYxAzmdetaTKaaDT7Yt+e3d8abqfp9mWtkqVgMQStd0iXarK4nK8iNC19dbGJaX794
	NYEtVLX3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laxVV-007JEJ-PM; Mon, 26 Apr 2021 09:26:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxVQ-007JDy-Hr
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 09:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WeAcre5b0D/mpe7DUENfgpCVAXKah0T9oDDd8UwuYk0=; b=M8xmHXrPYyivJ3h0fbXmxaYf6N
 w20qcVUPqXC3O74K3TNfp7ZPFOblSndTKTgdT/lMk/QmOWo4TEOcv4DAwUsys0ecyAA0jvsmPM5vV
 A04G1K28QpHjXPehdCCnGjju7FM2fhxbtB6rPeWdt1ogHUsOQQ1/0k/BMELfIvvit3tJldVpRVaIl
 2KwJekpbXuXYiwKo/D50kIDseUrQiPd+KXOj5lynV6lGlP9Qokh/9J13SsADXSiJDUFO5M9fUva3O
 fFFFfWor/UhtfTkvkOTqOsLY7GKDjd38ufgU+3wa+4j7VOE18+CrBkfDfVATDBdDMZyu3YQWJHa/0
 j7Qrp4XQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxVN-00FrF4-OW
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 09:26:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1laxVM-00049R-4e; Mon, 26 Apr 2021 11:26:12 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1laxVL-0005Re-Q3; Mon, 26 Apr 2021 11:26:11 +0200
Date: Mon, 26 Apr 2021 11:26:11 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210426092611.dexrfgpr5qq5kywd@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-18-s.hauer@pengutronix.de>
 <62d9fd38-fa11-446d-1aee-2165a55f0fd5@pengutronix.de>
 <20210426092025.ayufzlgd7hchyngw@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210426092025.ayufzlgd7hchyngw@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:25:27 up 144 days, 23:31, 48 users,  load average: 0.38, 0.16,
 0.11
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_022613_823252_BC63971E 
X-CRM114-Status: GOOD (  30.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-04-26 11:20, Marco Felsch wrote:
> On 21-04-19 09:12, Ahmad Fatoum wrote:
> > Hi,
> > 
> > On 16.04.21 11:49, Sascha Hauer wrote:
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pfla02");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pfla02");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6s-pfla02");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcaaxl3");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-nand");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-emmc");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-nand");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6qp-pcm058-nand");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-emmc");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-nand");
> > > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-emmc");
> > 
> > How about changing BAREBOX_DEEP_PROBE_ENABLE so BAREBOX_DEEP_PROBE_ENABLE(physom_imx6_match);
> > works? Updated boards should be using board drivers anyway, so make it easier for them to
> > enable deep probe.
> 
> Hi Ahmad,
> 
> Why do I need to chnage it to board drivers if I only wanna fix a probe
> order issue? But you're right adding the _match table should be possible
> to :)
> 
> > I'd go even further and require board drivers by having it take a driver_d * as argument
> > and introduce deep_probe_board_driver() that expands to postcore_platform_driver and
> > BAREBOX_DEEP_PROBE_ENABLE.
> 
> How about this:
>  1st) adding a probe_enum like kernel and introduce PROBE_PREFER_DEEP
                   ^
	I mean 'enum probe_type', sry.

>  2nd) adding a deep_probe_enable_board() function to common/deep_probe.c
>  3th) checking during register_driver() if the flag is set and call the
>       deep_probe_enable_board().
> 
> This allows use to still use the macro mechanism and the boards already
> converted to the board driver style can use this simple enum to mark all
> boards as deep-probable.
> 
> Regards,
>   Marco
> 
> > This would prevent having a board driver that's deep probe incompatible in the
> > first place, because it will likely not find the resources it requires that early
> > if it doesn't deep probe.
> > 
> > Cheers,
> > Ahmad
> > 
> > -- 
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

