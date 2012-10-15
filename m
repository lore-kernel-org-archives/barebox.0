Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNsgM-0002OP-B0
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 21:58:44 +0000
Date: Mon, 15 Oct 2012 23:58:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015215839.GR27665@pengutronix.de>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <1350318405-20081-2-git-send-email-shc_work@mail.ru>
 <20121015175852.GC5803@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121015175852.GC5803@game.jcrosoft.org>
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
Subject: Re: [PATCH v2 2/3] ARM: clps711x: Add serial driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2012 at 07:58:52PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 20:26 Mon 15 Oct     , Alexander Shiyan wrote:
> > 
> > +
> > +#define UBRLCR(x)	(UBRLCR1 + (x) * 0x1000)
> > +#define SYSCON(x)	(SYSCON1 + (x) * 0x1000)
> > +#define SYSFLG(x)	(SYSFLG1 + (x) * 0x1000)
> > +#define UARTDR(x)	(UARTDR1 + (x) * 0x1000)
> provide this via resoure
> 
> here 4 resources

We already had this. This SoC has a very strange register layout. The
registers for the UARTs are spread around the SoC and the registers
are not even exclusively used for the UARTs. They have bits which are
also used for the timer and other stuff.

> > +static int clps711x_tstc(struct console_device *cdev)
> > +{
> > +	return !(readl(SYSFLG(cdev->dev->id)) & SYSFLG_URXFE);
> factorise those pull status as
> 
> status int xxx(data, mask) {}

I don'r understand this. This is a single register read, there's not
much to factorize and the code is easy to read.

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
