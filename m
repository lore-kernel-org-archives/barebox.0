Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWv04-0007fS-W8
 for barebox@lists.infradead.org; Fri, 08 May 2020 04:52:42 +0000
Date: Fri, 8 May 2020 06:52:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200508045235.GH5877@pengutronix.de>
References: <20200505125836.18081-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505125836.18081-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: configurable Super Root Key index
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 05, 2020 at 02:58:36PM +0200, Rouven Czerwinski wrote:
> Allow the configuration of the Super Root Key Index, to let the user
> select another key if a previous key has been revoked.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig                          | 10 ++++++++++
>  arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h |  2 +-
>  arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h |  2 +-
>  3 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 072c659008..6dd5cb2aca 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -845,6 +845,16 @@ config HAB_CERTS_ENV
>  	  CONFIG_HABV4_CSF_CRT_PEM
>  	  CONFIG_HABV4_IMG_CRT_PEM
>  
> +config HABV4_SRK_INDEX
> +	depends on HABV4
> +	int "SRK index"
> +	default 0
> +	help
> +	  Select the Super Root Key used in the Command Sequence File to sign
> +	  the CSF binary. This should only be changed if a previous key was
> +	  revoked and another key needs to be used. For HABV4 the Index is in
> +	  the range from 0 to 3.

Applied this time, but I hope that we won't get many more of these
policy encoding defines in habv4-imx6-gencsf.h.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
