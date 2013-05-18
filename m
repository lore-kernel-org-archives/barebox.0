Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UddBO-0005Rc-0D
 for barebox@lists.infradead.org; Sat, 18 May 2013 09:12:07 +0000
Date: Sat, 18 May 2013 11:11:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130518091137.GV32299@pengutronix.de>
References: <1368779715-3143-1-git-send-email-s.hauer@pengutronix.de>
 <1368817605.2463.1.camel@antimon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368817605.2463.1.camel@antimon>
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
Subject: Re: [PATCH] ARM: invalidate data caches during early init
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

On Fri, May 17, 2013 at 09:06:45PM +0200, Lucas Stach wrote:
> Am Freitag, den 17.05.2013, 10:35 +0200 schrieb Sascha Hauer:
> > Some SoCs come up with invalid entries in the data cache. This can
> > lead to memory corruption when we enable them later, so invalidate
> > the caches early.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > CC: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> 
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Lucas Stach <l.stach@pengutronix.de>

Cool. Does that mean the MMU now works on Tegra?

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
