Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwk00-0002CC-1K
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 07:09:46 +0000
Date: Tue, 26 Sep 2017 09:09:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926070921.izgbsflie2ot22gy@pengutronix.de>
References: <20170920180557.22857-1-linux@rempel-privat.de>
 <20170920180557.22857-2-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170920180557.22857-2-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 2/3] MIPS: dts: tl_wdr4300: add Atheros ART partition
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Wed, Sep 20, 2017 at 08:05:56PM +0200, Oleksij Rempel wrote:
> and define it as source of MAC address for ag71xx driver
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
> index d16cab005..3733ad5b7 100644
> --- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
> +++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
> @@ -26,6 +26,12 @@
>  			compatible = "barebox,environment";
>  			device-path = &spiflash, "partname:barebox-environment";
>  		};
> +
> +		art@0 {
> +			compatible = "qca,art", "qca,art-ar9344";
> +			device-path = &spiflash, "partname:art";
> +			barebox,provide-mac-address = <&mac0>;
> +		};
>  	};
>  };
>  
> @@ -59,6 +65,11 @@
>  			label = "barebox-environment";
>  			reg = <0x80000 0x10000>;
>  		};
> +
> +		partition@7f0000 {
> +			label = "art";
> +			reg = <0x7f0000 0x10000>;
> +		};
>  	};
>  };

There once was a proposal to add nvmem support to mtd
(https://lkml.org/lkml/2017/3/7/131). Apparently this didn't make it
mainline, although the comments to this series haven't been very
negative. Could you have a look if it's worth to pick this work up
or at least adopt it for barebox? I have the feeling that nvmem support
for mtd is something that we haven't come across for the last time.

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
