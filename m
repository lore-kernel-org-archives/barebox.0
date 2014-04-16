Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WaW2p-0003Wb-H5
 for barebox@lists.infradead.org; Wed, 16 Apr 2014 20:02:57 +0000
Date: Wed, 16 Apr 2014 22:02:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140416200232.GT5969@pengutronix.de>
References: <832723417.563292.1397561282646.open-xchange@email.1und1.de>
 <1397662552.5070.12.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397662552.5070.12.camel@weser.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Beaglebone white: Kernel doesn't start with barebox-2014.03.0
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>

On Wed, Apr 16, 2014 at 05:35:52PM +0200, Lucas Stach wrote:
> Hi Rolf,
> =

> Am Dienstag, den 15.04.2014, 13:28 +0200 schrieb Rolf Evers-Fischer:
> > Dear all,
> > after update to barebox-2014.03.0, the kernel on my beaglebone-white do=
esn't
> > start anymore.
> > The last line, which appears, is "booting kernel with devicetree".
> > I discovered that the problem is caused by the commit [1]. When I rever=
t this
> > commit, everything works fine.
> > =

> > Here is some more info, which I gathered with additional printfs:
> > Without this commit, the '__do_bootm_linux()' function is called with
> >  data->initrd_address =3D 0xffffffff
> >  data->os_res->start =3D 0x80008000
> >  data->os_entry =3D 0
> >  swap =3D 0
> > Finally it invokes the 'start_linux()' function with
> >  kernel =3D 0x80008000
> >  swap =3D 0
> >  initrd_start =3D 0x80808000
> >  initrd_size =3D 0
> >  data->oftree =3D 0x8b1e0000
> > =

> > With this commit (i.e. when the kernel doesn't start), the '__do_bootm_=
linux()'
> > function is called with the same parameters as above plus
> >  free_mem =3D 0x8041f000
> > It invokes the 'start_linux()' function with
> >  kernel =3D 0x80008000
> >  swap =3D 0
> >  initrd_start =3D 0x8041f000
> >  initrd_size =3D 0
> >  data->oftree =3D 0x8041f000
> > =

> > Do you have any idea, how to fix this problem? For now I will continue =
using
> > barebox-2014.03.0 without the problematic commit.
> > =

> > [1] http://www.spinics.net/lists/u-boot-v2/msg17345.html
> >     "ARM: bootm: pass free memory to __do_bootm_linux"
> =

> I think you are trying to boot a uImage. Is this right?
> =

> Could you please test with a zImage? If it still fails, can you try the
> following patch?
> =

> --------------------------------->8--------------------------------------=
----
> From 6e51388bda025508b28d723960055656fa50784d Mon Sep 17 00:00:00 2001
> From: Lucas Stach <l.stach@pengutronix.de>
> Date: Wed, 16 Apr 2014 17:23:33 +0200
> Subject: [PATCH] ARM: bootm: be more clever while deciding where to put z=
Image
> =

> For small systems we would put the zImage at 8MiB after
> the start of memory, and put the DT a bit after the zImage.
> When we encounter an image which is bigger than 8MiB
> uncompressed, the kernel would try to relocate itself
> and overwrite the DT.
> =

> Try to be more clever at zImage placement to avoid
> triggering the kernel relocation.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/lib/bootm.c | 31 ++++++++++++++-----------------
>  1 file changed, 14 insertions(+), 17 deletions(-)
> =

> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index c63cbc02e35f..2d4b18b7f794 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -245,23 +245,6 @@ static int do_bootz_linux(struct image_data *data)
>  	if (ret)
>  		return ret;
>  =

> -	if (load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
> -		/*
> -		 * The kernel should stay in the first 128MiB of RAM, recommended
> -		 * is 32MiB into RAM so that relocation prior to decompression
> -		 * can be avoided.
> -		 */
> -		if (mem_size > SZ_64M)
> -			data->os_address =3D mem_start + SZ_32M;
> -		else
> -			data->os_address =3D mem_start + SZ_8M;
> -
> -		load_address =3D data->os_address;
> -		if (bootm_verbose(data))
> -			printf("no os load address, defaulting to 0x%08lx\n",
> -				load_address);
> -	}
> -
>  	fd =3D open(data->os_file, O_RDONLY);
>  	if (fd < 0) {
>  		perror("open");
> @@ -292,6 +275,20 @@ static int do_bootz_linux(struct image_data *data)
>  	if (swap)
>  		end =3D swab32(end);
>  =

> +	if (load_address =3D=3D UIMAGE_INVALID_ADDRESS) {
> +		/*
> +		 * Just use a conservative default of 4 times the size of the
> +		 * compressed image, to avoid the need for the kernel to reocate itself
s/reocate/relocate/

> +		 * before decompression.
> +		 */
> +		data->os_address =3D mem_start + PAGE_ALIGN(end * 4);
I'm not sure if that really matters, but end isn't necessarily[1] holding
the size of the compressed image. Even if it doesn't matter, using

+		data->os_address =3D mem_start + PAGE_ALIGN((end - start) * 4);

is more clear here.

Best regards
Uwe

[1] i.e. with CONFIG_ZBOOT_ROM=3Dy it's wrong.

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
