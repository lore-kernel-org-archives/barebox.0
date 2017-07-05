Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from janus.medel.com ([195.189.166.151])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dSkCh-0002RW-1V
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 13:18:52 +0000
From: Mayur Nande <Mayur.Nande@medel.com>
Date: Wed, 5 Jul 2017 13:18:29 +0000
Message-ID: <90d0d80ff628473ebf5cd3983bc23bbd@ATMEDS029.medel.local>
References: <7f60ba0f248e430d88c949c54c155728@ATMEDS029.medel.local>
 <1499259097.22075.15.camel@pengutronix.de>
In-Reply-To: <1499259097.22075.15.camel@pengutronix.de>
Content-Language: en-US
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
Subject: RE: Earliest possible GPIO toggle on i.mx6
To: 'Lucas Stach' <l.stach@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Lucas, 

Thank you for the reply.

> -----Original Message-----
> From: Lucas Stach [mailto:l.stach@pengutronix.de]
> Sent: Wednesday, July 05, 2017 2:52 PM
> To: Mayur Nande
> Cc: barebox@lists.infradead.org
> Subject: Re: Earliest possible GPIO toggle on i.mx6
> 
> Am Mittwoch, den 05.07.2017, 12:41 +0000 schrieb Mayur Nande:
> > Hello all,
> >
> > I have a question regarding the earliest possible GPIO toggle with
> > barebox on imx6. We use boards with imx6 quad core processor (from
> > Phytec). In our hardware design we have a push button controller which
> > has a "KILL" pin attached to one of the GPIO pins on i.mx6. The
> > requirement is that this pin should be set to 1 within 400 ms of power
> > on. I tried setting this at various places in barebox with incremental
> > improvements starting from the init script, board.c, lowlevel.c and
> > then DCD/lowlevel.c combination.
> >
> > The best performance I got was by setting the iomux registers
> > (IOMUXC_SW_MUX_CTL_PAD and IOMUXC_SW_PAD_CTL_PAD) in DCD
> and the GPIO
> > direction and value registers in lowlevel.c (since GPIO controller
> > registers are not accessible with DCD). Even with this, I get the GPIO
> > set in around 460-475ms at the best. I understand that some of the
> > time here is used by the hardware for voltage regulation/crystal
> > stabilization which probably we can't do anything about.
> 
> If lowlevel.c is too late already, the only chance to make this work is setting
> the DCD padctl to configure a pull-up/down to satisfy the KILL pin. Then in
> the board file set up the GPIO and switch the padctl to neutral state.
Ok, I will try this.

> Still 400ms sound like a awfully long time to reach lowlevel init. What is your
> boot source, i.e. where is the barebox binary stored?
The bootsource is external 8GB SD/MMC card.

Warm Regards,
Mayur

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
