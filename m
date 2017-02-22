Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgOZF-0004eE-Pb
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 04:30:20 +0000
Received: from player797.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 4EB9BA7959
 for <barebox@lists.infradead.org>; Wed, 22 Feb 2017 05:29:41 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20170221144751.27760-1-yegorslists@googlemail.com>
Date: Wed, 22 Feb 2017 12:29:23 +0800
Message-Id: <0CEC428C-E1EE-48A7-85CF-6FC90A22F47C@jcrosoft.com>
References: <20170221144751.27760-1-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] lib: xz: add support for bcj filters
To: yegorslists@googlemail.com
Cc: hyfinglists@gmail.com, barebox@lists.infradead.org


> On Feb 21, 2017, at 10:47 PM, yegorslists@googlemail.com wrote:
> 
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Add missing configuration options for various bcj filters. Without
> these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
> filters will be disabled.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> lib/Kconfig | 28 ++++++++++++++++++++++++++++
> 1 file changed, 28 insertions(+)
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index f9f25bdef..83dd8e0a4 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -22,6 +22,34 @@ config XZ_DECOMPRESS
> 	bool "include xz uncompression support"
> 	select UNCOMPRESS
> 
> +if XZ_DECOMPRESS
> +
> +config XZ_DEC_X86
> +        bool "x86 BCJ filter decoder"
> +        default y
this need to be ARCH dependant 
> +
> +config XZ_DEC_POWERPC
> +        bool "PowerPC BCJ filter decoder"
> +        default y
> +
ditto
> +config XZ_DEC_IA64
> +        bool "IA-64 BCJ filter decoder"
> +        default y
ditto
> +config XZ_DEC_ARM
> +        bool "ARM BCJ filter decoder"
> +        default y
> +
ditto
> +config XZ_DEC_ARMTHUMB
> +        bool "ARM-Thumb BCJ filter decoder"
> +        default y
> +
ditto
> +config XZ_DEC_SPARC
> +        bool "SPARC BCJ filter decoder"
> +        default y
> +
> +endif
> +
> config REED_SOLOMON
> 	bool
> 
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
