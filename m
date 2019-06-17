Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctFj-0001MV-0F
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:09:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hctFf-0001P7-6T
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:08:55 +0200
References: <20190617143418.32207-1-a.fatoum@pengutronix.de>
 <20190617143418.32207-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <60fd67d8-e824-67a5-a4e9-f1916f7e4dbe@pengutronix.de>
Date: Mon, 17 Jun 2019 17:08:54 +0200
MIME-Version: 1.0
In-Reply-To: <20190617143418.32207-2-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v3 1/4] ARM: stm32mp1: rerun savedefconfig on
 stm32mp_defconfig
To: barebox@lists.infradead.org

Sascha, could you s/stm32mp1/stm32mp/ in the title if you apply it?
Thanks

On 17/6/19 16:34, Ahmad Fatoum wrote:
> As CONFIG_LZO_DECOMPRESS is a dependency of ARM_USE_COMPRESSED_DTB, it's
> no longer explicit in the defconfig. Rerun savedefconfig to get rid of it.
> 
> Fixes: 5414ccd16 ("ARM: stm32mp: stm32mp157c-dk2: compress the DTB")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/configs/stm32mp_defconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
> index 657b2edf57f2..56065860adb3 100644
> --- a/arch/arm/configs/stm32mp_defconfig
> +++ b/arch/arm/configs/stm32mp_defconfig
> @@ -94,5 +94,4 @@ CONFIG_FS_FAT=y
>  CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
>  CONFIG_ZLIB=y
> -CONFIG_LZO_DECOMPRESS=y
>  CONFIG_CRC8=y
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
