Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlbZb-0000vi-Ch
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 06:57:00 +0000
Date: Tue, 26 Jul 2011 08:56:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110726065657.GF20587@pengutronix.de>
References: <20110724144441.GA10295@game.jcrosoft.org>
	<20110725093259.GY20587@pengutronix.de>
	<20110725133917.GA12391@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110725133917.GA12391@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/12] more device rework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 25, 2011 at 03:39:17PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:32 Mon 25 Jul     , Sascha Hauer wrote:
> > On Sun, Jul 24, 2011 at 04:44:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > 	the folling patch series continue to switch the device/driver
> > > 
> > > 	this reduce the code of 744 lignes and 188 bytes since v2011.07.0
> > > 
> > > 	this superseed the previous patch has some errors was found
> > > 
> > > The following changes since commit 522af7074a333508d8b73c25abd1d051d8672e5c:
> > > 
> > >   armlinux: mem tag switch to "struct resource" (2011-07-20 08:25:45 +0200)
> > > 
> > > are available in the git repository at:
> > >   git://uboot.jcrosoft.org/barebox.git resource
> > 
> > pulled to -next.
> > 
> > That drops the occurances of map_base to 180 ;)
> 130 to go
> 
> can some people help on imx?

Yes, I'll convert the rest of i.MX.

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
