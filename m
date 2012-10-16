Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO2EH-0004w3-Fs
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 08:10:22 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 36465104F542
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 10:16:57 +0200 (CEST)
Date: Tue, 16 Oct 2012 10:08:01 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121016080801.GF5803@game.jcrosoft.org>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <1350318405-20081-2-git-send-email-shc_work@mail.ru>
 <20121015175852.GC5803@game.jcrosoft.org>
 <20121015215839.GR27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121015215839.GR27665@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:58 Mon 15 Oct     , Sascha Hauer wrote:
> On Mon, Oct 15, 2012 at 07:58:52PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 20:26 Mon 15 Oct     , Alexander Shiyan wrote:
> > > 
> > > +
> > > +#define UBRLCR(x)	(UBRLCR1 + (x) * 0x1000)
> > > +#define SYSCON(x)	(SYSCON1 + (x) * 0x1000)
> > > +#define SYSFLG(x)	(SYSFLG1 + (x) * 0x1000)
> > > +#define UARTDR(x)	(UARTDR1 + (x) * 0x1000)
> > provide this via resoure
> > 
> > here 4 resources
> 
> We already had this. This SoC has a very strange register layout. The
> registers for the UARTs are spread around the SoC and the registers
> are not even exclusively used for the UARTs. They have bits which are
> also used for the timer and other stuff.
use the device id to select the register is wrong

we need to pass the register via resource (without request) or platform data
> 
> > > +static int clps711x_tstc(struct console_device *cdev)
> > > +{
> > > +	return !(readl(SYSFLG(cdev->dev->id)) & SYSFLG_URXFE);
> > factorise those pull status as
> > 
> > status int xxx(data, mask) {}
> 
> I don'r understand this. This is a single register read, there's not
> much to factorize and the code is easy to read.
he use the code at a least 2 place

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
