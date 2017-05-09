Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7xwL-0000AD-D3
 for barebox@lists.infradead.org; Tue, 09 May 2017 05:44:07 +0000
Date: Tue, 9 May 2017 07:43:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170509054343.s4afthixfza2c62a@pengutronix.de>
References: <20170508132520.13112-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170508132520.13112-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: HAB: update documentation of command sequence
 files (CSF)
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 08, 2017 at 03:25:20PM +0200, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h | 11 ++++++++---
>  arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h  |  9 +++++----
>  2 files changed, 13 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
> index f4804fe63f19..60f730f8eca9 100644
> --- a/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
> +++ b/arch/arm/mach-imx/include/mach/habv3-imx25-gencsf.h
> @@ -4,8 +4,8 @@
>   * are expected in these config variables:
>   *
>   * CONFIG_HABV3_SRK_PEM
> - * CONFIG_HABV3_SRK_PEM
> - * CONFIG_HABV3_IMG_CRT_PEM
> + * CONFIG_HABV3_CSF_CRT_DER
> + * CONFIG_HABV3_IMG_CRT_DER
>   */
>  super_root_key CONFIG_HABV3_SRK_PEM
>  
> @@ -23,21 +23,26 @@ hab [Install SRK]
>  hab File = "not-used"
>  
>  hab [Install CSFK]
> +/* target key index in keystore 1 */
>  hab File = CONFIG_HABV3_CSF_CRT_DER
>  
>  hab [Authenticate CSF]
> -/* below is the command that unlock the access to the DryIce registers */
>  
> +/* unlock the access to the DryIce registers */
>  hab [Write Data]
>  hab Width = 4
>  hab Address Data = 0x53FFC03C 0xCA693569
>  
>  hab [Install Key]
> +/* verification key index in key store (1...4) */
> +/* in contrast to documentation 0 seems to be valid, too */
>  hab Verification index = 1
> +/* target key index in key store (1...4) */
>  hab Target index = 2
>  hab File = CONFIG_HABV3_IMG_CRT_DER
>  
>  hab [Authenticate Data]
> +/* verification key index in key store (2...4) */
>  hab Verification index = 2
>  
>  hab_blocks
> diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> index 1a143a8b1870..0649caa0cb88 100644
> --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
> @@ -22,6 +22,7 @@ hab # SRK index within SRK-Table 0..3
>  hab Source index = 0
>  
>  hab [Install CSFK]
> +/* target key index in keystore 1 */
>  hab File = CONFIG_HABV4_CSF_CRT_PEM
>  
>  hab [Authenticate CSF]
> @@ -31,14 +32,14 @@ hab Engine = CAAM
>  hab Features = RNG
>  
>  hab [Install Key]
> -/* verification key index in key store (0, 2...5) */
> +/* verification key index in key store (0, 2...4) */
>  hab Verification index = 0
> -/* target key index in key store (2...5) */
> +/* target key index in key store (2...4) */
>  hab Target index = 2
>  hab File = CONFIG_HABV4_IMG_CRT_PEM
>  
>  hab [Authenticate Data]
> -/* verification key index in key store (2...5) */
> +/* verification key index in key store (2...4) */
>  hab Verification index = 2
>  
> -hab_blocks
> \ No newline at end of file
> +hab_blocks
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
