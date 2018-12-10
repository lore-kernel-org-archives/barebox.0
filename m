Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHV6-0002vW-RP
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 09:05:22 +0000
Date: Mon, 10 Dec 2018 10:05:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210090505.vn7i6i4scezizmdt@pengutronix.de>
References: <20181207081322.15539-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207081322.15539-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] Documentation: i.MX: Document how to use GPT
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 07, 2018 at 12:13:22AM -0800, Andrey Smirnov wrote:
> Document a way to avoid clashes between i.MX boot info/Barebox and
> GPT's Partition Entry Array.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  Documentation/boards/imx.rst | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
> index 99ca10b7c..a87acbee2 100644
> --- a/Documentation/boards/imx.rst
> +++ b/Documentation/boards/imx.rst
> @@ -60,6 +60,25 @@ The images can also always be started second stage::
>  
>    bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
>  
> +Using GPT on i.MX
> +^^^^^^^^^^^^^^^^^
> +
> +For i.MX SoCs that place vendor specific header at +1KiB mark of a
> +boot medium, special care needs to be taken when parition that medium
> +with GPT. In order to make room for i.MX boot headr GPT Partition

s/headr/header/ and applied, thanks

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
