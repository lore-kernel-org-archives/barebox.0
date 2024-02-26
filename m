Delivery-date: Mon, 26 Feb 2024 13:39:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1reaGJ-007uTl-0W
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 13:39:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1reaGH-00064A-W7
	for lore@pengutronix.de; Mon, 26 Feb 2024 13:39:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zVUpKwz6NCe+2qEGPQ7B29bjUBKICJVDn1zH7pEz/Ks=; b=lZ3qHWQgJ9Dz0S20EX89t2YYu9
	X0kDrvl57h43qIdWSBWJOo57Vl+oTdVJU9ABJwcmOL1tKCKFs86YjjwzRuKr/Ar82t2iIfErS57Vq
	FYLiCkZmC+2kIrg85ZZvu8VkiMC8ttZiq4HydYkABI3+OIsEogJIJX0V5Uh2LsDnUfVoMjKWUGVYO
	7TtBIWUsPrwNmwL5YLq3ZDGdp04DKj8GxyKtW67Lr+3/FTp3SUM1acdJfl6AlTHlL5PKPfdGcCr7n
	jwZbsp5NsFFYFtE7JyGqMql92RsleJGVYNLOOjSo370i5cvcM2BFI2E8OxKdoImrixji/JemzZVnQ
	rwUQHaRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reaFh-00000000cUZ-46UI;
	Mon, 26 Feb 2024 12:38:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reaFd-00000000cTk-29NZ
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 12:38:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1reaFb-0005tb-IE; Mon, 26 Feb 2024 13:38:31 +0100
Message-ID: <a8079b8b-8695-417f-8a38-d2fe340fc52a@pengutronix.de>
Date: Mon, 26 Feb 2024 13:38:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>,
 Roland Hieber <rhi@pengutronix.de>,
 Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Alexander Dahl <ada@thorsis.com>
