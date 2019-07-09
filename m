Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmci-0007w2-T8
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 09:41:22 +0000
Date: Tue, 9 Jul 2019 11:41:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190709094118.ye6jaujeeec7lc3d@pengutronix.de>
References: <20190709072253.22062-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709072253.22062-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] lib: Add missing arguments to memcpy_parse_options()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Tue, Jul 09, 2019 at 12:22:53AM -0700, Andrey Smirnov wrote:
> Memcpy use-case differs from that of memcmp in default access type and
> destination file mode. This was missed in original commit that
> introduced memcpy_parse_options(). Add said parameters to
> memcpy_parse_options(), so the can be correctly specified depending on
> the use-case.
> 
> Fixes: ddf4cca339 ("commands: Introduce memcpy_parse_options()")
> Reported-by: Peter Mamonov <pmamonov@gmail.com>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/memcmp.c | 3 ++-
>  commands/memcpy.c | 3 ++-
>  include/common.h  | 3 ++-
>  lib/misc.c        | 7 ++++---
>  4 files changed, 10 insertions(+), 6 deletions(-)

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
