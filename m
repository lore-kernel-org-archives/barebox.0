Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gaW-0000iH-Iz
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 07:17:22 +0000
Date: Mon, 2 Sep 2019 09:17:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190902071717.4m4xa6vkr7xv6iag@pengutronix.de>
References: <20190829191007.13644-1-cory.tusar@zii.aero>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829191007.13644-1-cory.tusar@zii.aero>
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
Subject: Re: [PATCH] Documentation: zii-imx7d-dev: Fix errors with openocd
 configuration script
To: Cory Tusar <Cory.Tusar@zii.aero>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <Chris.Healy@zii.aero>

On Thu, Aug 29, 2019 at 07:10:25PM +0000, Cory Tusar wrote:
> When attempting to use the existing configuration file to bootstrap an
> RMU2 board, openocd would consistently fail in the 'safe_reset' function
> with a number of errors.
> 
> Disabling the internal reset handling (similar to what's done on the
> i.MX7 Sabre boards) allowed barebox to download and run successfully.
> 
> Tested with openocd-0.10.0+dev-00924-g16496488 on a Zodiac RMU2.
> 
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  Documentation/boards/imx/zii-imx7d-dev/openocd.cfg | 6 ++++++
>  1 file changed, 6 insertions(+)

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
