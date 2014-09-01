Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOPiF-0003F3-Sc
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 11:23:56 +0000
Date: Mon, 1 Sep 2014 13:23:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901112325.GA18691@pengutronix.de>
References: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
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
Subject: Re: [PATCH 0/2] Rockchip: adapt pinctrl driver to new dts
To: Beniamino Galvani <b.galvani@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 24, 2014 at 06:54:56PM +0200, Beniamino Galvani wrote:
> Hi,
> 
> the dts for Rockchip rk3188 imported in commit 9313920df6d "dts:
> update to v3.16-rc1" contains a change in the bindings for the pinctrl
> node, which now uses syscons to obtain the address of memory mapped
> registers.
> 
> On barebox master branch the pinctrl driver fails during the probe
> with the new dts and thus some pin functions are not set properly; for
> this reason the ethernet port doesn't work at the moment on the Radxa
> Rock.
> 
> The patches below fix the problem, adapting the driver to the new dts.
> 
> Beniamino

Applied, thanks.

I missed this series in my inbox, otherwise the patches would have been
in the last release. Sorry for that.

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
