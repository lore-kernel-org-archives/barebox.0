Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glV6P-0002mY-9u
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 08:38:42 +0000
Date: Mon, 21 Jan 2019 09:38:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121083839.3tqtigsn3276b3gr@pengutronix.de>
References: <20190119005039.31592-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190119005039.31592-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH] defaultenv-2: centralize nfs commands for 'net'
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Fri, Jan 18, 2019 at 07:50:39PM -0500, Vivien Didelot wrote:
> Setting the nfsroot variable as well as the kernel bootargs for the
> interface used to reach the server is specific to nfs, which are used
> only if there's no initramfs to load from tftp. Move these statements
> within the condition.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  defaultenv/defaultenv-2-base/boot/net | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
> index b0fe4f584..5bd077d80 100644
> --- a/defaultenv/defaultenv-2-base/boot/net
> +++ b/defaultenv/defaultenv-2-base/boot/net
> @@ -12,13 +12,11 @@ if [ -f "${oftree}" ]; then
>  	global.bootm.oftree="$oftree"
>  fi
>  
> -nfsroot="/home/${global.user}/nfsroot/${global.hostname}"

Applied with some fixup. We have nfsroot="${nfsserver}:/..." now.

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
