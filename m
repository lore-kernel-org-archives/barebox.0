Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfop-000436-Ay
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 17:47:32 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iyfon-0002mS-PR
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 18:47:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <12186927.ML1T7lbObL@n95hx1g2>
 <abe9cf07-d7b7-31fa-f881-14f179aa36ea@pengutronix.de>
Message-ID: <07ba5178-786b-d4c2-16c7-68102ca41462@pengutronix.de>
Date: Mon, 3 Feb 2020 18:47:29 +0100
MIME-Version: 1.0
In-Reply-To: <abe9cf07-d7b7-31fa-f881-14f179aa36ea@pengutronix.de>
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

On 2/3/20 6:17 PM, Ahmad Fatoum wrote:
> Hello Christian,
>> Trying to use this with the at25 nvmem driver in Linux, I get the following 
>> error:
>>
>> nvmem spi0.00: nvmem: invalid reg on /soc/aips-bus@2000000/spba-bus@2000000/
>> spi@2008000/fram@0/partitions
>>
>> Looking into nvmem_add_cells_from_of() in the linux sources, the NVMEM code 
>> seems to differ from the MTD core. It only expects the partitions as direct 
>> subnodes (without "fixed-partitions").
>>
>> In Barebox, of_partition_fixup() can be configured using the 
>> global.of_partition_bindingof_partition_binding variable. But I couldn't find 
>> any user of this and this would probably affect both, NVMEM and MTD.
> 
> Use is usually in the environment which is patched in by the BSP.
> 
>> From the barebox point of view it seems best to add "fixed-partitions" support 
>> to Linux NVMEM. Any other suggests?
> 
> A container node would be preferable yes, but for reasons of backwards-compatibility,
> Kernel support for the old binding will likely continue, which clashes with our
> EEPROM partitioning.

Fortunately, I was mistaken. The upstream bindings says that only objects
matching "^.*@[0-9a-f]+$" should be considered for nvmem cells. a partitions node
doesn't match this. So I'd instead suggest this:

    nvmem: core: don't consider subnodes not matching binding
    
    The nvmem cell binding applies to objects which match "^.*@[0-9a-f]+$",
    but so far the driver has matched all objects and failed if they didn't
    have the expected properties.
    
    The driver's behavior in this regard precludes future extension of
    EEPROMs by child nodes other than nvmem and clashes with the barebox
    bootloader binding that extends the fixed-partitions MTD binding to
    EEPROMs.
    
    Solve this issue by checking whether the node name contains a @.
    This still matches against node names like partitions@0,0, but this is
    much less likely to cause future collisions.
    
    Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 9f1ee9c766ec..254ac1bb6066 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -269,6 +269,8 @@ static int nvmem_add_cells_from_of(struct nvmem_device *nvmem)
        parent = dev->of_node;
 
        for_each_child_of_node(parent, child) {
+               if (!strchr(child->name, '@'))
+                       continue;
                addr = of_get_property(child, "reg", &len);
                if (!addr || (len < 2 * sizeof(u32))) {
                        dev_err(dev, "nvmem: invalid reg on %pOF\n", child);



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
