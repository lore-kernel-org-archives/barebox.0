Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr1ii-0006eD-FU
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 16:05:53 +0000
Message-ID: <c39270ce4ca906a98dd29c6a669fa0d25fedd551.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 02 Jul 2020 18:05:48 +0200
In-Reply-To: <936755248.7359.1593703689870@mail.vodafone.de>
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
 <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
 <517310923.70062.1593427992397@mail.vodafone.de>
 <595dc8c8-09c8-81ad-d730-23781e207cbd@pengutronix.de>
 <429834562.114102.1593444620511@mail.vodafone.de>
 <aac7feb5-604f-2914-bfbd-75f0271401ad@pengutronix.de>
 <1874617325.108865.1593446626706@mail.vodafone.de>
 <21c2fc40-e385-b05e-6392-55ad219597da@pengutronix.de>
 <1036676243.111725.1593448425601@mail.vodafone.de>
 <CAOMZO5Cxa6Yk-uWUummRhNVQbLHvduCZQM9djxXNG683GQ4gRw@mail.gmail.com>
 <473645456.227984.1593597168773@mail.vodafone.de>
 <b095fd3c-7cda-1394-ba4d-6dd882606920@pengutronix.de>
 <936755248.7359.1593703689870@mail.vodafone.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: reset / watchdog on an imx7d soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Giorgio,

Am Donnerstag, den 02.07.2020, 17:28 +0200 schrieb Giorgio Dal Molin:
[...]
> barebox does something similar to trigger the wdog but afterwards also calls
> mdelay() and a printf() before falling in the endless loop:
> 
> static void imx21_soc_reset(struct imx_wd *priv)
> {
> ...
> 	imxwd_write(priv, IMX21_WDOG_WCR, val);
> 
> 	/* Two additional writes due to errata ERR004346 */
> 	imxwd_write(priv, IMX21_WDOG_WCR, val);
> 	imxwd_write(priv, IMX21_WDOG_WCR, val);
> 

I'm not sure if the i.MX7 needs the same double write. Just in case,
can you add a dummy read to the IMX21_WDOG_WCR register after the
writes to make sure the writes actually get flushed to the device
before the delay?

Regards,
Lucas

> ...
> 
> 	mdelay(1000);
> 
> 	hang(); // <== this also calls printf() before for(;;);
> 
> 
> What I've found is that if I put the endless loop right at the end of
> imx21_soc_reset(), after the imxwd_write's, then the reboot process becomes
> reliable.
> 
> (The changes in the DCD with the addition of the write:
> 
> wm 32 0x30391000 0x00000003
> 
> at the beginning, before the write:
> 
> wm 32 0x30391000 0x00000002
> 
> are also essential, only the delay between the two seems to be not a big deal).
> 
> giorgio
> 
> > > giorgio
> > > 
> > > > _______________________________________________
> > > > barebox mailing list
> > > > barebox@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/barebox
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
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
