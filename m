Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAn4-0004pD-Sq
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:43:16 +0000
Date: Fri, 7 Dec 2018 08:43:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181207074302.babciy2rcwjvh2iq@pengutronix.de>
References: <20181207063433.7623-1-a.fatoum@pengutronix.de>
 <20181207063433.7623-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207063433.7623-4-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 4/4] of: partition: add no-fixup device tree property
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 07, 2018 at 07:34:37AM +0100, Ahmad Fatoum wrote:
> Users can have reasons to inhibit barebox from fixing up partitions nodes
> into the kernel device tree, like if it's a boot0-partitions node, which
> doesn't have a kernel binding.
> Allow users to specify a no-fixup property to indicate so.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/mtd/partition.txt | 3 +++
>  drivers/of/partition.c                              | 9 +++++++++
>  fs/devfs-core.c                                     | 1 +
>  3 files changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
> index 4288a82437b4..a2e810276a9c 100644
> --- a/Documentation/devicetree/bindings/mtd/partition.txt
> +++ b/Documentation/devicetree/bindings/mtd/partition.txt
> @@ -4,6 +4,8 @@ In addition to the upstream binding, another property is added:
>  
>  Optional properties:
>  - partuuid : The partition UUID for this partition.
> +- no-fixup : empty property, indicates that barebox shouldn't fix up the
> +             containing node into the kernel device tree.
>  
>  Additionally, barebox also supports partitioning the eMMC boot partitions if
>  the partition table node is named appropriately:
> @@ -28,6 +30,7 @@ flash@0 {
>  emmc@1 {
>  	boot0-partitions {
>  		compatible = "fixed-partitions";
> +		no-fixup;
>  		#address-cells = <1>;
>  		#size-cells = <1>;

I am not so happy that we need an extra device tree property just to let
barebox know that it shouldn't try a fixup for the boot partitions.

In mci_register_partition() we unconditionally call
of_partitions_register_fixup() even for the boot partitions. Wouldn't it
be sufficient to just skip the call for the boot partitions?

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
