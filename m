Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDvor-0002Jc-UK
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 13:59:43 +0000
Date: Wed, 21 Jan 2015 14:59:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150121135920.GJ12209@pengutronix.de>
References: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH 0/5] rafactor _*MAX, *_MIN macros
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 21, 2015 at 02:09:14PM +0900, Masahiro Yamada wrote:
> 
> 
> 
> Masahiro Yamada (5):
>   fs: ubifs: remove redundant macro defines
>   lib: decompress: remove redundant INT_MAX define
>   linux/kernel.h: move *_MAX, *_MIN macros
>   linux/kernel.h: rename USHORT_MAX, SHORT_MAX, SHORT_MIN
>   linux/kernel.h: add more *_MAX, *_MIN macros
> 
>  fs/parseopt.c            |  2 +-
>  fs/ubifs/ubifs.h         |  4 ----
>  include/common.h         | 13 -------------
>  include/linux/kernel.h   | 27 +++++++++++++++++++++++++++
>  lib/decompress_bunzip2.c |  4 ----
>  5 files changed, 28 insertions(+), 22 deletions(-)

Applied, thanks

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
