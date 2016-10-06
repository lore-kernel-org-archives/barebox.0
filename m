Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x242.google.com ([2607:f8b0:400c:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bs99I-0006mp-0z
 for barebox@lists.infradead.org; Thu, 06 Oct 2016 13:55:48 +0000
Received: by mail-vk0-x242.google.com with SMTP id 2so773230vkb.1
 for <barebox@lists.infradead.org>; Thu, 06 Oct 2016 06:55:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161004101048.12970-5-ejo@pengutronix.de>
References: <20161004101048.12970-1-ejo@pengutronix.de>
 <20161004101048.12970-5-ejo@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 6 Oct 2016 15:55:06 +0200
Message-ID: <CAGm1_kvFujU0QcCdmREtbRfU7J_vQgMnJvs9k=dpR3PQ=9+_6g@mail.gmail.com>
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
Subject: Re: [PATCH 4/5] Add filetype and detection for squashfs images
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi Enrico,

On Tue, Oct 4, 2016 at 12:10 PM, Enrico Jorns <ejo@pengutronix.de> wrote:
> This adds `filetype_squashfs` to the list of known filetypes and adds a
> detection for squashfs files to file_detect_type(). This currently
> matches on the `hsqs` start sequence of an image file.
>
> Additionally, the newly introduced filetype is registered as the type of
> the squashfs_driver which allows, for example, to mount squashfs without
> the need to specify a type parameter.
>
> This changes enable booting a squashfs with the simple `boot` command
> pointing to the location (device) that holds the squashfs.
>
> Note that booting with blspec is limited as the current squashfs driver
> is not capable of handling symbolic links.

Glad to see SquashFS will be used not only by myself :-)

Could you explain how one can write a rootfs.sqaushfs to a ubiblock
from Linux and then what steps are needed in barebox?

So far I've only found this info about ubiblock:
http://www.linux-mtd.infradead.org/doc/ubi.html#L_ubiblock, but it
doesn't say much.

My actions were:

ubiattach -p /dev/mtd5
ubiblock --create /dev/ubi0_0
ubiupdatevol /dev/ubi0_0 rootfs.squashfs

Can I mount /dev/ubi0_0 via mount? If yes, what parameters I should use?

How can I mount this volume in barebox step-by-step?

Thanks.

Yegor

> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  common/filetype.c      | 4 ++++
>  fs/squashfs/squashfs.c | 1 +
>  include/filetype.h     | 1 +
>  3 files changed, 6 insertions(+)
>
> diff --git a/common/filetype.c b/common/filetype.c
> index 4728f87..8d72933 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -40,6 +40,7 @@ static const struct filetype_str filetype_str[] = {
>         [filetype_uimage] = { "U-Boot uImage", "u-boot" },
>         [filetype_ubi] = { "UBI image", "ubi" },
>         [filetype_jffs2] = { "JFFS2 image", "jffs2" },
> +       [filetype_squashfs] = { "Squashfs image", "squashfs" },
>         [filetype_gzip] = { "GZIP compressed", "gzip" },
>         [filetype_bzip2] = { "BZIP2 compressed", "bzip2" },
>         [filetype_oftree] = { "open firmware Device Tree flattened Binary", "dtb" },
> @@ -278,6 +279,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>         if (buf8[0] == 0xfd && buf8[1] == 0x37 && buf8[2] == 0x7a &&
>                         buf8[3] == 0x58 && buf8[4] == 0x5a && buf8[5] == 0x00)
>                 return filetype_xz_compressed;
> +       if (buf8[0] == 'h' && buf8[1] == 's' && buf8[2] == 'q' &&
> +                       buf8[3] == 's')
> +               return filetype_squashfs;
>         if (buf[0] == be32_to_cpu(0xd00dfeed))
>                 return filetype_oftree;
>         if (strncmp(buf8, "ANDROID!", 8) == 0)
> diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
> index d00dee6..6d04681 100644
> --- a/fs/squashfs/squashfs.c
> +++ b/fs/squashfs/squashfs.c
> @@ -353,6 +353,7 @@ static struct fs_driver_d squashfs_driver = {
>         .readdir        = squashfs_readdir,
>         .closedir       = squashfs_closedir,
>         .stat           = squashfs_stat,
> +       .type           = filetype_squashfs,
>         .drv = {
>                 .probe = squashfs_probe,
>                 .remove = squashfs_remove,
> diff --git a/include/filetype.h b/include/filetype.h
> index cde73c1..65bd6ef 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -16,6 +16,7 @@ enum filetype {
>         filetype_uimage,
>         filetype_ubi,
>         filetype_jffs2,
> +       filetype_squashfs,
>         filetype_gzip,
>         filetype_bzip2,
>         filetype_oftree,
> --
> 2.9.3
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
