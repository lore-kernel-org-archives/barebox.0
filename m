Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biFAi-0003q9-5l
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 06:20:20 +0000
Date: Fri, 9 Sep 2016 08:20:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160909062001.zsdw34lnzs3kdo4x@pengutronix.de>
References: <20160907201236.26820-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160907201236.26820-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Documentation: aarch64-qemu-virt: fix sphinx issues
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Raphael Poggi <poggi.raph@gmail.com>

On Wed, Sep 07, 2016 at 11:12:36PM +0300, Antony Pavlov wrote:
> The patch fixes these sphinx issues:
> 
>     barebox/Documentation/boards/aarch64-qemu-virt.rst:7: WARNING: Title underline too short.
> 
>     Running barebox on QEMU aarch64 virt machine
>     ^^^^^^^^^^^^^^^^^^^^^^^
>     barebox/Documentation/boards/aarch64-qemu-virt.rst:1: ERROR: Document or section may not begin with a transition.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Raphael Poggi <poggi.raph@gmail.com>
> ---
>  Documentation/boards/aarch64-qemu-virt.rst | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
> index b6b446e..e21791a 100644
> --- a/Documentation/boards/aarch64-qemu-virt.rst
> +++ b/Documentation/boards/aarch64-qemu-virt.rst
> @@ -1,10 +1,11 @@
> -===========
> +Aarch64
> +=======
>  
>  Aarch64 Qemu virt
> -------------------------
> +-----------------
>  
>  Running barebox on QEMU aarch64 virt machine
> -^^^^^^^^^^^^^^^^^^^^^^^
> +^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
>  Usage::
>  	$ qemu-system-aarch64 -m 2048M \
> -- 
> 2.9.3
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
