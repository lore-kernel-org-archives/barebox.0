Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBvfs-0003x0-Cb
 for barebox@lists.infradead.org; Sat, 02 Mar 2013 23:17:04 +0000
Message-ID: <1362266207.2127.5.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 03 Mar 2013 00:16:47 +0100
In-Reply-To: <20130301172644.GU1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-6-git-send-email-dev@lynxeye.de>
 <20130301172644.GU1906@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 5/7] tegra: add driver for the clock and reset module
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 01.03.2013, 18:26 +0100 schrieb Sascha Hauer:

> > +
> > +static unsigned long get_osc_frequency(void)
> > +{
> > +	u32 osc_ctrl = readl(car_base + OSC_CTRL);
> > +
> > +	switch (osc_ctrl & OSC_CTRL_OSC_FREQ_MASK) {
> 
> OSC_CTRL_OSC_FREQ_MASK is defined as 3 << 30, The result will never be
> one of the values below.
> 
> > +	case 0:
> > +		return 13000000;
> > +	case 1:
> > +		return 19200000;
> > +	case 2:
> > +		return 12000000;
> > +	case 3:
> > +		return 26000000;
> > +	default:
> > +		return 0;
> > +	}
> > +}
> > +
> 
Grr, correct. Thanks for spotting. Just got bitten by my system using a
13MHz crystal.

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
