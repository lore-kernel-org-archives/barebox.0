Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUoIH-0003eF-Da
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 07:42:01 +0000
Date: Thu, 6 Dec 2018 08:41:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181206074145.we65poxhy7bjwn5s@pengutronix.de>
References: <20181205115621.30654-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181205115621.30654-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] documentation: document eMMC boot{0, 1}-partitions binding
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2018 at 12:56:22PM +0100, Ahmad Fatoum wrote:
> The described binding was implemented in commit 6e9a87b39
> ("mci: Allow to partition eMMC boot partitions").
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../devicetree/bindings/mtd/partition.txt      | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Applied, thanks

Sascha

> diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
> index ab21ff25bb11..4288a82437b4 100644
> --- a/Documentation/devicetree/bindings/mtd/partition.txt
> +++ b/Documentation/devicetree/bindings/mtd/partition.txt
> @@ -5,6 +5,11 @@ In addition to the upstream binding, another property is added:
>  Optional properties:
>  - partuuid : The partition UUID for this partition.
>  
> +Additionally, barebox also supports partitioning the eMMC boot partitions if
> +the partition table node is named appropriately:
> +- partitions : user partition
> +- boot0-partitions : boot0 partition
> +- boot1-partitions : boot1 partition
>  
>  Examples:
>  
> @@ -19,3 +24,16 @@ flash@0 {
>  		};
>  	};
>  };
> +
> +emmc@1 {
> +	boot0-partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		barebox@0 {
> +			label = "barebox";
> +			reg = <0x0 0x300000>;
> +		};
> +	};
> +};
> -- 
> 2.19.1
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
