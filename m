Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7JgK-0007as-7x
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 06:26:45 +0000
Date: Thu, 8 Aug 2013 08:26:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130808062620.GR26614@pengutronix.de>
References: <20130806064229.GY26614@pengutronix.de>
 <20130806103133.GB26614@pengutronix.de>
 <1375786384.974905160@f289.i.mail.ru>
 <1375942999.492608031@f421.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1375942999.492608031@f421.i.mail.ru>
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
Subject: Re: v2013.08.0
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Aug 08, 2013 at 10:23:19AM +0400, Alexander Shiyan wrote:
> > > On Tue, Aug 06, 2013 at 02:12:35PM +0400, Alexander Shiyan wrote:
> > > > > Finally we have an August release!
> > > > > 
> > > > > Here are the patches that went in between this and the last release:
> > > > 
> > > > Here is a first result of compile:
> > > > 
> > > > drivers/built-in.o: In function `ubi_volume_notify':
> > > > :(.text.ubi_volume_notify+0x14): undefined reference to `ubi_do_get_device_info'
> > > > :(.text.ubi_volume_notify+0x24): undefined reference to `ubi_do_get_volume_info'
> > > > make: *** [barebox] Error 1
> > > 
> > > Fortunately this is in current master and not the release. The following
> > > should fix this. It the patch adding ubi_volume_notify depended on
> > > another patch which I have locally and I didn't notice that.
> > 
> > The patch is works as expected. Thanks.
> 
> Additional warning on ubi_volume_notify:

This should be fixed already in master.

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
