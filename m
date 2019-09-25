Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5f7-0007O9-F4
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 11:40:51 +0000
Date: Wed, 25 Sep 2019 13:40:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190925114047.ip23swk6phthgw3j@pengutronix.de>
References: <20190923063320.4177-1-a.schwarzkopf@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923063320.4177-1-a.schwarzkopf@phytec.de>
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
Subject: Re: [PATCH] Allow usage of default environment without environment
 file storage
To: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Cc: barebox@lists.infradead.org

Hi Albert,

On Mon, Sep 23, 2019 at 08:33:20AM +0200, Albert Schwarzkopf wrote:
> Currently, the default environment is only used when the
> barebox environment on the persistent store is not valid
> or when ENVFS_FLAGS_FORCE_BUILT_IN is set in the super block.
> 
> However, ENVFS_FLAGS_FORCE_BUILT_IN can be cleared and the
> environmnet variables in the persistent store will be
> used again. This may not be desirable.
> 
> This patch allows building CONFIG_DEFAULT_ENVIRONMENT
> independent of CONFIG_ENV_HANDLING. This can be useful
> if you never want to load or write values from the
> persistent store and you only need to read environment variables
> from your default environment.
> 
> If CONFIG_ENV_HANDLING is not set, a message will be printed to the
> user indicating that changes to non-volatile variables won't be
> persisted.

I understand what you want to archieve, but your patch currently
introduces too many new #ifdefs in a code that has too many of them
already. This has to be cleaned up before I can merge this.

> diff --git a/common/Makefile b/common/Makefile
> index a284655fc..d4528bb5c 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -26,6 +26,7 @@ obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
>  obj-y				+= console_countdown.o
>  obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
>  obj-$(CONFIG_ENV_HANDLING)	+= environment.o
> +obj-$(CONFIG_DEFAULT_ENVIRONMENT) += environment.o

So this file is compiled when CONFIG_ENV_HANDLING or
CONFIG_DEFAULT_ENVIRONMENT is set. At the same time the file has #ifdef
CONFIG_ENV_HANDLING in it. This might indicate that the code in this
file has to be split up into multiple files, or maybe the functions have
to be rearranged.

Regards,
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
