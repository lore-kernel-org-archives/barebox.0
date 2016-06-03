Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8k3G-0001cV-1J
 for barebox@lists.infradead.org; Fri, 03 Jun 2016 08:01:54 +0000
Date: Fri, 3 Jun 2016 10:01:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160603080131.GU31666@pengutronix.de>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
 <1464854818-28653-4-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464854818-28653-4-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 03/12] arm: introduce lib64 for arm64 related stuff
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 02, 2016 at 10:06:49AM +0200, Raphael Poggi wrote:
> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/lib64/Makefile         |  16 ++
>  arch/arm/lib64/armlinux.c       | 275 +++++++++++++++++++
>  arch/arm/lib64/asm-offsets.c    |  16 ++
>  arch/arm/lib64/barebox.lds      | 125 +++++++++
>  arch/arm/lib64/barebox.lds.S    | 125 +++++++++
>  arch/arm/lib64/bootm.c          | 572 ++++++++++++++++++++++++++++++++++++++++
>  arch/arm/lib64/bootu.c          |  44 ++++
>  arch/arm/lib64/bootz.c          | 136 ++++++++++
>  arch/arm/lib64/copy_template.S  | 192 ++++++++++++++
>  arch/arm/lib64/div0.c           |  27 ++
>  arch/arm/lib64/memcpy.S         |  74 ++++++
>  arch/arm/lib64/memset.S         | 215 +++++++++++++++
>  arch/arm/lib64/module.c         |  98 +++++++
>  arch/arm/lib64/pbl.lds.S        |  96 +++++++
>  arch/arm/lib64/runtime-offset.S |  52 ++++
>  arch/arm/lib64/unwind.c         | 349 ++++++++++++++++++++++++
>  16 files changed, 2412 insertions(+)
>  create mode 100644 arch/arm/lib64/barebox.lds

This file shouldn't be necessary, it's generated from barebox.lds.S

>  create mode 100644 arch/arm/lib64/Makefile
>  create mode 100644 arch/arm/lib64/barebox.lds.S
>  create mode 100644 arch/arm/lib64/asm-offsets.c
>  create mode 100644 arch/arm/lib64/copy_template.S
>  create mode 100644 arch/arm/lib64/div0.c
>  create mode 100644 arch/arm/lib64/memcpy.S
>  create mode 100644 arch/arm/lib64/memset.S

These are most likely fine as they are. Can you make a separate patch
from them?

>  create mode 100644 arch/arm/lib64/bootm.c

Not sure how much should be merged into common code for arm/arm64. We
can keep it like this for now.

>  create mode 100644 arch/arm/lib64/bootu.c
>  create mode 100644 arch/arm/lib64/bootz.c

These shouldn't be needed for arm64, bootm.c is enough.

>  create mode 100644 arch/arm/lib64/module.c

We can drop module support for arm64. I guess this would need
substantial changes for arm64 anyway, so we can remove it here.

>  create mode 100644 arch/arm/lib64/pbl.lds.S
>  create mode 100644 arch/arm/lib64/runtime-offset.S
>  create mode 100644 arch/arm/lib64/unwind.c

How much of this code is already used? If it's unused you can remove it
for now.

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
