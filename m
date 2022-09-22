Delivery-date: Thu, 22 Sep 2022 10:25:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHWH-00C1vU-Oo
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 10:25:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obHWG-0003aJ-94
	for lore@pengutronix.de; Thu, 22 Sep 2022 10:25:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PWk+dnBZJ60vpBMX0qjWnjRWkhb94eQPtKxnRRmSqPo=; b=AgoDL/Spw3z/vGmHJ4UqffA+mE
	uJZTHHr7A3k6M2h0B1ecU31VdyCxZA6gqbMGV6V+2FUH4G75IOYVEleIm8THXJpzoY19/iJS/y5rW
	qrmF/BaE8XYVLnrGk7vn2UbpEmNECIDB6qqYGE5R8V7rPuVwG6UAn8WmCSN081K0ebOZs+1fccDMr
	qzx3n/ovSADn0mWgouTySOyMJdokXMqC7es3DXYCfIzbd8zu/XY9T2BJaIMfwYBqpPsd0AbIwqQRk
	/aQGiAUiBmnRjEalo8zu10nICZp8KIusmUKkfd+AhYFYdunFvKKgHVbD5gcpvd0cHwvxz5uX6IaXy
	i5sW8lig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHUg-00E7rr-Qz; Thu, 22 Sep 2022 08:23:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obHU7-00E7e9-7c
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 08:23:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obHU5-0003GE-Ja; Thu, 22 Sep 2022 10:23:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obHU5-00015E-7N; Thu, 22 Sep 2022 10:23:01 +0200
Date: Thu, 22 Sep 2022 10:23:01 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	barebox@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220922082301.GH986@pengutronix.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-2-michael.riesch@wolfvision.net>
 <20220921094649.GC986@pengutronix.de>
 <223f9b7c-a95a-7847-503d-e51cb2abaf64@wolfvision.net>
 <20220922080329.GG986@pengutronix.de>
 <d4e9f025-4327-2370-89f1-ad79d72e62af@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d4e9f025-4327-2370-89f1-ad79d72e62af@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_012303_302177_F58DC1CE 
X-CRM114-Status: GOOD (  38.11  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Sep 22, 2022 at 09:13:35AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 22.09.22 09:03, Sascha Hauer wrote:
> > On Wed, Sep 21, 2022 at 01:49:49PM +0200, Michael Riesch wrote:
> >> Hi Sascha,
> >>
> >> On 9/21/22 11:46, Sascha Hauer wrote:
> >>> On Mon, Sep 19, 2022 at 01:39:42PM +0200, Michael Riesch wrote:
> >>>> The IO domains in Rockchip SoCs need to be configured to match the
> >>>> corresponding bank voltage. In Linux this is achieved by means of a
> >>>> platform driver that reads the voltage value of the supplies and
> >>>> configures the bits in the general register file (GRF) accordingly.
> >>>> Port this driver to barebox to provide support for the Rockchip
> >>>> RK356x SoCs.
> >>>>
> >>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >>>> ---
> >>>>  drivers/soc/Kconfig              |   1 +
> >>>>  drivers/soc/Makefile             |   1 +
> >>>>  drivers/soc/rockchip/Kconfig     |  17 +++
> >>>>  drivers/soc/rockchip/Makefile    |   6 +
> >>>>  drivers/soc/rockchip/io-domain.c | 223 +++++++++++++++++++++++++++++++
> >>>>  5 files changed, 248 insertions(+)
> >>>>  create mode 100644 drivers/soc/rockchip/Kconfig
> >>>>  create mode 100644 drivers/soc/rockchip/Makefile
> >>>>  create mode 100644 drivers/soc/rockchip/io-domain.c
> >>>
> >>> There's nothing in this driver that makes sure it is probed before the
> >>> users of the io domains. What happens when the users are probed before
> >>> the io domain driver?
> >>
> >> Correct. Unfortunately, the situation is quite the same in the kernel.
> >> Only recently there was a discussion as to how to resolve this issue
> >> [0]. While the RFC in [0] was received well there is no mainline
> >> solution to this problem. I would suggest that the mainline kernel
> >> solution is adopted once there is one.
> >>
> >> In the mean time we could
> >>  - accept that it just works for some reason (TM)
> >>  - leave the magic bits in the low-level initialization to be on the
> >>    safe side
> > 
> > Decided for this solution for now.
> > 
> > I added the following as a reminder that there's still something
> > to do.
> 
> Why not do an of_device_ensure_probed for the I/O domain driver in
> rk3568_init()?

We can't do a of_device_ensure_probed() properly from plain initcalls.
For example rk3568_init() is called at postcore level, at that time the
io-domain driver is not yet registered.

We would have to find an initcall level where the io-domain driver and
all its dependencies (i2c bus driver, PMIC driver) is registered, but
none of its consumers are probed. While we could probably find the right
initcall level this defeats the purpose of deep probe.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


