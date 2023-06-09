Delivery-date: Fri, 09 Jun 2023 11:42:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7YdG-00GztH-5H
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 11:42:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7YdD-00041O-Hp
	for lore@pengutronix.de; Fri, 09 Jun 2023 11:42:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXVmjSUl0vOqanmUw2x3BLsNlzxZ6380fRPvJYUHR/k=; b=BSwXrP3Gi/oeZ6
	gxXN3++xasB8x8cpafZiM1EL94kDS3TT3dpQN+w945p9igGopal5T/2WjY+jeKt/druB0UXfhm0GL
	qLhvesnOW3otsXmZxbj3r5YltyJ4M+T9F3iAHtblPbqK0UKm6w4jHDzcsxtm5+xHBrFouXoLstNam
	2cYiM5VmJaeyb/sC2tumFgnPxxIgMXCk/7wMtsx4WV0xMcIvTklHHBtN9WX9Aa7bhnWdH/b+svRMj
	oU2NUSEqX2f5CRhawUY10ZPmKKRBgSuZxQK5BYpyB3gLzaHRt56gVMr87xxIJRPwv4g2pkXbLWjAl
	t7/jfEdnIe7JI9wa7neA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7YcW-00CSNk-1q;
	Fri, 09 Jun 2023 09:41:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7YcT-00CSMO-0L
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 09:41:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7YcQ-0003tM-7X; Fri, 09 Jun 2023 11:41:18 +0200
Message-ID: <3f25c449-2d8e-6b75-3aac-5b70e38c9174@pengutronix.de>
Date: Fri, 9 Jun 2023 11:41:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>
References: <20230607051155.3175-1-denorl2009@gmail.com>
 <20230607051155.3175-3-denorl2009@gmail.com>
 <e72144bf-7523-4d5e-09a3-74f910a1ed7f@pengutronix.de>
 <CALHb5ujjPBenOtsmpfa-Y7LikNiAz4KK1bHOA7k3pQCjCM8n8A@mail.gmail.com>
 <f597258b-a7fb-af4e-323c-77c6ab5b5a61@pengutronix.de>
 <CALHb5uiDfZpwDUQGDYazBX2vZRTWEiJBEm1kcF94AJoK_Uhx9Q@mail.gmail.com>
 <917a2465-b754-b7f4-d51b-53bd2c5ba7e5@pengutronix.de>
 <CALHb5ujbh+B8nKiA2Oe=83eaALcekHHagbR6jeb_Z_ZW-OhG1Q@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CALHb5ujbh+B8nKiA2Oe=83eaALcekHHagbR6jeb_Z_ZW-OhG1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_024121_209429_55EFBF48 
