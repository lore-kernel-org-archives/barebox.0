Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYAqm-0002OK-NZ
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 11:09:53 +0000
Date: Tue, 23 Feb 2016 12:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160223110930.GF3939@pengutronix.de>
References: <CAFfN3gVQe42ymDjXDZntq_cR0mms9W2MPin0G7_-QWwgUJag5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gVQe42ymDjXDZntq_cR0mms9W2MPin0G7_-QWwgUJag5g@mail.gmail.com>
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
Subject: Re: bootm: booting of uncompressed uimages broken
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org, Lucas Stach <lst@pengutronix.de>

Hi Hubert,

On Tue, Feb 23, 2016 at 10:52:21AM +0100, Hubert Feurstein wrote:
> Hi,
> 
> booting of uncompressed uimages is broken since patch "ARM: bootm: fix
> default uImage placement" (0839e3f402ffc74202a1ca4fbeaffcadb4336ce1):
> 
> This is the change causing the issue:
> @@ -138,13 +144,10 @@ static int do_bootm_linux(struct image_data *data)
>   return ret;
> 
>   /*
> - * Put devicetree/initrd at maximum to 128MiB into RAM to not
> - * risk to put it outside of lowmem.
> + * put oftree/initrd close behind compressed kernel image to avoid
> + * placing it outside of the kernels lowmem.
>   */
> - if (mem_size > SZ_256M)
> - mem_free = mem_start + SZ_128M;
> - else
> - mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
> + mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
> 
>   return __do_bootm_linux(data, mem_free, 0);
>  }
> 
> System Info: iMX6S; 512MB RAM; LoadAddress 0x10008000; Barebox v2015.06.0

I assume what happens here is that due to 0839e3f40 barebox places the
device tree close behind the kernel image, the kernel then copies itself
out of the way so it won't overwrite itself while uncompressing, then it
uncompresses itself back to 0x10008000 and overwrites the device tree.

This behaviour is broken and should be fixed.

However, 0x10008000 is a poor choice for the load address. It's exactly
the place where the decompressor has to put the image to after
decompressing, so this address forces the decompressor to move the
compressed kernel somewhere else before decompressing it.

You could specify the load address to 0xffffffff. This allows barebox to
pick a good place for the kernel image. A bonus is a slightly faster
kernel startup because barebox will pick a place that does not force the
decompressor to move the kernel image.

We should probably finally fix the kernel decompressor so that it won't
overwrite the device tree.

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
