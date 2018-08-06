Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmfu8-0002Vm-K4
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 13:50:38 +0000
Date: Mon, 6 Aug 2018 15:50:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180806135023.7beuc7g4xrk6lrut@pengutronix.de>
References: <1532005045-11756-1-git-send-email-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1532005045-11756-1-git-send-email-festevam@gmail.com>
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
Subject: Re: [PATCH] Documentation: imx8mq-evk: Fix typo
To: Fabio Estevam <festevam@gmail.com>
Cc: andrew.smirnov@gmail.com, barebox@lists.infradead.org

On Thu, Jul 19, 2018 at 09:57:25AM -0300, Fabio Estevam wrote:
> Correct form is "obtain them".
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---

Applied, thanks

Sascha

>  Documentation/boards/imx/nxp-imx8mq-evk.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> index 9dfa911..f0cdc34 100644
> --- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
> +++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
> @@ -14,7 +14,7 @@ Downloading DDR PHY Firmware
>  As a part of DDR intialization routine NXP i.MX8MQ EVK requires and
>  uses several binary firmware blobs that are distributed under a
>  separate EULA and cannot be included in Barebox. In order to obtain
> -the do the following::
> +them do the following::
>  
>   wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-7.2.bin
>   chmod +x firmware-imx-7.2.bin
> @@ -113,4 +113,4 @@ Serial boot SW802 setting needed for i.MX8 DDR Tool is as follows::
>    | O | | <--- off = low level
>    |     |
>    | 1 2 |
> -  +-----+
> \ No newline at end of file
> +  +-----+
> -- 
> 2.7.4
> 
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
