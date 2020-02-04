Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyVq-0008DA-Fi
 for barebox@lists.infradead.org; Tue, 04 Feb 2020 13:45:12 +0000
References: <12186927.ML1T7lbObL@n95hx1g2>
 <abe9cf07-d7b7-31fa-f881-14f179aa36ea@pengutronix.de>
 <07ba5178-786b-d4c2-16c7-68102ca41462@pengutronix.de>
 <21090636.oFDgJnQYPg@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d5023fcb-60bc-57a6-7b54-21b74ed0571f@pengutronix.de>
Date: Tue, 4 Feb 2020 14:45:05 +0100
MIME-Version: 1.0
In-Reply-To: <21090636.oFDgJnQYPg@n95hx1g2>
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
To: Christian Eggers <ceggers@arri.de>, barebox@lists.infradead.org

Hello Christian,

On 2/4/20 2:06 PM, Christian Eggers wrote:
> Dear Ahmad,
> 
> Am Montag, 3. Februar 2020, 18:47:29 CET schrieb Ahmad Fatoum:
>> Fortunately, I was mistaken. The upstream bindings says that only objects
>> matching "^.*@[0-9a-f]+$" should be considered for nvmem cells. a partitions
>> node doesn't match this. So I'd instead suggest this:
>>
>>     nvmem: core: don't consider subnodes not matching binding
>>
>>     The nvmem cell binding applies to objects which match "^.*@[0-9a-f]+$",
>>     but so far the driver has matched all objects and failed if they didn't
>>     have the expected properties.
>>
>>     The driver's behavior in this regard precludes future extension of
>>     EEPROMs by child nodes other than nvmem and clashes with the barebox
>>     bootloader binding that extends the fixed-partitions MTD binding to
>>     EEPROMs.
>>
>>     Solve this issue by checking whether the node name contains a @.
>>     This still matches against node names like partitions@0,0, but this is
>>     much less likely to cause future collisions.
>>
>>     Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
> 
> I have a different approach, taken from the Linux MTD sources. Here the DT partitions are added as NVMEM cells. Is there any conceptual difference between "MTD partitions" and "NVMEM cells"? 

Theoretically, you could have both NVMEM cells and MTD partitions in the same node.
There has been a patch introducing this binding[1], but it seems it was abandoned.

But even without this, they are different subsystems with different device tree
bindings, in-kernel API for accessing and userspace interface and I don't think
mixing them is a good idea.
 
> Are you able to bring one/both patches into Linux?

I can try posting my patch. I'll wait a bit to see if someone has feedback.
I will add you to CC when I send it out.

Cheers
Ahmad

[1]: https://lore.kernel.org/patchwork/patch/765436/

> 
> Regards
> Christian
> 
> From 927f3aa9c4a64802f25ef2f292caa1dc951ce667 Mon Sep 17 00:00:00 2001
> From: Christian Eggers <ceggers@arri.de>
> Date: Tue, 4 Feb 2020 13:52:36 +0100
> Subject: [PATCH] nvmem: core: Move OF cells to a dedicated dt node
> 
> In 5cfdedb7b9 ("mtd: ofpart: move ofpart partitions to a dedicated dt
> node"), mtd introduced the separate "partitions" node as container for
> the partitions of a MTD device.
> 
> This commit applies a similar behavior to NVMEM partitions/cells.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  drivers/nvmem/core.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index 057d1ff87d5d..3e93b82b96bd 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -287,7 +287,7 @@ nvmem_find_cell_by_name(struct nvmem_device *nvmem, const char *cell_id)
>  
>  static int nvmem_add_cells_from_of(struct nvmem_device *nvmem)
>  {
> -	struct device_node *parent, *child;
> +	struct device_node *parent, *child, *ofpart_node;
>  	struct device *dev = &nvmem->dev;
>  	struct nvmem_cell *cell;
>  	const __be32 *addr;
> @@ -295,7 +295,16 @@ static int nvmem_add_cells_from_of(struct nvmem_device *nvmem)
>  
>  	parent = dev->of_node;
>  
> -	for_each_child_of_node(parent, child) {
> +	ofpart_node = of_get_child_by_name(parent, "partitions");
> +	if (!ofpart_node) {
> +		/* Try to parse direct subnodes */
> +		ofpart_node = parent;
> +	} else if (!of_device_is_compatible(ofpart_node, "fixed-partitions")) {
> +		/* The 'partitions' subnode might be used by another parser */
> +		return 0;
> +	}
> +
> +	for_each_child_of_node(ofpart_node, child) {
>  		addr = of_get_property(child, "reg", &len);
>  		if (!addr || (len < 2 * sizeof(u32))) {
>  			dev_err(dev, "nvmem: invalid reg on %pOF\n", child);
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
