Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCNU3-0007xY-6k
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 06:35:35 +0000
Date: Wed, 30 Jul 2014 08:35:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140730063504.GK23235@pengutronix.de>
References: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3 0/2] i2c: add Marvell 64xxx driver; fix Makefile
 indentation
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Sebastian,

I'm fine with the driver. Will you ack it once your fine with it aswell?

Sascha

On Tue, Jul 29, 2014 at 04:47:15PM +0400, Antony Pavlov wrote:
> Changes since v2:
> 
>   * drop "allwinner,sun*" stuff;
>   * make macros shorter (drop MV64XXX_I2C_ prefix);
>   * rework mv64xxx_write/mv64xxx_read stuff;
>   * drop mv64xxx_i2c_execute_msg().
>   * drop unused variables.
> 
> Antony Pavlov (2):
>   i2c: add Marvell 64xxx driver
>   i2c: busses/Makefile: fix indentation
> 
>  drivers/i2c/busses/Kconfig       |   8 +
>  drivers/i2c/busses/Makefile      |   5 +-
>  drivers/i2c/busses/i2c-mv64xxx.c | 647 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 658 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/i2c/busses/i2c-mv64xxx.c
> 
> -- 
> 2.0.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
