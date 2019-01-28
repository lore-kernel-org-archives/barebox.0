Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2ue-0000u5-82
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 09:09:05 +0000
Date: Mon, 28 Jan 2019 10:09:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128090901.jqjb3gfj6minp6eb@pengutronix.de>
References: <20190128081230.13165-1-andrew.smirnov@gmail.com>
 <20190128081230.13165-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190128081230.13165-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 3/3] ARM: i.MX: Add support for ZII i.MX8MQ based
 devices
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Mon, Jan 28, 2019 at 12:12:30AM -0800, Andrey Smirnov wrote:
> Add support for the following ZII i.MX8MQ based boards:
> 
>    - ZII i.MX8MQ RMB3
>    - ZII i.MX8MQ Zest
> 
> Most of the basic peripherals are supported by this patch. More
> advanced features such as PCIe, display support, etc, are planned to
> be added later.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> diff --git a/arch/arm/configs/zii_v8_defconfig b/arch/arm/configs/zii_v8_defconfig
> new file mode 100644
> index 000000000..3a34bb7aa
> --- /dev/null
> +++ b/arch/arm/configs/zii_v8_defconfig

I am trying to keep the number of defconfigs low, so I would pretty much
prefer adding the new board to imx_v8_defconfig instead.

Otherwise looks good to me.

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
