Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuFYG-0006lU-Mq
 for barebox@lists.infradead.org; Thu, 05 Nov 2015 08:05:45 +0000
Date: Thu, 5 Nov 2015 09:05:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151105080523.GF8526@pengutronix.de>
References: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: Re: [PATCH v2 0/2] Embedsky E9 changes
To: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 04, 2015 at 11:16:31PM +0100, Anton Bondarenko wrote:
> Compared to V1:
> * Removed defconfig as suggested since imx_v7_defconfig is used.
> * Removed DTS cleanup patch since it's applied, and no changes in it.
> * Reworked barebox_update command to use IMX6 specific handler for MMC/SD.
> * Renamed image to follow generic naming pattern for IMX boards.
> 
> Anton Bondarenko (2):
>   embedsky-e9: enable barebox_update command for booter update
>   images: Embedsky E9: use image name like the rest of boards

Applied, thanks

Sascha

> 
>  arch/arm/boards/embedsky-e9/board.c | 8 ++++++++
>  images/Makefile.imx                 | 4 ++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> -- 
> 2.6.2
> 
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
