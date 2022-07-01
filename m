Delivery-date: Fri, 01 Jul 2022 08:49:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o7ASs-002jPQ-9G
	for lore@lore.pengutronix.de; Fri, 01 Jul 2022 08:49:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o7ASu-0000JM-9B
	for lore@pengutronix.de; Fri, 01 Jul 2022 08:49:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xw4BUCDJrE9/+cYV9OrHTDOwz9kDSe9Tl/U/Kd38eqM=; b=IA2SptiX/2LuPZr8vcY7Kh3lkr
	tweB6CPxqpFiAZQjFUKp/8yXVbFqsVDxxo+nQKDGCEx54S2/k36VP1ARNOFtEZJA8JbqEIqo+8FMF
	Puwm6kgpSB+iSaBd6rRM6l9A7nXmiZnuKckKNcgT76XvH3a285V21YDpjAVQj+fVyggkbzZhnbNbE
	MYDNxxwMBPrnpAnw5YiK8xensz4Dn/Fz6Xny9s7Z3rB+nT7aLAxx2w8L4gNocOjS9rGoViTvt4TYf
	ejEQMxiUm0M5KzCRnkMBt45eguzHuEpAvRj/3OHNg5UeUehZ5puomft1AiGH1enLoTKvidzaVnYPA
	/D4nLYvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7ARI-003GDl-MA; Fri, 01 Jul 2022 06:47:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7ARE-003GCW-1C
	for barebox@lists.infradead.org; Fri, 01 Jul 2022 06:47:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o7ARB-0000BT-Ai; Fri, 01 Jul 2022 08:47:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o7ARB-00018v-20; Fri, 01 Jul 2022 08:47:33 +0200
Date: Fri, 1 Jul 2022 08:47:33 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220701064733.GD2387@pengutronix.de>
References: <20220628061941.24199-1-eagle.alexander923@gmail.com>
 <20220628061941.24199-2-eagle.alexander923@gmail.com>
 <20220630185853.GC2387@pengutronix.de>
 <CAP1tNvS0AG1t5sxyCP1hokrHvHjPgNaA-KJarisy4h5YbKbwow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvS0AG1t5sxyCP1hokrHvHjPgNaA-KJarisy4h5YbKbwow@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:10 up 92 days, 19:14, 61 users,  load average: 0.09, 0.08,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_234736_092726_C6C31426 
X-CRM114-Status: GOOD (  25.25  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: firmware: arm-scmi: Use core_platform_driver()
 macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 30, 2022 at 10:04:44PM +0300, Alexander Shiyan wrote:
> Can this struct be renamed to arm_scmi_driver?
> 
> чт, 30 июн. 2022 г. в 21:58, Sascha Hauer <sha@pengutronix.de>:
> >
> > On Tue, Jun 28, 2022 at 09:19:40AM +0300, Alexander Shiyan wrote:
> > > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > > ---
> > >  drivers/firmware/arm_scmi/driver.c | 7 +------
> > >  1 file changed, 1 insertion(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> > > index ef3d76b3f4..ad91a60e0c 100644
> > > --- a/drivers/firmware/arm_scmi/driver.c
> > > +++ b/drivers/firmware/arm_scmi/driver.c
> > > @@ -1252,6 +1252,7 @@ static struct driver_d scmi_driver = {
> > >       .of_compatible = scmi_of_match,
> > >       .probe = scmi_probe,
> > >  };
> > > +core_platform_driver(scmi_driver);
> >
> > Had to drop this one as well. The core_platform_driver macro expands
> > to an initcall named drv##_register which becomes scmi_driver_register,
> > but that function already exists in include/linux/scmi_protocol.h.

Did that. I considered adding some underscores to the function names in
register_driver_macro, but that would show up in the trace initcalls
functionality which doesn't make that output nicer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