X-CRM114-Status: GOOD (  24.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] test: mips: add QEMU Malta 64le labgrid config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.06.23 11:38, Denis Orlov wrote:
> On Fri, 9 Jun 2023 at 12:28, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> On 09.06.23 11:17, Denis Orlov wrote:
>>> On Fri, 9 Jun 2023 at 10:21, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>
>>>> On 09.06.23 09:14, Denis Orlov wrote:
>>>>> Hello Ahmad,
>>>>>
>>>>> On Fri, 9 Jun 2023 at 09:36, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>>>
>>>>>> On 07.06.23 06:59, Denis Orlov wrote:
>>>>>>> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
>>>>>>> ---
>>>>>>>  test/mips/qemu-malta64el_defconfig.yaml | 22 ++++++++++++++++++++++
>>>>>>>  1 file changed, 22 insertions(+)
>>>>>>>  create mode 100644 test/mips/qemu-malta64el_defconfig.yaml
>>>>>>>
>>>>>>> diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
>>>>>>> new file mode 100644
>>>>>>> index 0000000000..22562d5b7a
>>>>>>> --- /dev/null
>>>>>>> +++ b/test/mips/qemu-malta64el_defconfig.yaml
>>>>>>> @@ -0,0 +1,22 @@
>>>>>>> +targets:
>>>>>>> +  main:
>>>>>>> +    drivers:
>>>>>>> +      QEMUDriver:
>>>>>>> +        qemu_bin: qemu
>>>>>>> +        machine: malta
>>>>>>> +        cpu: 5KEf
>>>>>>> +        memory: 256M
>>>>>>> +        bios: barebox-qemu-malta.img.swapped
>>>>>>> +        extra_args: ''
>>>>>>> +      BareboxDriver:
>>>>>>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>>>>>>> +        bootstring: 'commandline:'
>>>>>>> +      BareboxTestStrategy: {}
>>>>>>> +    features:
>>>>>>> +      - virtio-pci
>>>>>>
>>>>>> Did you test virtio PCI? I don't see it enabled in the defconfig.
>>>>>
>>>>> Nope, I didn't. I must have copied this from the 32-bit malta config
>>>>> file. However, I see that its defconfig also lacks VIRTIO_PCI, so should
>>>>> those be removed from both labgrid configs?
>>>>>
>>>>> Besides, judging from the virtio PCI Kconfig option depends, there seem
>>>>> to be some issues with virtio PCI on MIPS without CONFIG_MMU set. Is the
>>>>> lack of VIRTIO_PCI option in 32-bit malta defconfig related to that?
>>>>
>>>> Ah, right. test/emulate.pl reads virtio-pci feature to decide what Virt I/O
>>>> transport to use. Maybe the MMU incompatibility is fixed now with your
>>>> recent DMA rework or maybe we still have 1:1 mapping assumptions in the
>>>> virtio code itself. If you could give it a quick test with CONFIG_MMU=n
>>>> and see if it works, that would be great. Something like this should do it:
>>>>
>>>> /usr/bin/qemu-system-mips64el -M malta -cpu 5KEf -m 256M \
>>>>    -bios barebox-qemu-malta.img.swapped -serial mon:stdio -trace file=/dev/null \
>>>>    -drive if=none,file=/src/barebox-rockchip/somealigned.img,format=raw,id=hd0 \
>>>>    -device virtio-blk-pci,disable-legacy=on,disable-modern=off,drive=hd0
>>>>
>>>> (Above was generated by ./test/emulate.pl $config -n --blk=somealigned.img)
>>>>
>>>> You should see a /dev/virtioblk* device if everything is enabled and working.
>>>
>>> Yeah, it seems that this works on both CONFIG_MMU=y and CONFIG_MMU=n now.
>>> The drive mounts successfully and I am able to look at its contents with
>>> "ls". So, does this mean that we should enable the VIRTIO_PCI option in
>>> malta defconfigs?
>>
>> Even for 32-bit? Ye, then we can drop the depends line in VIRTIO_PCI and
>> enable it in the MIPS defconfigs.
> 
> Yep, 32-bit with CONFIG_MMU=n works too. I will send a patch later today.
> Should CONFIG_DISK and CONFIG_VIRTIO_BLK also be enabled in those
> by default?

Given that size is not a constraint for malta, I'd suggest enabling everything
Virt I/O related:

  CONFIG_VIRTIO_MENU=y
  CONFIG_VIRTIO_PCI=y
  CONFIG_VIRTIO_CONSOLE=y
  CONFIG_VIRTIO_BLK=y
  CONFIG_HWRNG=y
  CONFIG_HW_RANDOM_VIRTIO=y
  CONFIG_VIRTIO_INPUT=y

and their dependencies.

Thanks for looking into this,
Ahmad

> 
>>
>> Thanks for testing!
>> Ahmad
>>
>>>
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>>
>>>>> Regards,
>>>>> Denis
>>>>>
>>>>>>
>>>>>>> +images:
>>>>>>> +  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
>>>>>>> +tools:
>>>>>>> +  qemu: /usr/bin/qemu-system-mips64el
>>>>>>> +imports:
>>>>>>> +  -  ../strategy.py
>>>>>>
>>>>>> --
>>>>>> Pengutronix e.K.                           |                             |
>>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>>>
>>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



