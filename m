Delivery-date: Tue, 09 Jul 2024 11:17:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sR6yZ-00339l-34
	for lore@lore.pengutronix.de;
	Tue, 09 Jul 2024 11:17:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sR6yZ-0004Fg-6L
	for lore@pengutronix.de; Tue, 09 Jul 2024 11:17:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iaw+osLBylkPus84hAlYGsieXHg0v/6O1DNZ3RwQZA0=; b=jKqysh1AsjTYXqI4KTqIbrgT1K
	AFs0e82+NSU0MCDm5LFIOYkD2cnmb1O0SzP7+9InyZxS2nu93wzywDt50c4AGIgg6lYAuqUCJijbr
	Sl4WEK/OMTC8bA4rONlo+38j1gbJ/XPXIcrX05CecbMy9guFYecmrKX+K8ziieA6Mkx2ayPY4vcX/
	s5mmC7vl+/3AXQNKlo1yknY1v595l1i+lSL8IctVBqNABK8QeqsgVD6p9QMYFvujV3x2MZZmUyddA
	rOX0TtQbvH9ewZSgeyCAx/npiSh/v60S5WwwJ3IuoLZh/THpdYvxbI8tKnwbAKbt946WMlaGmEUJx
	9SF1Gkow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR6xj-00000006ZP5-3Sk8;
	Tue, 09 Jul 2024 09:16:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR6xf-00000006ZOH-3dIZ
	for barebox@lists.infradead.org;
	Tue, 09 Jul 2024 09:16:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sR6xc-0004Bz-3w; Tue, 09 Jul 2024 11:16:32 +0200
Message-ID: <c1ac0b3f-5a9d-4aab-9f26-d8e0970e959b@pengutronix.de>
Date: Tue, 9 Jul 2024 11:16:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Wes Chow <wes.chow@gmail.com>
Cc: barebox@lists.infradead.org
References: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
 <09205dea-7c95-47d3-b339-e7ad2477d592@pengutronix.de>
 <CAGWymk23wmB14DSzHcyjc0eHCVaNgxeG6ykL7WyE_fCCiTsdsw@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAGWymk23wmB14DSzHcyjc0eHCVaNgxeG6ykL7WyE_fCCiTsdsw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_021636_059326_9D2BE4E6 
X-CRM114-Status: GOOD (  31.02  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox state w/ qemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Wes,

On 09.07.24 04:13, Wes Chow wrote:
> Ahmad,
> 
>> Normally, the barebox device tree already describes the state and
>> environment, but Qemu is a special case, because the device tree is
>> not compiled into barebox, but supplied by the virtual machine.
>>
>> Thus this overlay to add some barebox specific information. As this
>> should happen very early, so that the environment can take effect early
>> on, the overlays aren't applied dynamically in this case, but compiled-in.
> 
> Thanks, that's very helpful. I'm starting to understand but I'm not
> quite there yet...

No problem. Once we have figured this out, maybe we should reword the parts
of the docs that were confusing.

>> Because that flash is a fixed part of the virt machine, you should
>> already have functional state:
>>
>>   barebox@ARM QEMU virt64:/ state
>>   registered state instances:
>>   state                (backend: raw, path: /dev/nor0.barebox-state)
>>
>> Is this not the case and if not, what errors did you get?
> 
> I do have the same thing. If I'm reading the docs correctly though I
> should be able to modify state with the nv command, right?

Not quite. As you see in the overlay, there are two partitions created
for barebox use: The environment partition and state.

The environment partition can contain anything: scripts, default values
for variables (nv), boot splashes, binaries ...etc.

The state partition however only contains the variables that you explicitly
define in your device tree state description. Unlike the environment,
these variables are laid out redundantly, so they are accessible in a
power-fail safe manner.

Systems with verified boot can thus elect to disable the mutable
environment completely and only keep the barebox built-in environment
while still being able to do A/B boot and such as that uses the
barebox state as backend, which is separate.

> This doesn't seem to persist the foo variable:
> 
>  barebox@ARM QEMU virt64:/ state
>  registered state instances:
>  state                (backend: raw, path: /dev/nor0.barebox-state)
>  barebox@ARM QEMU virt64:/ nv foo=bar
>  nv variable modified, will save nv variables on shutdown
>  barebox@ARM QEMU virt64:/ nv
>    allow_color: true
>    autoboot_timeout: 3
>    foo: bar
>    user: none
>  barebox@ARM QEMU virt64:/ poweroff

state variables can be set via device parameters, devinfo state
will tell you what variables you have and then you can set them like
this:

  state.bootstate.system0.priority=30

The variables have tab completion, so you can just state.<Tab> to list
them.

State is automatically saved when barebox exits, so you don't
need to call state -s manually to write your changes back.

> When I restart Qemu the "foo" variable goes away. And actually, every
> time I start Qemu I get this message:
> 
>  state state.of: Fresh state detected, continuing with defaults
> 
> Do I need to specify a flash device when starting Qemu? I'm running
> this (taken from the docs):
> 
>  qemu-system-aarch64 -m 2048M -cpu cortex-a57 -machine virt -display
> none -serial stdio -kernel ./images/barebox-dt-2nd.img

The assumption (that's probably not written down anywhere) is that the
user would use reset, not poweroff if they want state to persist.

Of course, on real boards, both are expected to work, but it's IMO an acceptable
tradeoff for emulation.

> ... but I'm guessing I'm missing a pflash argument. I've been trying
> various incantations but haven't been able to get Qemu to boot
> successfully if I supply a `-drive if=pflash,...`.

I think the problem is that QEMU expects you to place a "BIOS" (first stage
bootloader) into the pflash if you specify it. Unlike e.g. vexpress, barebox
for Qemu Virt64 only generates an image for use with -kernel.

You can use the second flash though (-drive if=pflash,unit=1) and change
the device tree overlay to point at.

There's surely neater ways to go about it. What are you trying to do?

Cheers,
Ahmad

> 
> Thanks,
> Wes
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