References: <6d3f7b365e1c4683912e8dc74c845721@diehl.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <6d3f7b365e1c4683912e8dc74c845721@diehl.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_043833_739437_6087DE67 
X-CRM114-Status: GOOD (  51.38  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc
 created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Denis,

On 21.02.24 08:46, Denis OSTERLAND-HEIM wrote:
> Hi,
> 
> It took me a while to think about it.
> First I would like to explain my current boot process and then how I think
> it would like with your suggestion.
> 
> 
> Now:
> 
> Disk layout:
> - rpi boot fat: dt-2nd.img, barebox-dts, rpi-elf, config.txt
> - root A
> - root B
> 
> Boot process:
> - rpi boot loader
> 	* load dt-2nd.img and dt
> 	* read Hat Eeprom
> 	* apply fixups to dt
> - barebox with dt from r2
> 	* bootchooser select A or B
> 	* load kernel and dt from A or B
> 	* copy stuff to kernel dt from barebox internal dt as fixups
> - linux boot
> 
> 
> Your approach:
> 
> Disk layout:
> - rpi boot fat: bb-rpi.img, some-dts, rpi-elf, config.txt
> - root A
> - root B
> 
> Boot process:
> - rpi boot loader
> 	* load bb-rpi.img and dt
> 	* read Hat Eeprom
> 	* apply fixups to dt
> - barebox with built-in dt
> 	* bootchooser select A or B
> 	* load kernel and dt from A or B
> 	* copy stuff to kernel dt from /vc.dtb as fixups

This I don't understand. Why not use vc.dtb as kernel DT? You can still
have barebox apply boot arg fixups and so on, but use /vc.dtb as base?

> - linux boot
> 
> I can remember that I tried to implement the fixups as script in the
> environment first, but switched to C somewhen.
> I can not recall the reason, sorry.
> I guess it was related to recursive copy.
> The C code uses of_merge_node or something like that, which is not available
> as command, I think.

This can be made available to shell too if there's use for it, but I
think this is tangential.

> If we can keep the patches an just do something like if /vc.dtb then apply
> fixups, I would be fine with your approach.
> But I guess this almost exactly matches the `if(!IS_ERR(root))
> rpi_vc_fdt_parse(root);` approach.
> If you just revert the patches, I guess I would have to find a way to do it
> in script.

What would break if you used vc.dtb as kernel DT?

Thanks,
Ahmad

> 
> Regards, Denis
> 
> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
> Sent: Tuesday, February 20, 2024 4:33 PM
> To: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>; Roland Hieber
> <rhi@pengutronix.de>; Denis Osterland-Heim <denis.osterland@gmail.com>
> Cc: barebox@lists.infradead.org; Alexander Dahl <ada@thorsis.com>
> Subject: [EXT] Re: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc
> created nodes
> 
> [EXTERNAL EMAIL]
>  
> 
> Hello Denis,
> 
> On 20.02.24 09:16, Denis OSTERLAND-HEIM wrote:
>> Hi,
>>
>> I think so, too.
>> I think that my mistake was in 5ea6e19737e10973ce2cf785970e32562d9ee8f1.
> 
> Yes.
> 
>>> @@ -379,17 +381,17 @@ static void rpi_vc_fdt(void)
>>> 		if (oftree->totalsize)
>>> 			pr_err("there was an error copying fdt in pbl:
>> %d\n",
>>> 					be32_to_cpu(oftree->totalsize));
>>> -		return;
>> This return previously avoided a call of rpi_vc_fdt_parse().
>>
> 
> [snip]
> 
>>> 	rpi_env_init();
>>> -	rpi_vc_fdt();
>>> +	root = rpi_vc_fdt();
>>> +	rpi_vc_fdt_parse(IS_ERR(root) ? priv->dev->device_node : root);
>> Now rpi_vc_fdt_parse() is called in both cases.
>> So, it should be:
>> 	if (!IS_ERR(root))
>> 		rpi_vc_fdt_parse(root);
>>> 	rpi_set_kernel_name();
>>>
>> ...
>>
>> Or do I miss something?
> 
> Now that I think of it, I think the commit should just be reverted.
> I don't see the utility of using barebox-dt-2nd.img on the Raspberry Pi:
> 
>   - If the board is already supported, use barebox-raspberry-pi.img, which
>     has the DT built-in.
> 
>   - If the board is not supported , use barebox-raspberry-pi.img, which
>     will take the outside DT and save it where the board code expects it.
> 
> What do you think?
> 
> Thanks,
> Ahmad
> 
>>
>> Regards, Denis
>>
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Monday, February 19, 2024 10:43 PM
>> To: Roland Hieber <rhi@pengutronix.de>; Denis Osterland-Heim 
>> <denis.osterland@gmail.com>
>> Cc: barebox@lists.infradead.org; Denis OSTERLAND-HEIM 
>> <denis.osterland@diehl.com>; Alexander Dahl <ada@thorsis.com>
>> Subject: [EXT] Re: [PATCH v2 2/2] raspi: fixup additional vc created 
>> nodes
>>
>> [EXTERNAL EMAIL]
>>  
>>
>> Hello Roland,
>>
>> On 19.02.24 20:14, Roland Hieber wrote:
>>> Hi,
>>>
>>> On Mon, Sep 25, 2023 at 01:10:05PM +0200, Denis Osterland-Heim wrote:
>>>> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>>>
>>>> The video core creates some additional nodes.
>>>> This code takes over this values.
>>>> The /hat node is only there if an raspi hat with EEPROM is detected.
>>>>
>>>> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>>> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> ---
>>>>  arch/arm/boards/raspberry-pi/rpi-common.c | 39
>>>> +++++++++++++++++------
>>>>  1 file changed, 30 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
>>>> b/arch/arm/boards/raspberry-pi/rpi-common.c
>>>> index ceafd55a56..713fad78c9 100644
>>>> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
>>>> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
>>>> @@ -264,19 +264,37 @@ static enum reset_src_type 
>>>> rpi_decode_pm_rsts(struct device_node *chosen,
>>>>  
>>>>  static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
>>>>  {
>>>> -       const struct device_node *vc_chosen = data;
>>>> -       struct device_node *chosen;
>>>> +       const struct device_node *vc_node = data;
>>>> +       struct device_node *node;
>>>> +       struct property *pp;
>>>>  
>>>> -       chosen = of_create_node(root, "/chosen");
>>>> -       if (!chosen)
>>>> +       node = of_create_node(root, vc_node->full_name);
>>>> +       if (!node)
>>>>                 return -ENOMEM;
>>>>  
>>>> -       of_copy_property(vc_chosen, "overlay_prefix", chosen);
>>>> -       of_copy_property(vc_chosen, "os_prefix", chosen);
>>>> +       for_each_property_of_node(vc_node, pp)
>>>> +               of_copy_property(vc_node, pp->name, node);
>>>>  
>>>>         return 0;
>>>>  }
>>>>  
>>>> +static struct device_node *register_vc_fixup(struct device_node 
>>>> +*root,
>>>> +                                            const char *path) {
>>>> +       struct device_node *ret, *tmp;
>>>> +
>>>> +       ret = of_find_node_by_path_from(root, path);
>>>> +       if (ret) {
>>>> +               tmp = of_dup(ret);
>>>> +               tmp->full_name = xstrdup(ret->full_name);
>>>> +               of_register_fixup(rpi_vc_fdt_fixup, tmp);
>>>> +       } else {
>>>> +               pr_info("no '%s' node found in vc fdtn", path);
>>>> +       }
>>>> +
>>>> +       return ret;
>>>> +}
>>>> +
>>>>  static u32 rpi_boot_mode, rpi_boot_part;
>>>>  /* Extract useful information from the VideoCore FDT we got.
>>>>   * Some parameters are defined here:
>>>> @@ -300,14 +318,17 @@ static void rpi_vc_fdt_parse(struct 
>>>> device_node
>>>> *root)
>>>>                 free(str);
>>>>         }
>>>>  
>>>> -       chosen = of_find_node_by_path_from(root, "/chosen");
>>>> +       register_vc_fixup(root, "/system");
>>>> +       register_vc_fixup(root, "/axi");
>>>> +       register_vc_fixup(root, "/reserved-memory");
>>>> +       register_vc_fixup(root, "/hat");
>>>> +       register_vc_fixup(root, "/chosen/bootloader");
>>>> +       chosen = register_vc_fixup(root, "/chosen");
>>>
>>> This throws a lot of new warnings and errors on our RPi 3B:
>>>
>>>     barebox 2024.01.0 #1 2024-02-01T00:00:00+00:00
>>>     Buildsystem version: DistroKit-2019.12.0-552-g775624b9f5d6
>>>
>>>     Board: Raspberry Pi 3 Model B
>>>     deep-probe: supported due to raspberrypi,3-model-b
>>>     netconsole: registered as netconsole-1
>>>     bcm2835-sdhost 3f202000.mmc@7e202000.of: registered as mci0
>>>     bcm2835_mci 3f300000.mmc@7e300000.of: registered as mci1
>>>     mci0: detected SD card version 2.0
>>>     mci0: registered disk0
>>>     state: New state registered 'state'
>>>     state: Using bucket 0@0x00000000
>>>     malloc space: 0x1d87f620 -> 0x3b0fec3f (size 472.5 MiB)
>>>     WARNING: no property 'serial-number' found in vc fdt's '' node
>>>     no '/system' node found in vc fdt
>>>     no '/axi' node found in vc fdt
>>>     no '/hat' node found in vc fdt
>>>     no '/chosen/bootloader' node found in vc fdt
>>>     WARNING: no property 'bootargs' found in vc fdt's '/chosen' node
>>>     WARNING: no property 'overlay_prefix' found in vc fdt's '/chosen'
> node
>>>     WARNING: no property 'os_prefix' found in vc fdt's '/chosen' node
>>>     WARNING: 'pm_rsts' value not found in vc fdt
>>>     ERROR: Won't delete root device node
>>>     environment load /boot/barebox.env: No such file or directory
>>>     Maybe you have to create the partition.
>>>
>>> Do you have any idea what is going on here? 
>>>
>>> I also don't see /vc.dtb, which should have been created. I have
>>> 'vc.kernel: kernel7.img' in the 'global' output, but nothing else 
>>> starting with vc.*.
>>
>> I think that a non-existent /vc.dtb is expected if there's no DTs in 
>> the boot partition as is the case with DistroKit (except for rpi4) or 
>> if using barebox-dt-2nd.img.
>>
>> I think the info/warning messages should just be dropped.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>>  - Roland
>>>
>>>>         if (!chosen) {
>>>>                 pr_err("no '/chosen' node found in vc fdtn");
>>>>                 goto out;
>>>>         }
>>>>  
>>>> -       of_register_fixup(rpi_vc_fdt_fixup, of_dup(chosen));
>>>> -
>>>>         bootloader = of_find_node_by_name(chosen, "bootloader");
>>>>  
>>>>         str = of_read_vc_string(chosen, "bootargs");
>>>> --
>>>> 2.39.2
>>>>
>>>>
>>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



