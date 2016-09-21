Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([212.27.42.1])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmj9K-00052V-Ru
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 15:09:28 +0000
Date: Wed, 21 Sep 2016 17:09:03 +0200 (CEST)
From: Eric Le Bihan <eric.le.bihan.dev@free.fr>
Message-ID: <1030650857.351517095.1474470543435.JavaMail.root@zimbra32-e6.priv.proxad.net>
In-Reply-To: <20160921090500.bkrkohjxpye2gkc6@pengutronix.de>
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
Subject: Re: How to port brcmnand Linux driver?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Wed, Sep 21, 2016 at 10:40:43AM +0200, Eric Le Bihan wrote:
> >
> > I'm trying to port the brcmnand driver for Broadcom NAND controller
> > from Linux.
> > This driver requires an update of the MTD headers in barebox, as
> > they lack
> > definitions for functions such as mtd_set_ooblayout().
> > 
> > What is the recommended strategy for this? Should I update the
> > whole set of
> > headers and report the barebox specific changes (use of device_d,
> > etc) or only
> > add the missing functions?
> 
> For the mtd headers we usually only port the functions we need which
> worked good enough in the past.

OK. I've noticed that the use of mtd_set_ooblayout() was introduced in 
Linux 4.7. So I'll port brcmnand from 4.6, thus avoiding quite a few 
changes in the OOB/ECC management.

Thanks for your advices.

Best regards,

--
ELB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
