Delivery-date: Mon, 03 Nov 2025 15:24:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvU9-00Eslt-0K
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 15:24:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvU8-0002u7-FK
	for lore@pengutronix.de; Mon, 03 Nov 2025 15:24:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7L7M0XnGZJJ7D178HCbfVmveS2AHtZNtDvKs05QMZA=; b=3yLxfBDLdpysjA
	+tdTLiIZX+/ReyFC20CDPPaRbUXWSyqbYHeEo+5DMmdQ+Sp7gLMeRwCBpSlD4KQD1JN/F2UKL6IIV
	dECjhsG627Jnmbh0zRmyR0JSqFuL+PpAl4sEa8mMufXSA5jStYTas1lnEVGreixbjCTT70K+ZQqDK
	dQPIshtNfJhR5Y0RTZJKD8ZhT4mleZg6qH6vdi9Jv1RTr+JB8Kk3Srar4YQ3aHOKXShK7tqwnihEX
	5I5whE6lYoax+twefvLvb2EEHH1yDoj3opwDOVGahhrsDrENUbcIt+rpmkjTy0JMkyVtBh1u8/LVI
	JqQlURquNNv79BaAWJdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvTj-0000000A0ye-0JVL;
	Mon, 03 Nov 2025 14:24:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvTg-0000000A0yJ-2mCN
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 14:24:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFvTf-0002pZ-6T; Mon, 03 Nov 2025 15:24:11 +0100
Message-ID: <2e640c65-0a84-4fce-86a7-c94694b0c9f6@pengutronix.de>
Date: Mon, 3 Nov 2025 15:24:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anis chali <chalianis1@gmail.com>
References: <20251103043833.149013-1-chalianis1@gmail.com>
 <20251103043833.149013-2-chalianis1@gmail.com>
 <cd9be78d-2a1d-4d8a-966a-f7f2f1e45326@pengutronix.de>
 <CAL+1fyAt37CXJ33si=TqLW=v+KgOt6Yi_0fHPno4nrBUverKew@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAL+1fyAt37CXJ33si=TqLW=v+KgOt6Yi_0fHPno4nrBUverKew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_062412_703872_F41E6BD8 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] efi: payload: refactor to use the external barebox
 state driver.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/3/25 3:10 PM, anis chali wrote:
>>> This breaks state for x86-efi, the original user of efi_late_init().
> 
> Was not sure to add it to the efi_defconfig

generally speaking, we try not to break existing users and if we do, an
entry should be added to the migration guide explaining what backward
incompatibility was introduced.

Cheers,
Ahmad

> 
> Le lun. 3 nov. 2025 à 01:40, Ahmad Fatoum <a.fatoum@pengutronix.de> a écrit :
>>
>> Hi,
>>
>> On 03.11.25 05:38, chalianis1@gmail.com wrote:
>>> From: Chali Anis <chalianis1@gmail.com>
>>>
>>> use the external state config to pass the barebox state.
>>>
>>> Signed-off-by: Chali Anis <chalianis1@gmail.com>
>>> ---
>>>  arch/arm/configs/efi_v8_defconfig |  2 ++
>>>  efi/payload/init.c                | 50 -------------------------------
>>
>> This breaks state for x86-efi, the original user of efi_late_init().
>>
>>>  2 files changed, 2 insertions(+), 50 deletions(-)
>>>
>>> diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
>>> index 5f946dd51d4a..26682aab304a 100644
>>> --- a/arch/arm/configs/efi_v8_defconfig
>>> +++ b/arch/arm/configs/efi_v8_defconfig
>>> @@ -21,6 +21,8 @@ CONFIG_CONSOLE_RATP=y
>>>  CONFIG_PARTITION_DISK_EFI=y
>>>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
>>>  CONFIG_STATE=y
>>> +CONFIG_EXTERNAL_STATE=y
>>> +CONFIG_EXTERNAL_STATE_DTB_PATH="/boot/EFI/barebox/state.dtb"
>>>  CONFIG_BOOTCHOOSER=y
>>>  CONFIG_RESET_SOURCE=y
>>>  CONFIG_MACHINE_ID=y
>>> diff --git a/efi/payload/init.c b/efi/payload/init.c
>>> index 5b827c57ed1f..63d62395cf3f 100644
>>> --- a/efi/payload/init.c
>>> +++ b/efi/payload/init.c
>>> @@ -376,56 +376,6 @@ static int efi_postcore_init(void)
>>>  }
>>>  postcore_efi_initcall(efi_postcore_init);
>>>
>>> -static int efi_late_init(void)
>>> -{
>>> -     const char *state_desc = "/boot/EFI/barebox/state.dtb";
>>> -     struct device_node *state_root = NULL;
>>> -     size_t size;
>>> -     void *fdt;
>>> -     int ret;
>>> -
>>> -     if (!IS_ENABLED(CONFIG_STATE))
>>> -             return 0;
>>> -
>>> -     if (!get_mounted_path("/boot")) {
>>> -             pr_warn("boot device couldn't be determined%s\n",
>>> -                     IS_ENABLED(CONFIG_FS_EFI) ? "" : " without CONFIG_FS_EFI");
>>> -             return 0;
>>> -     }
>>> -
>>> -     fdt = read_file(state_desc, &size);
>>> -     if (!fdt) {
>>> -             pr_info("unable to read %s: %m\n", state_desc);
>>> -             return 0;
>>> -     }
>>> -
>>> -     state_root = of_unflatten_dtb(fdt, size);
>>> -     if (!IS_ERR(state_root)) {
>>> -             struct device_node *np = NULL;
>>> -             struct state *state;
>>> -
>>> -             ret = barebox_register_of(state_root);
>>> -             if (ret)
>>> -                     pr_warn("Failed to register device-tree: %pe\n", ERR_PTR(ret));
>>> -
>>> -             np = of_find_node_by_alias(state_root, "state");
>>> -
>>> -             state = state_new_from_node(np, false);
>>> -             if (IS_ERR(state))
>>> -                     return PTR_ERR(state);
>>> -
>>> -             ret = state_load(state);
>>> -             if (ret != -ENOMEDIUM)
>>> -                     pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
>>> -                             ret);
>>> -
>>> -             return 0;
>>> -     }
>>> -
>>> -     return 0;
>>> -}
>>> -late_efi_initcall(efi_late_init);
>>> -
>>>  static int do_efiexit(int argc, char *argv[])
>>>  {
>>>       if (!BS)
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



