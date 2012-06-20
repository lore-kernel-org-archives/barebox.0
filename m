Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShF8b-0001Yc-CN
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 07:15:38 +0000
Date: Wed, 20 Jun 2012 09:15:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120620071535.GH28394@pengutronix.de>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340030880-10062-1-git-send-email-js@sig21.net>
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
Subject: Re: [PATCH 0/6] misc ethernet fixes and new driver
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

On Mon, Jun 18, 2012 at 04:47:54PM +0200, Johannes Stezenbach wrote:
> Hi,
> 
> I ported the designware ethernet driver from u-boot, it
> only required minor changes and worked right away.
> Since my hw has 1G ethernet I added support for this,
> although speed is not so important in a boot loader it seemed
> easier than to reconfigure the PHY for 100Mbit.
> 
> Patches 4 and 5 may be a bit controversial.  The motivation
> for patch 4 is that took me some head scratching to get
> debug read/write on PHY regs correct since md and mw worked
> against my intuition on /dev/phy0.
> The string in eth_set_ethaddr() confused me to think a string
> would be passed to ->set_ethaddr().  Changing "unsigned char *adr"
> to "u8 adr[6]" does not change the generated code but is IMHO
> harder to misunderstand.

I applied this series up to 5/6 for now. Thanks, it's always nice to see code
cleanups.

Sascha

> 
> 
> Johannes
> 
>  drivers/net/Kconfig      |   11 ++
>  drivers/net/Makefile     |    1 +
>  drivers/net/designware.c |  433 ++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/net/designware.h |  230 ++++++++++++++++++++++++
>  drivers/net/miidev.c     |   72 ++++++--
>  include/miidev.h         |    4 +
>  include/net.h            |    8 +-
>  include/net/designware.h |    9 +
>  net/eth.c                |    2 +-
>  net/net.c                |    4 +-
>  10 files changed, 752 insertions(+), 22 deletions(-)
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
