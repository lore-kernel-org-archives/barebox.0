Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlge9-0004eb-JZ
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 12:22:02 +0000
Date: Tue, 26 Jul 2011 14:21:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110726122157.GM20587@pengutronix.de>
References: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] mips: fix mipsel toolchains support to compile
	BIG_ENDIAN board
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 26, 2011 at 06:40:36AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/mips/Makefile |   42 ++++++++++++++++++++++++++++++++++++++----
>  1 files changed, 38 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 86b4b80..72434d4 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -1,20 +1,54 @@
> +#
> +# Select the object file format to substitute into the linker script.
> +#
> +ifdef CONFIG_CPU_LITTLE_ENDIAN
> +32bit-tool-archpref	= mipsel
> +64bit-tool-archpref	= mips64el
> +32bit-bfd		= elf32-tradlittlemips
> +64bit-bfd		= elf64-tradlittlemips
> +32bit-emul		= elf32ltsmip
> +64bit-emul		= elf64ltsmip
> +else
> +32bit-tool-archpref	= mips
> +64bit-tool-archpref	= mips64
> +32bit-bfd		= elf32-tradbigmips
> +64bit-bfd		= elf64-tradbigmips
> +32bit-emul		= elf32btsmip
> +64bit-emul		= elf64btsmip
> +endif

I'm not convinced that introducing magic for finding a cross toolchain
is a good idea. The corresponding kernel code goes back to the pre
2.6.12 era and I think it wouldn't find its way mainline nowadays.

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
