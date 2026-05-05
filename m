Delivery-date: Tue, 05 May 2026 15:05:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKFSd-001FU0-38
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 15:05:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKFSY-0002bP-Tf
	for lore@pengutronix.de; Tue, 05 May 2026 15:05:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eLK7Q4Z4qTpo/99gmg48NuaKjbuTMGFcYaBpyalhahI=; b=uZXlOxm0wRWhONI0g2FIJm9wOh
	b0YAUnJtafFa+L7mILDW3v5XgOIRBJRHm0+IAcJ/3raKeeFEBBW5ITTqma4IDtaQ8BYQNRDqOQmku
	SJSooXN6iZlJElq0zi7L0S18IOQ0WfvBzK2bcOmBtlDn+A4kgrfFtNxp9MEiuD12gqAj6WRj8zJRx
	CkPKHGzMKcGQs1eJsXf/ClDcZ9zFz3b5nGzSgZDKA8xd2V9gE+vctbSSJUDSg3VbeAofxMUbsWs95
	PRivhSaen6TqUFOO+RhNVpn1R022dU19ZuFz1tOCfEhI/PmKSMOWK/tXKjQci+kz7UOJUeYhDCmI0
	ISvjTScw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFRx-0000000GGzo-1RFf;
	Tue, 05 May 2026 13:04:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFRt-0000000GGyh-3pyA
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 13:04:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKFRs-00029K-AE; Tue, 05 May 2026 15:04:28 +0200
Message-ID: <4fd7ca38-951d-4e73-ac58-7c2647a799c2@pengutronix.de>
Date: Tue, 5 May 2026 15:04:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
 <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de>
 <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
 <4e34c9f9-816a-4242-a324-0f23505e9cc8@pengutronix.de>
 <CAP1tNvQkpV-UprEMqx16vbxtmCCLGpQi3enhSc07rQixU+TrtA@mail.gmail.com>
 <32447f15-ff62-4215-a845-376f28261b87@pengutronix.de>
 <CAP1tNvRkGxsKGsvGhTdcM9zL_y46wWOS58tVCLwyxLANXVjenw@mail.gmail.com>
 <76f2bbf8-e069-4cbc-8f14-f473ed731c0f@pengutronix.de>
 <CAP1tNvTccMsDKF4GVq+z-cDzeaLs3A6s0h-Mrfre8hph8y90fQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <CAP1tNvTccMsDKF4GVq+z-cDzeaLs3A6s0h-Mrfre8hph8y90fQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_060429_979696_635946B2 
X-CRM114-Status: GOOD (  21.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 5/5/26 3:01 PM, Alexander Shiyan wrote:
> There is another question: is it necessary to call
> globalvar_remove("linux.bootargs.dyn.bootentries")
> in extlinux_entry_free()?
> We can run bootm multiple times in dry-run mode, and the variable may
> become invalid...

The boot_entry() function takes care to set all
global.linux.bootargs.dyn.* variables to the empty string:

	globalvar_set_match("linux.bootargs.dyn.", "");

So you should not need to explicitly remove it.

Cheers,
Ahmad

> 
> вт, 5 мая 2026 г. в 15:52, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hi,
>>
>> On 5/5/26 2:44 PM, Alexander Shiyan wrote:
>>> barebox@Diasom DS-RK3568-SOM-EVB:/ global
>>
>>> Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
>>> Camera IMX662 detected.
>>> commandline: console=ttyS2,1500000n8 root=LABEL=ROOT ro
>>> systemd.unit=setup.target quiet splash  root=/dev/mmcblk1p3
>>> systemd.machine_id=181af2816b4c6b0aef77068e0ccc69ad
>>> Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
>>> nv variables modified, saving them
>>> I/TC: Secondary CPU 1 initializing
>>> I/TC: Secondary CPU 1 switching to normal world boot
>>> I/TC: Secondary CPU 2 initializing
>>> I/TC: Secondary CPU 2 switching to normal world boot
>>> I/TC: Secondary CPU 3 initializing
>>> I/TC: Secondary CPU 3 switching to normal world boot
>>>
>>> Now it works!
>>
>> Great. I think with the rest of my feedback integrated, the v3 should be
>> good to go.
>>
>> Thanks,
>> Ahmad
>>
>>>
>>> вт, 5 мая 2026 г. в 15:22, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>>>
>>>> Hello Alexander,
>>>>
>>>> On 5/5/26 2:19 PM, Alexander Shiyan wrote:
>>>>> barebox@Diasom DS-RK3568-SOM-EVB:/ global
>>>>> * bootm.~appendroot: true
>>>>
>>>> This should be bootm.appendroot: 1.
>>>>
>>>>> bootm.~appendroot: true, but now is ever not added to the cmdline.
>>>>
>>>> The tilde is just an implementation detail in common/bootm.c. You should
>>>> just global.bootm.appendroot as before.
>>>>
>>>> Thanks,
>>>> Ahmad
>>>>
>>>>>
>>>>> вт, 5 мая 2026 г. в 13:49, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>>>>>
>>>>>> Hello Alexander,
>>>>>>
>>>>>> On 5/5/26 12:47 PM, Alexander Shiyan wrote:
>>>>>>> Hello Ahmad.
>>>>>>>
>>>>>>> ...
>>>>>>>>> +     if (e->append) {
>>>>>>>>> +             char *append;
>>>>>>>>> +
>>>>>>>>> +             /*
>>>>>>>>> +              * The same rootfs image may be launched from eMMC or SD card.
>>>>>>>>> +              * Remove any hardcoded root= parameter from "append" to avoid
>>>>>>>>> +              * conflicts, then let barebox automatically add the correct
>>>>>>>>> +              * root= (via global.bootm.appendroot) based on the boot device.
>>>>>>>>> +              */
>>>>>>>>> +             if (data.appendroot)
>>>>>>>>> +                     append = remove_param(e->append, "ROOT=");
>>>>>>> ...
>>>>>>>> I thus have a question to you: What happens if you drop remove_param()
>>>>>>>> completely? Sure we will have two root=, but the later gets precedence,
>>>>>>>> so your use case would continue to work without giving users a wrong
>>>>>>>> expectation.
>>>>>>>
>>>>>>> Yes, the second one takes priority.
>>>>>>> The second one is the one added via extlinux.conf APPEND option.
>>>>>>> In our case we need the first parameter, i.e. which comes from barebox
>>>>>>> when global.bootm.appendroot is toggled on.
>>>>>>
>>>>>> Ack. Please check the series I Cc'd you on, which ensures that
>>>>>> global.bootm.appendroot applies _after_ extlinux.conf APPEND.
>>>>>>
>>>>>> Thanks,
>>>>>> Ahmad
>>>>>>
>>>>>>>
>>>>>>> Thanks!
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> Pengutronix e.K.                  |                             |
>>>>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>>>>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>>>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>>>>>
>>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                  |                             |
>>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>>>
>>>
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



