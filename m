Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk7Ir-0006jz-LT
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 06:34:39 +0000
Date: Wed, 5 Jun 2013 08:34:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605063414.GL32299@pengutronix.de>
References: <1370349512-75630-1-git-send-email-monaka@monami-ya.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370349512-75630-1-git-send-email-monaka@monami-ya.jp>
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
Subject: Re: [PATCH 1/3] Remove unnesessory malloc.h inclusions.
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2013 at 09:38:30PM +0900, Masaki Muranaka wrote:
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>
> ---
>  commands/barebox-update.c | 1 -
>  commands/bootm.c          | 1 -
>  commands/cat.c            | 1 -
>  commands/cp.c             | 1 -
>  commands/crc.c            | 1 -
>  commands/dfu.c            | 1 -
>  commands/edit.c           | 1 -
>  commands/exec.c           | 1 -
>  commands/global.c         | 1 -
>  commands/i2c.c            | 1 -
>  commands/insmod.c         | 1 -
>  commands/let.c            | 1 -
>  commands/linux16.c        | 1 -
>  commands/loadxy.c         | 1 -
>  commands/ls.c             | 1 -
>  commands/md.c             | 1 -
>  commands/memcmp.c         | 1 -
>  commands/memcpy.c         | 1 -
>  commands/meminfo.c        | 1 -
>  commands/memset.c         | 1 -
>  commands/miitool.c        | 1 -
>  commands/mm.c             | 1 -
>  commands/mw.c             | 1 -
>  commands/nand.c           | 1 -
>  commands/nandtest.c       | 1 -
>  commands/of_node.c        | 1 -
>  commands/oftree.c         | 1 -
>  commands/partition.c      | 1 -
>  commands/readline.c       | 1 -
>  commands/readlink.c       | 1 -
>  commands/spi.c            | 1 -
>  commands/splash.c         | 1 -
>  commands/time.c           | 1 -
>  commands/ubiformat.c      | 1 -
>  commands/uimage.c         | 1 -
>  commands/usbserial.c      | 1 -
>  common/console.c          | 1 -
>  common/image.c            | 1 -
>  38 files changed, 38 deletions(-)

This still produces a lot of warnings:

commands/bootm.c:191:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/memcmp.c:125:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/memset.c:82:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/edit.c:175:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
include/stringlist.h:27:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/cp.c:75:4: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/cat.c:78:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/readline.c:33:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/time.c:41:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/global.c:34:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/readlink.c:58:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/oftree.c:197:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]

I think you have to replace it with stdlib.h in these files rather than
removing malloc.h (Of course after the free() prototype has been moved
to stdlib.h)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
