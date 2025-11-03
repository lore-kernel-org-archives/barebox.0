Delivery-date: Mon, 03 Nov 2025 15:23:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvSw-00Eskl-16
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 15:23:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvSv-0002kz-Ka
	for lore@pengutronix.de; Mon, 03 Nov 2025 15:23:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odAaKjYu461h2E3aGKJNItYpPXoXgokWGDvXuVo6qlc=; b=Yqpkm0ngwh2w6Z
	W+WbJn48+kndQpapLN956qs2Fy9KDrC6Cxm43GgvBETkiN0pAmugutmP7Gkx985Z3k1CpfnvJUmtz
	UEA9IiyD+FhadwUzMM3FVwhJxMAN3LviuR5pzipNdlu49P9Cl7Im+SzIHLMniJclVJx/YEIKC8FHc
	n1/59RL1SJYfX51unrUp+KCYdQn1Gt1LL16gN2/f97JQXDg0UkyHoKkNsFh17j4bsNXl3bQgEIPTa
	5qLnDu/BJOrR6K1xzD5L252TDDSxXhb5hb893t6ZA9s1fbDtus2H8vlsIIOY8IBSx45KMIU6SZAfC
	ti5Oe6xsfbhl+/yeCLBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvSQ-0000000A0tX-2zep;
	Mon, 03 Nov 2025 14:22:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvSN-0000000A0su-2N0i
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 14:22:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFvSL-0002gN-GP; Mon, 03 Nov 2025 15:22:49 +0100
Message-ID: <56c2bb1a-5e10-4f70-a241-88e5045a227a@pengutronix.de>
Date: Mon, 3 Nov 2025 15:22:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anis chali <chalianis1@gmail.com>
References: <20251103043833.149013-1-chalianis1@gmail.com>
 <e6fe90ea-3ba4-402b-9b9e-dbe2f386dc63@pengutronix.de>
 <CAL+1fyC5bD3k6rufJx6eYXjL4Fo00QOWRRC3JzgfcU-3maROhA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAL+1fyC5bD3k6rufJx6eYXjL4Fo00QOWRRC3JzgfcU-3maROhA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_062251_630082_B86C6AD2 
X-CRM114-Status: GOOD (  31.41  )
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
Subject: Re: [PATCH 1/2] drivers: misc: external_state: add a barebox external
 state.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Anis,

On 11/3/25 3:09 PM, anis chali wrote:
>>> strlen can't return negative numbers.
> ack, right it is size_t (unsigned)
> 
>>> The original function had a number of safety checks that are missing here:
>>>
>>> - It only ran the code when in EFI payload mode, as the same barebox
>>>  binary could be chainloaded without EFI
>>>
>>> - It checked that /boot is mounted and gave a useful error message to hint
>>>  at e.g., EFIFS missing, which we are missing out on here.
>>>
>>> I am not yet convinced this is strictly an improvement.
> 
> Yes you are right but I didn't reintegrate the code in generic driver
> since it will just use Kconfigs to reference a state dtb file.
> In case this code was accepted there is no context to do the check,
> but I ensured that barebox gives a behaves in way that the user
> will quickly see that there is no /boot directory with the message
> telling No such file or directory, anyway you suggestion to add -f to
> state command
> is more elegant, I will do some experimentations. the aim of this
> patch is to support a state.dtb given in runtime which permits
> userspace interaction with
> native board because I didn't figure out how barebox state command
> could communicate with a barebox intree state.

I didn't quite understand what you are hoping to achieve with this patch
set, but if the command would serve the purpose, then that would be
best, I think.

Cheers,
Ahmad

> 
>>> If you have the need to customize where your state comes from, how about adding
>>> a state -f /path/to/state.dtb command option and calling it from your init script?
> right, more elegant suggestion, I will try it.
> 
> Thank's for feedback
> 
> Anis.
> 
> Le lun. 3 nov. 2025 à 01:46, Ahmad Fatoum <a.fatoum@pengutronix.de> a écrit :
>>
>> Hi,
>>
>> On 03.11.25 05:38, chalianis1@gmail.com wrote:
>>> From: Chali Anis <chalianis1@gmail.com>
>>>
>>> Add a driver to use an external state dtb, gives the ability to define
>>> an external state at compile time. useful for yocto or buildroot defining
>>> a state.dtb that will be passed to barebox at compile time vi a defconfig
>>> fragment.
>>
>> We already had code that did this unconditionally for EFI.
>> Can you explain why this needs to be customizable?
>>
>>> +config EXTERNAL_STATE
>>> +     tristate "Use external barebox state dtb"
>>> +     depends on OFDEVICE
>>> +     depends on STATE
>>> +     help
>>> +       This permits the use of an extranl dtb state blob
>>
>> external
>>
>>> +       which permits to dynamicly at compile time specify
>>
>> dynamically
>>
>>> +       an external blob vi EXTERNAL_STATE_DTB_PATH
>>> +
>>> +config EXTERNAL_STATE_DTB_PATH
>>> +     string "the external barebox state dtb path"
>>> +     depends on EXTERNAL_STATE
>>
>> Really needs help text as EXTERNAL makes me think of a file on the
>> build host.
>>
>>> +static int state_external_init(void)
>>> +{
>>> +     const char *dt_path = CONFIG_EXTERNAL_STATE_DTB_PATH;
>>> +     struct device_node *state_root = NULL;
>>> +     size_t size;
>>> +     void *fdt;
>>> +     int ret;
>>> +
>>> +     if (strlen(dt_path) <= 0)
>>> +             return -EINVAL;
>>
>> strlen can't return negative numbers.
>>
>> The original function had a number of safety checks that are missing here:
>>
>> - It only ran the code when in EFI payload mode, as the same barebox
>>   binary could be chainloaded without EFI
>>
>> - It checked that /boot is mounted and gave a useful error message to hint
>>   at e.g., EFIFS missing, which we are missing out on here.
>>
>>
>> I am not yet convinced this is strictly an improvement.
>>
>> If you have the need to customize where your state comes from, how about adding
>> a state -f /path/to/state.dtb command option and calling it from your init script?
>>
>> Cheers,
>> Ahmad
>>
>>> +
>>> +     fdt = read_file(dt_path, &size);
>>> +     if (!fdt) {
>>> +             pr_info("unable to read %s: %m\n", dt_path);
>>> +             return 0;
>>> +     }
>>> +
>>> +     state_root = of_unflatten_dtb(fdt, size);
>>> +     if (!IS_ERR(state_root)) {
>>> +             struct device_node *np = NULL;
>>> +             struct state *state;
>>> +
>>> +             ret = barebox_register_of(state_root);
>>> +             if (ret)
>>> +                     pr_warn("Failed to register device-tree: %pe\n", ERR_PTR(ret));
>>> +
>>> +             np = of_find_node_by_alias(state_root, "state");
>>> +
>>> +             state = state_new_from_node(np, false);
>>> +             if (IS_ERR(state))
>>> +                     return PTR_ERR(state);
>>> +
>>> +             ret = state_load(state);
>>> +             if (ret != -ENOMEDIUM)
>>> +                     pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
>>> +                             ret);
>>> +
>>> +             return 0;
>>> +     }
>>> +
>>> +     return -EINVAL;
>>> +}
>>> +
>>> +late_initcall(state_external_init);
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



