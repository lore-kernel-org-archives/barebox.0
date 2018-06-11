Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGPp-0004zy-0b
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:34:58 +0000
Date: Mon, 11 Jun 2018 08:34:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611063445.fwbw2m5ha6p2nhlj@pengutronix.de>
References: <20180608074133.30653-1-pvizeli@syshack.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180608074133.30653-1-pvizeli@syshack.ch>
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
Subject: Re: [PATCH 1/1] arm: boards: support native fdt for raspberry pi
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Fri, Jun 08, 2018 at 07:41:33AM +0000, Pascal Vizeli wrote:
> It store the native device tree from bootloader to '/rpi_native.dtb'.
> This device tree is not compatible with barebox but needed to boot the
> linux kernel correctly. With new overlay support we can patch this
> device tree on runtime.
> 
> Now barebox can be the middle bootloader and we have no limitations to
> origin bootloader.
> 
> Question: How I can share a address between PBL and barebox?

See other mail I just sent you.

> +static int rpi_native_fdt(void)
> +{
> +	struct fdt_header *oftree;
> +	int mode = O_RWSIZE_4 | O_RDONLY;
> +	int fd = 0;
> +	uint32_t size;
> +	void *map;
> +
> +	fd = open_and_lseek("/dev/mem", mode, rpi_fdt_addr);
> +	if (fd < 0) {
> +		printf("failed open /dev/mem for fdt");
> +		goto end;
> +	}
> +
> +	map = memmap(fd, PROT_READ);
> +	if (map == (void *)-1) {
> +		printf("failed map memory for fdt");
> +		goto end;
> +	}

No need to open/memmap /dev/mem. Just dereference the memory location.

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
