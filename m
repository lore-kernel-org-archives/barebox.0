Delivery-date: Tue, 13 Jun 2023 12:20:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q918F-0052mO-BP
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 12:20:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q918C-0003Cq-Mv
	for lore@pengutronix.de; Tue, 13 Jun 2023 12:20:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tOCggqifUKygYjxsBbB/kHh+iFZ6stGxnebIfA4EX/Q=; b=2DEDSsFgV2HAnjlfXAssjFv7RM
	8bPoBHH9dshAZhqBsy2wRVYnkZN+fmUbxh4xmtAPFFBO/7JdaHLnPq/8PuI51xIcrSt7BjFFV7FzZ
	zLPGqIns521GKVvP257erIuiv0fibA5E/OeZHSEjPjH7gXNhlgY7p0W7+be4yH+jC7i+rJbNSe6oQ
	YH6BDXSfJV9dePateYS4FQocqEVm64VJL3WUc3EWhW5kYtNhRrfOOe8wyUJkRahoD+SkwYXknj4TO
	ddEkU1Gg/Lodxv8genqHiXBKKfs+UULHx3sUJF6XZdrN1ilIwm9oiClP1qAV/zW0tfEMDF8LuIu4G
	yymie/Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q916v-007dF3-12;
	Tue, 13 Jun 2023 10:18:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q916r-007dDr-1h
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 10:18:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q916n-0002sF-8O; Tue, 13 Jun 2023 12:18:41 +0200
Message-ID: <6e242906-3e2f-dc66-924a-dc36631d1f34@pengutronix.de>
Date: Tue, 13 Jun 2023 12:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230605063719.1431079-1-a.fatoum@pengutronix.de>
 <20230613091659.GS18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230613091659.GS18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_031845_565091_75357EA1 
X-CRM114-Status: GOOD (  28.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Kbuild: include arch/ Makefile before other directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.06.23 11:16, Sascha Hauer wrote:
> On Mon, Jun 05, 2023 at 08:37:19AM +0200, Ahmad Fatoum wrote:
>> Unless overridden by SORT*, LD will place sections matched by wildcards
>> in the order they were seen in the link. So far, this meant that
>> arch/ initcalls and device trees compiled into barebox proper, were
>> always last.
>>
>> For platforms with PBL or with only one device tree in barebox proper,
>> this didn't matter much, but when enabling the of_manipulation selftest,
>> a second device tree would be built into barebox on kvx, openrisc and
>> some MIPS.
>>
>> Because all directories appear before arch/, this had the effect that
>> on kvx, openrisc and some MIPS, __dtb_start would end up pointing at the
>> test's device tree instead of the board device tree breaking the build.
>>
>> Switching the affected platforms to use PBL would be one fix for the
>> issue, but there's a simple one: let's do what Linux does in its
>> top-level Kbuild file and have arch/ not be the last in sequence.
>>
>> This may fause fallout for code that depended on specific ordering of
>> initcalls or other linker-defined lists, which would need to be fixed.
> 
> I am afraid this causes regressions that take a long time to realize and
> to sort out.
>
> We could do something along the following lines to pick the correct dtb.
> This is only meant as an example, it likely needs some sugar to work
> correctly in all cases.

Doesn't work for kvx, which doesn't set CONFIG_BUILTIN_DTB_NAME
in the defconfig. I am fine with an alternative that lets me run
selftests on openrisc.

Cheers,
Ahmad

> 
> Sascha
> 
> ----------------------------------8<------------------------------
> 
> diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
> index d1e27b5e6b..e114cc5d8a 100644
> --- a/arch/mips/boot/Makefile
> +++ b/arch/mips/boot/Makefile
> @@ -3,6 +3,7 @@
>  obj-y += start.o
>  obj-y += main_entry.o
>  
> +CFLAGS_dtb.o += -DBUILTIN_DTB_SYMBOL=__dtb_$(patsubst "%",%,$(subst -,_,$(CONFIG_BUILTIN_DTB_NAME)))_start
>  obj-$(CONFIG_OFDEVICE) += dtb.o
>  
>  pbl-y += main_entry-pbl.o
> diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
> index ece1494e5f..3afcd20a0e 100644
> --- a/arch/mips/boot/dtb.c
> +++ b/arch/mips/boot/dtb.c
> @@ -34,7 +34,7 @@ int of_add_memory_bank(struct device_node *node, bool dump, int r,
>  	return ret;
>  }
>  
> -extern char __dtb_start[];
> +extern char BUILTIN_DTB_SYMBOL[];
>  
>  static int of_mips_init(void)
>  {
> @@ -42,7 +42,7 @@ static int of_mips_init(void)
>  
>  	fdt = glob_fdt;
>  	if (!fdt)
> -		fdt = __dtb_start;
> +		fdt = BUILTIN_DTB_SYMBOL;
>  
>  	return barebox_register_fdt(fdt);
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



