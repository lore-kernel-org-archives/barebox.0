Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Op0V8-0002Vy-2T
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 15:05:54 +0000
Date: Fri, 27 Aug 2010 17:05:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100827150533.GD16555@game.jcrosoft.org>
References: <AANLkTimgEO3wqt27v2RKYtSHtmMK-w1FGoLP-dH44SnB@mail.gmail.com>
	<4C77C319.9090306@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C77C319.9090306@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox:Nand flash issue
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:52 Fri 27 Aug     , Marc Kleine-Budde wrote:
> Nataraj S Narayan wrote:
> > Hi
> > 
> > If
> > 
> > CONFIG_NAND=y
> > CONFIG_NAND_ATMEL=y
> > 
> > 
> > barebox breaks and  wont load from dataflash.
> 
> I'm not sure if dataflash is supported. Try to boot from real NAND or NOR.
> 
> Jean-Christophe can probably say something to this.
I've not yet add the spi-flash support
but how do you boot from spi-flash?
via at91bootstrap?

I'm currently travelling so I can not test it by now as I just take some SH4
boards

I plan to add it later next month

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
