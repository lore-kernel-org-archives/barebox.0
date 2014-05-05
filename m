Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhDUJ-0000iN-8U
 for barebox@lists.infradead.org; Mon, 05 May 2014 07:38:59 +0000
Date: Mon, 5 May 2014 09:38:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140505073836.GU5858@pengutronix.de>
References: <1398671161-29045-3-git-send-email-s.hauer@pengutronix.de>
 <ce25001663e5dbf1538169d24785575d2292f210.1398836737.git.silvio.fricke@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce25001663e5dbf1538169d24785575d2292f210.1398836737.git.silvio.fricke@gmail.com>
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
Subject: Re: [PATCH] make: dts: fix out-of-tree build
To: Silvio Fricke <silvio.fricke@gmail.com>
Cc: barebox@lists.infradead.org

Hi Silvio,

On Wed, Apr 30, 2014 at 07:49:34AM +0200, Silvio Fricke wrote:
> If barebox is builded out-of-tree we don't find the dts-include
> 
> This patch prevent us to get this:
> /[...]/barebox/drivers/input/keymap.c:4:37: fatal error: dt-bindings/input/input.h: No such file or directory
> 
> Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>

I already realized and fixed this when someone else mentioned
out-of-tree building doesn't work. It seems I really have to do this
more frequently.

Sascha

> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index a54b82b..c654f4f 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -290,7 +290,7 @@ export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_ve
>  
>  # Use LINUXINCLUDE when you must reference the include/ directory.
>  # Needed to be compatible with the O= option
> -LINUXINCLUDE    := -Iinclude -Idts/include \
> +LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
>                     $(if $(KBUILD_SRC),-Iinclude2 -I$(srctree)/include) \
>  		   -I$(srctree)/arch/$(ARCH)/include \
>  		   -I$(objtree)/arch/$(ARCH)/include \
> -- 
> 1.9.2
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
