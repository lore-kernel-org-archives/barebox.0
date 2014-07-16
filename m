Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7KZ2-0002cv-R7
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:27:49 +0000
Date: Wed, 16 Jul 2014 10:27:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140716082726.GD23235@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
 <20140715224219.19f604e6d856a3aff702f702@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140715224219.19f604e6d856a3aff702f702@gmail.com>
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
Subject: Re: Update/include some functions from the Kernel
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 15, 2014 at 10:42:19PM +0400, Antony Pavlov wrote:
> On Tue, 15 Jul 2014 15:49:28 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> After rebasing over latest next I have got many warnings like this:
> 
>   CC      common/filetype.o
> In file included from include/common.h:26:0,
>                  from common/filetype.c:18:
> include/linux/bitops.h: In function 'hweight_long':
> include/linux/bitops.h:77:2: warning: implicit declaration of function 'hweight32' [-Wimplicit-function-declaration]
>   return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
>   ^
> include/linux/bitops.h:77:2: warning: implicit declaration of function 'hweight64' [-Wimplicit-function-declaration]
> include/linux/bitops.h: In function 'fls_long':
> include/linux/bitops.h:175:2: warning: implicit declaration of function 'fls64' [-Wimplicit-function-declaration]
>   return fls64(l);
>   ^

Ouch. An update to this series is under way.

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
