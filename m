Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbTfw-0001nb-Ej
 for barebox@lists.infradead.org; Sun, 12 May 2013 10:38:44 +0000
Date: Sun, 12 May 2013 12:38:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130512103822.GZ32299@pengutronix.de>
References: <1368164349-24479-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368164349-24479-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: OMAP MCI: Move TWL6030 power initialization
 into OMAP directory
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, May 10, 2013 at 09:39:08AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-omap/omap4_twl6030_mmc.c | 18 ++++++++++++++++--
>  drivers/mci/Makefile                   |  1 -
>  drivers/mci/twl6030.c                  | 29 -----------------------------
>  include/mci/twl6030.h                  | 10 ----------
>  4 files changed, 16 insertions(+), 42 deletions(-)
>  delete mode 100644 drivers/mci/twl6030.c
>  delete mode 100644 include/mci/twl6030.h

Applied (both), thanks

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
