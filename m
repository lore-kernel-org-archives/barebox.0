Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUhvd-0003kX-8i
 for barebox@lists.infradead.org; Wed, 16 May 2012 17:22:25 +0000
Date: Wed, 16 May 2012 19:22:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120516172223.GU30400@pengutronix.de>
References: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 0/5] arch/arm: mioa701 linux booting
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Tue, May 15, 2012 at 11:21:12PM +0200, Robert Jarzmik wrote:
> This patch serie makes linux autobooting and barebox flashing
> and reflashing much more automated.
> This serie serves as the first fully working barebox setup,
> fully replacing the existing legacy boot code on the mioa701.
> 
> --
> Robert
> 

Applied, thanks

Sascha

> Robert Jarzmik (5):
>   arm/board: mioa701 align kernel options with kernel mtd
>   arch/arm: mioa701 make autoboot of Linux work
>   arch/arm: mioa701 add IPL and DPS1 updater
>   arch/arm: mioa701 use maximum CPU frequency
>   arch/arm: mioa701 improve barebox_update script
> 
>  arch/arm/boards/mioa701/board.c                |   13 +++++++++++--
>  arch/arm/boards/mioa701/env/bin/barebox_update |    5 +++++
>  arch/arm/boards/mioa701/env/bin/dps1_unlock    |   12 ++++++++++++
>  arch/arm/boards/mioa701/env/bin/dps1_update    |   12 ++++++++++++
>  arch/arm/boards/mioa701/env/bin/init           |   19 ++++++++++++-------
>  arch/arm/boards/mioa701/env/data/dps1.raw.gz   |  Bin 0 -> 1239 bytes
>  6 files changed, 52 insertions(+), 9 deletions(-)
>  create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_unlock
>  create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_update
>  create mode 100644 arch/arm/boards/mioa701/env/data/dps1.raw.gz
> 
> -- 
> 1.7.10
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
