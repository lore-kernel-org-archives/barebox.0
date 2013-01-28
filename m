Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzjBU-0002cf-Cd
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 07:31:18 +0000
Date: Mon, 28 Jan 2013 08:31:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128073115.GD1906@pengutronix.de>
References: <20130127163903.GN26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130127163903.GN26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4] at91: sam9gx5/9g45/9n12 sd/ddrram autodetect size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 27, 2013 at 05:39:03PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> The following changes since commit cd1c289b2a4949e8acb235d4847419bde784a9d6:
> 
>   Merge branch 'for-next/misc' into next (2013-01-25 19:51:11 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91_ddr_autodetect_size

Applied, thanks

Sascha

> 
> for you to fetch changes up to 1cfd6344df05b57d5ee2103b03f9b3bafcebd0a8:
> 
>   at91: Atmel ref board sam{9x5/9n12/m109g45} EK and Ronetix pm9g45 autodetect ddr size (2013-01-23 17:27:50 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (4):
>       at91sam9x5: add autodetect sd/ddram size
>       at91sam9n12: add autodetect sd/ddram size
>       at91sam9g45: add autodetect sd/ddram size
>       at91: Atmel ref board sam{9x5/9n12/m109g45} EK and Ronetix pm9g45 autodetect ddr size
> 
>  arch/arm/boards/at91sam9m10g45ek/init.c           |    2 +-
>  arch/arm/boards/at91sam9m10ihd/init.c             |    2 +-
>  arch/arm/boards/at91sam9n12ek/init.c              |    2 +-
>  arch/arm/boards/at91sam9x5ek/init.c               |    2 +-
>  arch/arm/boards/pm9g45/init.c                     |    2 +-
>  arch/arm/mach-at91/at91sam9g45_devices.c          |    4 ++++
>  arch/arm/mach-at91/at91sam9n12_devices.c          |    4 ++++
>  arch/arm/mach-at91/at91sam9x5_devices.c           |    4 ++++
>  arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   89 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  9 files changed, 106 insertions(+), 5 deletions(-)
> 
> Best Regards,
> J.
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
