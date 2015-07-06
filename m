Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC4oW-0000tT-TQ
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 11:43:57 +0000
Date: Mon, 6 Jul 2015 13:43:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150706114334.GQ18700@pengutronix.de>
References: <20150706093245.612dd77c@aga-ws-01>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150706093245.612dd77c@aga-ws-01>
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
Subject: Re: [PATCH] build: update compiler*.h to newest versions
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 06, 2015 at 09:32:45AM +0200, Alexey Galakhov wrote:
> This adds the support for gcc 5.x and clang.
> 
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  include/linux/compiler-clang.h |  12 +++
>  include/linux/compiler-gcc.h   | 227 +++++++++++++++++++++++++++++++++++------
>  include/linux/compiler-gcc3.h  |  31 ------
>  include/linux/compiler-gcc4.h  |  61 -----------
>  include/linux/compiler-intel.h |  16 ++-
>  include/linux/compiler.h       |  99 ++++++++++++++++--
>  6 files changed, 315 insertions(+), 131 deletions(-)
>  create mode 100644 include/linux/compiler-clang.h
>  delete mode 100644 include/linux/compiler-gcc3.h
>  delete mode 100644 include/linux/compiler-gcc4.h

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
