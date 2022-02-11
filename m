Delivery-date: Fri, 11 Feb 2022 11:01:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISk1-00CirW-GR
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 11:01:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISk0-0002zg-03
	for lore@pengutronix.de; Fri, 11 Feb 2022 11:01:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d685xYCNd5FediiBlMwyGuvzRR+0NG6iOmrCdANGBJ0=; b=wAQ1zWHO1j63yb
	ETLigYu5pXwHtDadQI6t8/n7jWJ3tIb1ZEkRki9XblQuvQFtppWEXF4ZKDNbTUn5XIq8kVvJTw9Tj
	c7O1rmpdSrQQsyw200wXOe/8cark0+ETQv8P31Go0X6hSSxK1tOW5BgMF6o+mSU0dqv+n6fcYDXOz
	TMmnzspXnDLFUMHN+Rf+ddmq5yrTb1X4XnBkD+FbYcMp5A/4tP/ANMr/6/sYc7/Wmq6c92HPfeyA8
	E85Px6SwqxRI9Ii9hnLEze3G4Qc60AmSWEvyTkxAZGgp8XfBchiK2LzjmBo0gk6pUkExk/YT2YbYG
	DPJ4xKt4bjKub9mC3OIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nISik-006Vto-3l; Fri, 11 Feb 2022 10:00:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nISid-006Vsv-JA
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 10:00:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1nISia-0002g9-He; Fri, 11 Feb 2022 10:59:56 +0100
Message-ID: <17af354f430e1dcc253e086a6184923f1d520e08.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Fri, 11 Feb 2022 10:59:55 +0100
In-Reply-To: <20220211094636.GE18637@pengutronix.de>
References: <a9986dfd56deaf82fefa49c2c7c4c024b750ee1d.camel@pengutronix.de>
 <20220211094636.GE18637@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.42.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_015959_666084_9A19D535 
X-CRM114-Status: GOOD (  20.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: i.MX HABV4 USB Image generation broken since
 fd9c7cbfe446b0f04aa66bb198c1769045ba2fe5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Fri, 2022-02-11 at 10:46 +0100, Sascha Hauer wrote:
> Hi Rouven,
> 
> On Tue, Feb 08, 2022 at 08:24:24AM +0100, Rouven Czerwinski wrote:
> > Hi,
> > 
> > Commit fd9c7cbfe446 ("scripts: Add common library functions")
> > intorduced the usage of the common library functions to imx-image,
> > which breaks the HAB USB image generation within barebox. Signed images
> > are still generated fine:
> > 
> >   OBJCOPYB images/start_imx6ul_ccbv2_512m.pblb
> >   CHKFILESIZE images/start_imx6ul_ccbv2_512m.pblb
> >   OBJCOPYB images/start_imx6ul_ccbv2_256m.pblb
> >   CHKFILESIZE images/start_imx6ul_ccbv2_256m.pblb
> >   IMX-IMG images/start_imx6ul_ccbv2_512m.pblb.imximg
> >   IMX-IMG images/start_imx6ul_ccbv2_512m.pblb.simximg
> >     Input CSF text filename
> > CSF Processed successfully and signed data available in
> > images/start_imx6ul_ccbv2_512m.pblb.simximg.csfbin
> >   IMX-IMG images/start_imx6ul_ccbv2_512m.pblb.usimximg
> >     Input CSF text filename
> > CSF Processed successfully and signed data available in
> > images/start_imx6ul_ccbv2_512m.pblb.usimximg.csfbin
> > write failed: Bad address
> > make[1]: *** [/home/phoenix/work/ptx/barebox/images/Makefile.imx:38:
> > images/start_imx6ul_ccbv2_512m.pblb.usimximg] Error 1
> > make[1]: *** Deleting file
> > 'images/start_imx6ul_ccbv2_512m.pblb.usimximg'
> > make: *** [Makefile:703: images] Error 2
> > 
> > I have attached the .config I used to test this, you'll need the i.MX
> > cst tool in your path and the environment configuration to point to
> > certificates. The ptx devel certificates
> > https://git.pengutronix.de/git/ptx-code-signing-dev were what i used
> > for testing.
> > 
> > I assume this is the same error that has been fixed in "scripts/common:
> > fix write_file when opened with mmap", however imx-image implements its
> > own xwrite helper and opens files itself, so there is a mismatch there
> 
> Could you give
> http://lists.infradead.org/pipermail/barebox/2022-February/038465.html a
> try? It hopefully solves this issue.

Works perfectly, you can add my:
Tested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Rouven

-- 
Pengutronix e.K.           | Rouven Czerwinski          |
Steuerwalder Str. 21       | http://www.pengutronix.de/ |
31137 Hildesheim, Germany  | Phone: +49-5121-206917-0   |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

