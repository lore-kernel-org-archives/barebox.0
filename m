Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvGUQ-00028U-VC
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 06:31:36 +0000
Date: Thu, 30 Aug 2018 08:31:20 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20180830063120.hujijl5aslb2taci@pengutronix.de>
References: <20180829221727.15273-1-m.grzeschik@pengutronix.de>
 <20180830044515.GA18792@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180830044515.GA18792@ravnborg.org>
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
Subject: Re: [PATCH v3] lxc: add new package
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Thu, Aug 30, 2018 at 06:45:15AM +0200, Sam Ravnborg wrote:
> Hi Michael.
> On Thu, Aug 30, 2018 at 12:17:27AM +0200, Michael Grzeschik wrote:
> > This patch adds support for the lxc container system. We install the
> > userspace lib and application.
> > 
> > To make sure all necessary kernel options are enabled use:
> > $ CONFIG=/path/to/kernelconfig lxc-checkconfig
> > 
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 
> -WRONGMAILLIST?

Barebox Container FTW! :-)
 
rsc
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
