Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAD5q-00042a-6K
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 07:05:35 +0000
Date: Thu, 24 Jul 2014 09:05:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140724070511.GI23235@pengutronix.de>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 00/10] More USB cleanup and fixes
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 23, 2014 at 03:51:41PM +0200, Sebastian Hesselbarth wrote:
> Sascha,
> 
> I have assembled a bunch of additional imports, cleanup, and fixes
> before actually rebasing xHCI HCD on top of your latest USB changes.
> 
> Patches 1-3 import ch11.h from Linux and prepare it for use in
> Barebox.
> 
> Patch 4 fixes a copy-and-paste error in usb_hub_configure().
> 
> Patches 5-8 clean up ehci-hcd and make it use ch9.h defines.
> 
> Patch 9 installs ch11.h and removes the duplicates from usb.h.
> 
> Patch 10 finally removes now redundant defines from usb_defs.h.
> 
> I have only compile-tested this as far as I could, so at least a
> Tested-by on any EHCI driver would be good.

Nice cleanups! I gave it a quick test on an i.MX53 and all devices
are still detected, an ethernet dongle is still working.

Applied, thanks

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
