Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWYUm-00061x-3I
 for barebox@lists.infradead.org; Mon, 21 May 2012 19:42:20 +0000
Date: Mon, 21 May 2012 21:42:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120521194217.GC30400@pengutronix.de>
References: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
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
Subject: Re: [PATCH 0/4] panda: misc patches
To: Anand Gadiyar <gadiyar@ti.com>
Cc: barebox@lists.infradead.org

Hi Anand,

On Mon, May 21, 2012 at 04:00:09PM +0530, Anand Gadiyar wrote:
> This series fixes a minor bug in the ehci initialization for panda
> and enables i2c-omap, twlcore and LED support for the board.
> 
> This is my first patch posting to the barebox list and I hope I'll
> have many more in future.
> 
> The patches are based on the -next branch, tested on an OMAP4430 panda.
> Next up is to get OMAP4460/70 support.

Cool, looking forward to this ;)

> 
> Anand Gadiyar (4):
>   panda: fix crash when not using barebox as second stage

Applied this one to master...

>   panda: add i2c and twlcore to panda
>   panda: add LED support
>   panda: update defconfig for i2c and led support

And the rest to next.

Thanks
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
