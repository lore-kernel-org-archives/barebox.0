Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVBet-0002st-7x
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 08:38:53 +0000
References: <20181207063433.7623-1-a.fatoum@pengutronix.de>
 <20181207063433.7623-4-a.fatoum@pengutronix.de>
 <20181207074302.babciy2rcwjvh2iq@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e57bbb6a-9055-2986-8045-223b1ed84f5e@pengutronix.de>
Date: Fri, 7 Dec 2018 09:38:37 +0100
MIME-Version: 1.0
In-Reply-To: <20181207074302.babciy2rcwjvh2iq@pengutronix.de>
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
Subject: Re: [PATCH 4/4] of: partition: add no-fixup device tree property
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 7/12/18 08:43, Sascha Hauer wrote:
> On Fri, Dec 07, 2018 at 07:34:37AM +0100, Ahmad Fatoum wrote:
>> Users can have reasons to inhibit barebox from fixing up partitions nodes
>> into the kernel device tree, like if it's a boot0-partitions node, which
>> doesn't have a kernel binding.
>> Allow users to specify a no-fixup property to indicate so.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  Documentation/devicetree/bindings/mtd/partition.txt | 3 +++
>>  drivers/of/partition.c                              | 9 +++++++++
>>  fs/devfs-core.c                                     | 1 +
>>  3 files changed, 13 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
>> index 4288a82437b4..a2e810276a9c 100644
>> --- a/Documentation/devicetree/bindings/mtd/partition.txt
>> +++ b/Documentation/devicetree/bindings/mtd/partition.txt
>> @@ -4,6 +4,8 @@ In addition to the upstream binding, another property is added:
>>  
>>  Optional properties:
>>  - partuuid : The partition UUID for this partition.
>> +- no-fixup : empty property, indicates that barebox shouldn't fix up the
>> +             containing node into the kernel device tree.
>>  
>>  Additionally, barebox also supports partitioning the eMMC boot partitions if
>>  the partition table node is named appropriately:
>> @@ -28,6 +30,7 @@ flash@0 {
>>  emmc@1 {
>>  	boot0-partitions {
>>  		compatible = "fixed-partitions";
>> +		no-fixup;
>>  		#address-cells = <1>;
>>  		#size-cells = <1>;
> 
> I am not so happy that we need an extra device tree property just to let
> barebox know that it shouldn't try a fixup for the boot partitions.
While my use case are the emmc boot-partitions, the binding is applicable to
all fixed-partitions. Before, there has only been an universal
of_partition_binding device parameter to turn off fixups.

> 
> In mci_register_partition() we unconditionally call
> of_partitions_register_fixup() even for the boot partitions. Wouldn't it
> be sufficient to just skip the call for the boot partitions?

To expand on my reasoning, there are 3 device trees in arch/arm/dts that
use boot0-partitions. Their users would have had barebox print scary warnings
about their use on fixup unless they:
1) disabled partition fixups completely
2) added a boot0-partitions node to the kernel device tree, either unused
   or for use by custom tooling

The patch addresses both points, there is a device tree property to
selectively disable fixup and the second use case isn't broken,
unlike an unconditional (non-backward-compatible) skipping of fixups
for the boot partitions.


Thoughts?

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
