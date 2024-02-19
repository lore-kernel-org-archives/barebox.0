Delivery-date: Mon, 19 Feb 2024 22:43:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcBQ0-00FCyk-0r
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 22:43:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcBPz-00017f-GL
	for lore@pengutronix.de; Mon, 19 Feb 2024 22:43:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jz9lpK0D/487pewpW9qyPCF9SKyK6ffJlXkXdTY/oh0=; b=oJQYej34wAipzv9evS9tToTvFI
	53ewRwrz5N72tsEB1TN7O9JTDdWTLrME3fBb/iKmWOYz/yKT31723B9PZ/8U1k9KYXYhPqHesEt2P
	JHbNxzgS0mUqC55pt9zJ7m0YggkqN9nPW5V8jJ2G2Ps3Q7FMLQ2H7pImOsZYuccahWn4bkyFEFM9+
	kwTshygoMZX3GpnQe3v+wvTdmSHk4EVwbzlzIFIpvBi1iC1revRWwZrD/lD0ZFrj/9KxYvmTrk80E
	s7fakw6EAPIRhiQVrmp+Qw0sXo9T/6B+bkFnPg7t0ltH0jkjprVBboRIWunHgYDIim7NyqQ99dSUb
	1HKs2Fkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBPV-0000000CHBf-0RGY;
	Mon, 19 Feb 2024 21:42:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBPS-0000000CHAO-0cAX
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 21:42:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcBPQ-0000i5-RQ; Mon, 19 Feb 2024 22:42:44 +0100
Message-ID: <c45b462f-5988-4bdd-bf03-73f558b373b1@pengutronix.de>
Date: Mon, 19 Feb 2024 22:42:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Roland Hieber <rhi@pengutronix.de>,
 Denis Osterland-Heim <denis.osterland@gmail.com>
Cc: barebox@lists.infradead.org,
 Denis OSTERLAND-HEIM <denis.osterland@diehl.com>,
 Alexander Dahl <ada@thorsis.com>
References: <20230925110716.5370-1-denis.osterland@gmail.com>
 <6496b2cabc1ec6cec520ea27145d3cecdc19927c.camel@gmail.com>
 <20240219191400.do7ib5rxy7tupv4i@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219191400.do7ib5rxy7tupv4i@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134246_209978_CFFD2641 
X-CRM114-Status: GOOD (  31.52  )
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
Subject: Re: [PATCH v2 2/2] raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Roland,

