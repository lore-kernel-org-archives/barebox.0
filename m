Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNJqi-0006pA-59
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 13:05:13 +0000
Date: Wed, 13 Jul 2016 15:04:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160713130448.GC20657@pengutronix.de>
References: <1468395431.547554214@f355.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1468395431.547554214@f355.i.mail.ru>
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
Subject: Re: Patch "syscon: Decrease driver registration priority" breaks
 clps711x target
To: Alexander Shiyan <shc_work@mail.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jul 13, 2016 at 10:37:11AM +0300, Alexander Shiyan wrote:
> Hello All.
> 
> Patch "syscon: Decrease driver registration priority" breaks clps711x target.
> Previously, the syscon device initialized at "core_initcall", that did not cause problems.
> Now the device is initialized at "device_initcall" level, but clps711x uses syscon for
> the serial, so serial device initialized at "console_initcall" level.
> Any ideas?

We could move syscon back to core_initcall level and in the syscon
driver use dev_get_resource() instead of request_iomem_region().

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
