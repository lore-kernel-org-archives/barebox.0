Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfLP-0002Yr-2T
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 17:17:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iyfLN-00006c-5W
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 18:17:05 +0100
References: <12186927.ML1T7lbObL@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <abe9cf07-d7b7-31fa-f881-14f179aa36ea@pengutronix.de>
Date: Mon, 3 Feb 2020 18:17:05 +0100
MIME-Version: 1.0
In-Reply-To: <12186927.ML1T7lbObL@n95hx1g2>
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
Subject: Re: state framework, fixed-partitions, eeprom and linux
To: barebox@lists.infradead.org

Hello Christian,

On 2/3/20 1:12 PM, Christian Eggers wrote:
> I've tried to use the state framework with an SPI eeprom as described here:
> https://www.barebox.org/doc/latest/user/state.html#eeprom
> 
> The eeprom uses a "partition" for the state data:
> ------------------------8<---------------------------
> eeprom@50 {
>         partitions {
>                 compatible = "fixed-partitions";
>                 #size-cells = <1>;
>                 #address-cells = <1>;
>                 backend_state_eeprom: eeprom_state_memory@400 {
>                         reg = <0x400 0x100>;
>                         label = "state-eeprom";
>                 };
>         };
> };
> ------------------------>8---------------------------
> 
> 
> It looks like there a 2 different concepts of having partitions in flashes:
> 1. As direct subnodes to the eeprom/flash
> 2. As subnodes within a "fixed-partition" subnode (as in the example above)
> 
> From linux/Documentation/devicetree/bindings/mtd/partition.txt:
> "For backwards compatibility partitions as direct subnodes of the flash device 
> are supported. This use is discouraged."
> 
> So using the 2nd approach is right, isn't it?
> 
> Trying to use this with the at25 nvmem driver in Linux, I get the following 
> error:
> 
> nvmem spi0.00: nvmem: invalid reg on /soc/aips-bus@2000000/spba-bus@2000000/
> spi@2008000/fram@0/partitions
> 
> Looking into nvmem_add_cells_from_of() in the linux sources, the NVMEM code 
> seems to differ from the MTD core. It only expects the partitions as direct 
> subnodes (without "fixed-partitions").
> 
> In Barebox, of_partition_fixup() can be configured using the 
> global.of_partition_bindingof_partition_binding variable. But I couldn't find 
> any user of this and this would probably affect both, NVMEM and MTD.

Use is usually in the environment which is patched in by the BSP.

> From the barebox point of view it seems best to add "fixed-partitions" support 
> to Linux NVMEM. Any other suggests?

A container node would be preferable yes, but for reasons of backwards-compatibility,
Kernel support for the old binding will likely continue, which clashes with our
EEPROM partitioning.

So, either we adapt (always fix up eeprom nodes as old, so they pass as kernel nvmem)
or the kernel binding changes.

I would be in favor of:

        for_each_child_of_node(parent, child) {
+               if (of_property_read_bool(child, "compatible"))
+                       continue;
                addr = of_get_property(child, "reg", &len);

in the NVMEM core. I don't have thought out the argument to back it yet though.

Thoughts? 

Ahmad



> 
> regards
> Christian
> 
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
