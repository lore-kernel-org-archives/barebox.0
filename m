Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OjWWY-0001Eo-Jf
	for barebox@lists.infradead.org; Thu, 12 Aug 2010 12:04:43 +0000
Date: Thu, 12 Aug 2010 14:04:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100812120440.GZ27749@pengutronix.de>
References: <20100810070909.GB10920@game.jcrosoft.org>
	<5a5cd75e51961a57b99c0727faa8b3eaa619b943.1281601710.git.baruch@tkos.co.il>
	<20100812090600.GY27749@pengutronix.de>
	<20100812092701.GE13166@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100812092701.GE13166@jasper.tkos.co.il>
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
Subject: Re: [PATCH v2 1/2] cmd: add fuse_blow/fuse_sense for the i.MX IIM
	fusebox
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Thu, Aug 12, 2010 at 12:27:01PM +0300, Baruch Siach wrote:
> Hi Sascha,
> 
> On Thu, Aug 12, 2010 at 11:06:00AM +0200, Sascha Hauer wrote:
> > On Thu, Aug 12, 2010 at 11:35:04AM +0300, Baruch Siach wrote:
> > > This has only been tested on i.MX25, but should work on other i.MX chips with
> > > IIM.
> > 
> > I would prefer this command to be implemented as a device driver which
> > registers a file under /dev. This way we could use the standard md/mw
> > commands for this and look at a nice hexdump of all fuses and not only
> > one at a time.
> 
> There are two methods for getting fuses values, direct memory access, and 
> explicit sensing. Each method can independently be disabled with two dedicated 
> protect fuses. How can md choose the right sensing method?

By trying one method first and fall back to the other method.

> 
> The IIM block also has an override functionality. Direct memory write to the 
> fuse row overrides the value in this row. This feature can also be disabled 
> with an override protect fuse. How does mw know whether you want to blow the 
> fuses, or just override them?

You could override them when iim.writeenable=0 and blow them when
iim.writeenable=1. Return failure when the override protect fuse is
blown.

The fuse_blow/fuse_sense commands do not make this decision either, they
use the explicit sensing method hardcoded.

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
