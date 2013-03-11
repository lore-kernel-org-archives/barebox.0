Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEzbv-0004Xg-QW
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 10:05:41 +0000
Date: Mon, 11 Mar 2013 11:05:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311100538.GG1906@pengutronix.de>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-4-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-4-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 3/9] ARM: zynq: add zynq fsbl checksum script
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:15:00AM +0100, Steffen Trumtrar wrote:
> The bootrom only reads an image if the correct checksum is present in the
> header. The calculation is pretty simple:
> sum over all words from 0x20 to 0x44
> Two of this words are the image length. That is why the checksum can not be
> calculated until barebox_image_size is known.
> The easiest solution is a program that has to be run after make.
> Maybe this can be replaced with some linker-fu.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  scripts/Makefile        |  1 +
>  scripts/zynq_checksum.c | 55 +++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 56 insertions(+)
>  create mode 100644 scripts/zynq_checksum.c
> 
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 08b325c..41c892e 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -12,6 +12,7 @@ hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
>  hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
>  hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
> +hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_checksum
>  
>  HOSTLOADLIBES_omap4_usbboot = -lpthread
>  omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
> diff --git a/scripts/zynq_checksum.c b/scripts/zynq_checksum.c
> new file mode 100644
> index 0000000..e814f86
> --- /dev/null
> +++ b/scripts/zynq_checksum.c
> @@ -0,0 +1,55 @@
> +#include <malloc.h>
> +#include <stdio.h>
> +#include <sys/stat.h>
> +
> +int main(int argc, char *argv[])
> +{
> +	FILE *ifile, *ofile;
> +	unsigned int *buf;
> +	const char *infile;
> +	const char *outfile;
> +	struct stat st;
> +	unsigned int i;
> +	unsigned long sum = 0;
> +
> +	infile = argv[1];
> +	outfile = argv[2];
> +
> +	stat(infile, &st);
> +
> +	buf = malloc(sizeof(*buf) * st.st_size);
> +	if (!buf) {
> +		fprintf(stderr, "Unable to allocate buffer\n");
> +		return -1;
> +	}
> +	ifile = fopen(infile, "rb");
> +	if (!ifile) {
> +		fprintf(stderr, "Cannot open %s for reading\n",
> +			infile);
> +		free(buf);
> +		return -1;
> +	}
> +	ofile = fopen(outfile, "wb");
> +	if (!ofile) {
> +		fprintf(stderr, "Cannot open %s for writing\n",
> +			outfile);
> +		fclose(ifile);
> +		free(buf);
> +		return -1;
> +	}
> +
> +	fread(buf, 4, st.st_size, ifile);
> +
> +	for (i = 0x8; i < 0x12; i++)
> +		sum += buf[i];

endianess?

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
