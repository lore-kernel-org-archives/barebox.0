Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLMBU-0005Ds-Oa
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 01:33:46 +0000
Message-ID: <54DAB0AA.7090402@atmel.com>
Date: Wed, 11 Feb 2015 09:30:18 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
In-Reply-To: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] SAMA5D4EK - Now mostly supports booting Android from
 NAND.
To: Doug Brainard <dbrainard@brainardinsight.com>, barebox@lists.infradead.org

Hi Doug Brainard,

On 02/10/2015 10:28 PM, Doug Brainard wrote:
> ---
>   arch/arm/boards/sama5d4ek/env/config | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)

As this file will be totally discard in patch 2/2. So, I think no need 
to add this patch. And also it change the default boot setting to 
Android only.

> diff --git a/arch/arm/boards/sama5d4ek/env/config b/arch/arm/boards/sama5d4ek/env/config
> index 1007345..ee86c07 100644
> --- a/arch/arm/boards/sama5d4ek/env/config
> +++ b/arch/arm/boards/sama5d4ek/env/config
> @@ -11,16 +11,16 @@ ip=dhcp
>   #eth0.serverip=a.b.c.d
>
>   # can be either 'nfs', 'tftp', 'nor' or 'nand'
> -kernel_loc=nfs
> +kernel_loc=nand
>   # can be either 'net', 'nor', 'nand' or 'initrd'
> -rootfs_loc=net
> +rootfs_loc=nand
>   # can be either 'nfs', 'tftp', 'nand' or empty
> -oftree_loc=nfs
> +oftree_loc=nand
>
>   # can be either 'jffs2' or 'ubifs'
>   rootfs_type=ubifs
>   rootfsimage=root.$rootfs_type
> -ubiroot=rootfs
> +ubiroot=system
>
>   # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
>   kernelimage=zImage
> @@ -29,14 +29,14 @@ kernelimage=zImage
>   #kernelimage=Image.lzo
>
>   nand_device=atmel_nand
> -nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
> -rootfs_mtdblock_nand=7
> +nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),8M(recovery),176M(system),304M(userdata),-(cache)"
> +rootfs_mtdblock_nand=10
>
>   m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
>
>   autoboot_timeout=3
>
> -bootargs="console=ttyS0,115200"
> +bootargs="console=ttyS0,115200 ubi.mtd=8 ubi.mtd=9 init=/init androidboot.hardware=sama5-pda androidboot.lcd=wvga"
>
>   # set a fancy prompt (if support is compiled in)
>   PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
>

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
