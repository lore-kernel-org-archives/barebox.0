Delivery-date: Thu, 12 Aug 2021 09:41:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE5Lf-0005Zu-Ix
	for lore@lore.pengutronix.de; Thu, 12 Aug 2021 09:41:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mE5LZ-0007Et-Rk
	for lore@pengutronix.de; Thu, 12 Aug 2021 09:41:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QiTw+9kEOiyJxnX1i/T6Z7FyhBPxs8WPJv/EQSu16FM=; b=3tPMWUj21qhb9i
	p0XVZtjBWJRcxT1yHmbeocHBpn0HhEAv1qSJCASv5oEjNCc78DsMMxag8gWCdGH1UKrAKy0WYPhfW
	IMKw3T2Yy3UklTPCYERaBDUZNB6FiAkfJ11G9wy1LNvqgG9L/v2SATPnAZ/9ZeancKq8kN1Tc1i+k
	iGgCDa/U6NhmqJZywwevE8GX3Nm8m9rKhz5d5WQm+rFFqyTjAXnnsNRSJQSfn5bx4g13/YXvrMRxH
	GR/McDQtCPuF+3IZY2AuPBM0c9gg6xyYVlNkyzdURB/rgULOUZENbnH/zaGm7zLhLPvHQbq30cD4I
	dyCXCicfR7VMoZfOmSlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE5JD-008wVA-26; Thu, 12 Aug 2021 07:39:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE5FZ-008vkO-AS
 for barebox@lists.infradead.org; Thu, 12 Aug 2021 07:35:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1mE5FX-0006S8-8w; Thu, 12 Aug 2021 09:35:35 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1mE5FW-0000CR-Vm; Thu, 12 Aug 2021 09:35:34 +0200
Date: Thu, 12 Aug 2021 09:35:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210812073534.fg5f2cucub4rr3kv@pengutronix.de>
References: <20210811172504.11396-1-m.felsch@pengutronix.de>
 <9e266302-92a1-a577-d38c-fc240177b169@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e266302-92a1-a577-d38c-fc240177b169@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:29:38 up 252 days, 21:36, 21 users,  load average: 0.10, 0.06,
 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_003537_425710_82D5B9A6 
X-CRM114-Status: GOOD (  29.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot net: add global.fastboot.net.autostart early
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 21-08-11 20:22, Ahmad Fatoum wrote:
> On 11.08.21 19:25, Marco Felsch wrote:
> > Split adding the fastboot.net.autostart to the global device and make
> > use of it. With this change it is possible to set it e.g. during
> > environment_initcall() and the later on followed fastboot_on_boot() can
> > use it to start fastboot it automatically during boot.
> 
> So what you fix here is use of global fastboot.net.autostart from within
> init scripts, or what is your use case?

Yes something like this. I have a custom board which calls
sentenv("global.fastboot.net.autostart", "1") during the
environment_initcall step.

But also I didn't get the logic behind: adding a global var in the same
function which checks that var to start the network interface.

Regards,
  Marco

> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  net/fastboot.c | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> > 
> > diff --git a/net/fastboot.c b/net/fastboot.c
> > index df388adc89..a5a7caf526 100644
> > --- a/net/fastboot.c
> > +++ b/net/fastboot.c
> > @@ -547,12 +547,16 @@ fail_generic_init:
> >  static struct fastboot_net *fastboot_net_obj;
> >  static int fastboot_net_autostart;
> >  
> > -static int fastboot_on_boot(void)
> > +static int fastboot_net_globalvars_init(void)
> >  {
> > -	struct fastboot_net *fbn;
> > -
> >  	globalvar_add_simple_bool("fastboot.net.autostart",
> >  				  &fastboot_net_autostart);
> > +	return 0;
> > +}
> > +
> > +static int fastboot_on_boot(void)
> > +{
> > +	struct fastboot_net *fbn;
> >  
> >  	if (!fastboot_net_autostart)
> >  		return 0;
> > @@ -573,6 +577,7 @@ static void fastboot_net_exit(void)
> >  		fastboot_net_free(fastboot_net_obj);
> >  }
> >  
> > +device_initcall(fastboot_net_globalvars_init);
> >  postenvironment_initcall(fastboot_on_boot);
> >  predevshutdown_exitcall(fastboot_net_exit);
> >  
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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

