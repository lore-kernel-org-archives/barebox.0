Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOJ9l-0002fp-U7
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 11:23:22 +0000
Message-ID: <08a96424e3c552ec7ddfd37f1bcff54f6ac7921e.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 02 Oct 2020 13:23:19 +0200
In-Reply-To: <20201002111452.30547-1-m.felsch@pengutronix.de>
References: <20201002111452.30547-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: configs: imx_v7_defconfig: add missing RELOCATABLE
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org

On Fr, 2020-10-02 at 13:14 +0200, Marco Felsch wrote:
> All barebox images should be relocatable per default. The user needs to
> turn of this option on purpose rather than turning it on. Currently this
> option was selected by selecting MACH_CCMX51. Deselecting this board
> support ended in deselecting CONFIG_RELOCATABLE.

Shouldn't this rather be selected by IMX_MULTI_BOARDS or soemthing
similar? Otherwise one would need to find a ARCH_TEXT_BASE compatible
with all the enabled boards, which is probably a bit too much config
hell to dump onto the users.

Regards,
Lucas

> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/configs/imx_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 5dcdff0638..c55df0357d 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -208,3 +208,4 @@ CONFIG_FS_FAT_LFN=y
>  CONFIG_FS_UBIFS=y
>  CONFIG_FS_UBIFS_COMPRESSION_LZO=y
>  CONFIG_PNG=y
> +CONFIG_RELOCATABLE=y


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