On 19.02.24 20:14, Roland Hieber wrote:
> Hi,
> 
> On Mon, Sep 25, 2023 at 01:10:05PM +0200, Denis Osterland-Heim wrote:
>> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>>
>> The video core creates some additional nodes.
>> This code takes over this values.
>> The /hat node is only there if an raspi hat with EEPROM is detected.
>>
>> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
>> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/boards/raspberry-pi/rpi-common.c | 39 +++++++++++++++++------
>>  1 file changed, 30 insertions(+), 9 deletions(-)
>>
>> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
>> b/arch/arm/boards/raspberry-pi/rpi-common.c
>> index ceafd55a56..713fad78c9 100644
>> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
>> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
>> @@ -264,19 +264,37 @@ static enum reset_src_type
>> rpi_decode_pm_rsts(struct device_node *chosen,
>>  
>>  static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
>>  {
>> -       const struct device_node *vc_chosen = data;
>> -       struct device_node *chosen;
>> +       const struct device_node *vc_node = data;
>> +       struct device_node *node;
>> +       struct property *pp;
>>  
>> -       chosen = of_create_node(root, "/chosen");
>> -       if (!chosen)
>> +       node = of_create_node(root, vc_node->full_name);
>> +       if (!node)
>>                 return -ENOMEM;
>>  
>> -       of_copy_property(vc_chosen, "overlay_prefix", chosen);
>> -       of_copy_property(vc_chosen, "os_prefix", chosen);
>> +       for_each_property_of_node(vc_node, pp)
>> +               of_copy_property(vc_node, pp->name, node);
>>  
>>         return 0;
>>  }
>>  
>> +static struct device_node *register_vc_fixup(struct device_node *root,
>> +                                            const char *path)
>> +{
>> +       struct device_node *ret, *tmp;
>> +
>> +       ret = of_find_node_by_path_from(root, path);
>> +       if (ret) {
>> +               tmp = of_dup(ret);
>> +               tmp->full_name = xstrdup(ret->full_name);
>> +               of_register_fixup(rpi_vc_fdt_fixup, tmp);
>> +       } else {
>> +               pr_info("no '%s' node found in vc fdtn", path);
>> +       }
>> +
>> +       return ret;
>> +}
>> +
>>  static u32 rpi_boot_mode, rpi_boot_part;
>>  /* Extract useful information from the VideoCore FDT we got.
>>   * Some parameters are defined here:
>> @@ -300,14 +318,17 @@ static void rpi_vc_fdt_parse(struct device_node
>> *root)
>>                 free(str);
>>         }
>>  
>> -       chosen = of_find_node_by_path_from(root, "/chosen");
>> +       register_vc_fixup(root, "/system");
>> +       register_vc_fixup(root, "/axi");
>> +       register_vc_fixup(root, "/reserved-memory");
>> +       register_vc_fixup(root, "/hat");
>> +       register_vc_fixup(root, "/chosen/bootloader");
>> +       chosen = register_vc_fixup(root, "/chosen");
> 
> This throws a lot of new warnings and errors on our RPi 3B:
> 
>     barebox 2024.01.0 #1 2024-02-01T00:00:00+00:00
>     Buildsystem version: DistroKit-2019.12.0-552-g775624b9f5d6
> 
>     Board: Raspberry Pi 3 Model B
>     deep-probe: supported due to raspberrypi,3-model-b
>     netconsole: registered as netconsole-1
>     bcm2835-sdhost 3f202000.mmc@7e202000.of: registered as mci0
>     bcm2835_mci 3f300000.mmc@7e300000.of: registered as mci1
>     mci0: detected SD card version 2.0
>     mci0: registered disk0
>     state: New state registered 'state'
>     state: Using bucket 0@0x00000000
>     malloc space: 0x1d87f620 -> 0x3b0fec3f (size 472.5 MiB)
>     WARNING: no property 'serial-number' found in vc fdt's '' node
>     no '/system' node found in vc fdt
>     no '/axi' node found in vc fdt
>     no '/hat' node found in vc fdt
>     no '/chosen/bootloader' node found in vc fdt
>     WARNING: no property 'bootargs' found in vc fdt's '/chosen' node
>     WARNING: no property 'overlay_prefix' found in vc fdt's '/chosen' node
>     WARNING: no property 'os_prefix' found in vc fdt's '/chosen' node
>     WARNING: 'pm_rsts' value not found in vc fdt
>     ERROR: Won't delete root device node
>     environment load /boot/barebox.env: No such file or directory
>     Maybe you have to create the partition.
> 
> Do you have any idea what is going on here? 
> 
> I also don't see /vc.dtb, which should have been created. I have
> 'vc.kernel: kernel7.img' in the 'global' output, but nothing else
> starting with vc.*.

I think that a non-existent /vc.dtb is expected if there's no DTs
in the boot partition as is the case with DistroKit (except for rpi4)
or if using barebox-dt-2nd.img.

I think the info/warning messages should just be dropped.

Cheers,
Ahmad

> 
>  - Roland
> 
>>         if (!chosen) {
>>                 pr_err("no '/chosen' node found in vc fdtn");
>>                 goto out;
>>         }
>>  
>> -       of_register_fixup(rpi_vc_fdt_fixup, of_dup(chosen));
>> -
>>         bootloader = of_find_node_by_name(chosen, "bootloader");
>>  
>>         str = of_read_vc_string(chosen, "bootargs");
>> -- 
>> 2.39.2
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



