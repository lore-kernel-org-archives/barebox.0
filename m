Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlkTC-00085e-3V
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 17:31:32 +0000
Received: by ggcs5 with SMTP id s5so4668121ggc.36
 for <barebox@lists.infradead.org>; Mon, 02 Jul 2012 10:30:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
Date: Mon, 2 Jul 2012 19:30:20 +0200
Message-ID: <CAAfyv35OtZycyLLcZm+PAt9Wxxiq1_O2XJyTsYqBDZU5LfDBNQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: Re: [PATCH 1/2] Add support for kernel and device tree images stored
 in a partition
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

On Mon, Jul 2, 2012 at 4:14 PM, Maxime Ripard
<maxime.ripard@free-electrons.com> wrote:
> It is a quite common setup to have a partition with all you need to boot
> from the bootloader, ie the kernel image, the device tree blob, etc.
>
> This patch introduces a new "file" location for these two images, which
> uses in turn the *_part and the new *_part_type variable specifying the
> fs type used by mount.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> Cc: Brian Lilly <brian@crystalfontz.com>
> ---
>  defaultenv/bin/boot |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index 61b893a..26360ed 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -114,6 +114,12 @@ elif [ x$kernel_loc = xnand ]; then
>         kdev="/dev/nand0.kernel.bb"
>  elif [ x$kernel_loc = xdisk ]; then
>         kdev="/dev/$kernel_part"
> +elif [ x$kernel_loc = xfile ]; then
> +       if [ ! -d $kernel_part ]; then
> +               mkdir $kernel_part
> +               mount /dev/$kernel_part $kernel_part_type $kernel_part
> +       fi
> +       kdev="$kernel_part/$kernelimage"
This really helps also pandaboard because pandaboard kernel is still
on mmc and I was looking
for such solution (thx). Maybe one remark there should be also update
for file option in _boot_help script.
>  else
>         echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
>         exit 1
> @@ -128,6 +134,12 @@ elif [ x$oftree_loc = xnand ]; then
>         odev="/dev/nand0.oftree.bb"
>  elif [ x$oftree_loc = xdisk ]; then
>         odev="/dev/$oftree_part"
> +elif [ x$oftree_loc = xfile ]; then
> +       if [ ! -d $oftree_part ]; then
> +               mkdir $oftree_loc
> +               mount /dev/$oftree_part $oftree_part_type $oftree_part
> +       fi
> +       odev="$oftree_part/$oftreeimage"
>  fi
>
>  [ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
> --
> 1.7.9.5
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

regards,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
