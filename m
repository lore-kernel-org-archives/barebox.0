Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout02.rmx.de ([62.245.148.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyab0-0001dY-OJ
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 12:12:56 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout02.rmx.de (Postfix) with ESMTPS id 48B6CR5B3szNmXC
 for <barebox@lists.infradead.org>; Mon,  3 Feb 2020 13:12:35 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 48B6CL6YCKz2xFY
 for <barebox@lists.infradead.org>; Mon,  3 Feb 2020 13:12:30 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 3 Feb 2020 13:12:29 +0100
Message-ID: <12186927.ML1T7lbObL@n95hx1g2>
MIME-Version: 1.0
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
Subject: state framework, fixed-partitions, eeprom and linux
To: barebox@lists.infradead.org

I've tried to use the state framework with an SPI eeprom as described here:
https://www.barebox.org/doc/latest/user/state.html#eeprom

The eeprom uses a "partition" for the state data:
------------------------8<---------------------------
eeprom@50 {
        partitions {
                compatible = "fixed-partitions";
                #size-cells = <1>;
                #address-cells = <1>;
                backend_state_eeprom: eeprom_state_memory@400 {
                        reg = <0x400 0x100>;
                        label = "state-eeprom";
                };
        };
};
------------------------>8---------------------------


It looks like there a 2 different concepts of having partitions in flashes:
1. As direct subnodes to the eeprom/flash
2. As subnodes within a "fixed-partition" subnode (as in the example above)

From linux/Documentation/devicetree/bindings/mtd/partition.txt:
"For backwards compatibility partitions as direct subnodes of the flash device 
are supported. This use is discouraged."

So using the 2nd approach is right, isn't it?

Trying to use this with the at25 nvmem driver in Linux, I get the following 
error:

nvmem spi0.00: nvmem: invalid reg on /soc/aips-bus@2000000/spba-bus@2000000/
spi@2008000/fram@0/partitions

Looking into nvmem_add_cells_from_of() in the linux sources, the NVMEM code 
seems to differ from the MTD core. It only expects the partitions as direct 
subnodes (without "fixed-partitions").

In Barebox, of_partition_fixup() can be configured using the 
global.of_partition_bindingof_partition_binding variable. But I couldn't find 
any user of this and this would probably affect both, NVMEM and MTD.

From the barebox point of view it seems best to add "fixed-partitions" support 
to Linux NVMEM. Any other suggests?

regards
Christian




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
