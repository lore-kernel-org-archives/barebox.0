Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsGzn-0008Ef-MR
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 18:32:40 +0000
Date: Thu, 27 Jun 2013 20:32:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130627183217.GI516@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
 <1372233657-19455-9-git-send-email-s.hauer@pengutronix.de>
 <20130627070326.GL27130@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130627070326.GL27130@game.jcrosoft.org>
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
Subject: Re: [PATCH 08/11] ARM: i.MX6 realq7: prepare multiboard support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 27, 2013 at 09:03:26AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:00 Wed 26 Jun     , Sascha Hauer wrote:
> >  	return 0;
> >  }
> > -core_initcall(realq7_console_init);
> > +postcore_initcall(realq7_console_init);
> 
> I really don't like those if (!of_mac......

As discussed on IRQ I don't like it either...

> 
> can we have a struct os is the kernel?

...but my experiments with a struct also were not very promising.

I'm open for patches. For now I think the compatible matching is
good enough, but it should be worked on before we have hundreds
of initcalls like this.

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
