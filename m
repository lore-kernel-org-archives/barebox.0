Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAbuX-0003vK-41
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 07:58:45 +0000
Date: Wed, 27 Feb 2013 08:58:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130227075843.GE1906@pengutronix.de>
References: <1361897421-3228-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361897421-3228-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCHv2 0/2] ARM: cfa10036: Store the barebox environment on
 the MMC
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2013 at 05:50:19PM +0100, Maxime Ripard wrote:
> Hi,
> 
> The cfa-10036 comes only with a SD slot, so there was previously no way to
> store in a persistent way the environment we could have modified other than
> by modifying the code source itself.
> 
> These two patches register a new partition on the SD card to store that
> environment, and update the default environment to reflect these changes.
> 
> Thanks,
> Maxime

Applied, thanks

Sascha

> 
> Changes from v1:
>   - Make use of the new common envfs_register_partition function
> 
> Maxime Ripard (2):
>   cfa-10036: Use the second MMC partition to store the environment
>   cfa10036: Update the environment
> 
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c         |    8 +++++++-
>  arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3  |    6 +++---
>  arch/arm/boards/crystalfontz-cfa10036/env/init/automount |    4 ++--
>  3 files changed, 12 insertions(+), 6 deletions(-)
> 
> -- 
> 1.7.10.4
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
