Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqe5-0003Cs-CY
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:23:58 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TLqe3-0006Gk-Er
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:23:55 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TLqe3-0005TL-Dx
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:23:55 +0200
Date: Wed, 10 Oct 2012 09:23:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010072355.GJ27665@pengutronix.de>
References: <20121010035010.GA24043@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121010035010.GA24043@greatfirst.com>
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
Subject: Re: How to init DDR on a at91sam9g45 board
To: barebox <barebox@lists.infradead.org>

Hi,

On Wed, Oct 10, 2012 at 11:50:11AM +0800, zzs wrote:
> dear all:
> 
> I'm using a at91sam9g45 board similar to atmel's sam9g45-ek.
> 
> So I select MACH_AT91SAM9M10G45EK in config.
> 
> first step I want to init the DDR memory, But
> grep all barebox src, No code for init DDR been found.
> 
> Who can tell me, Where the DDR init code is Or barebox
> can't use the DDR memory on MACH_AT91SAM9M10G45EK !?

Currently barebox relies on AT91Bootstrap to initialize SDRAM. I think
Jean-Christophe is working on changing this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
