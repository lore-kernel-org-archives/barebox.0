Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P1Zqt-0001uf-TX
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 07:16:23 +0000
Date: Fri, 1 Oct 2010 09:16:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101001071618.GA28242@pengutronix.de>
References: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
	<1285903152-5840-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1285903152-5840-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] MAKEALL: make it generic
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 01, 2010 at 05:19:12AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> it's allow you to compile specific defconfig or ARCH or all
> as
> 
> CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL
> 
> The cross-compiler can be specify via
>     CROSS_COMPILE               default
>     CROSS_COMPILE_<arch>        arch default
>     CROSS_COMPILE_<target>      deconfig specifc
> 
> it will be evaluated in the invert order
> 
> or via config
> 
> you can specify it via env CONFIG or option -c (overwrite env)
> 
> CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig
> CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL
> 
> and for all
> 
> CONFIG=./MAKEALL.cfg ./MAKEALL
> 
> you can specify via env or option
> env       option
> ARCH      -a      arch
> CONFIG    -c      config
> JOBS      -j      jobs
> BUILDDIR  -O      build dir
> LOGDIR    -l      log dir
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v3:
> add getopts supports
> 
> add usage support
> 
> Best Rebards,
> J.
>  MAKEALL |  286 ++++++++++++++++++++++++++++++++++++++++++++++++++-------------
>  1 files changed, 227 insertions(+), 59 deletions(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index dd0f66b..d42be6e 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -1,89 +1,257 @@
> -#!/bin/bash
> +#!/bin/sh

With /bin/sh here ./MAKEALL -c MAKEALL.cfg does not work. I have to
explicitely call ./MAKEALL -c ./MAKEALL.cfg. Can we keep /bin/bash here
or has anybody a better idea?


> +
> +if [ "${CONFIG}" ]
> +then
> +	source "${CONFIG}"
> +fi

It fails here with:

./MAKEALL: line 230: source: MAKEALL.cfg: file not found

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
