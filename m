Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x232.google.com ([2a00:1450:4008:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9tir-00030v-0w
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 09:20:02 +0000
Received: by mail-bk0-f50.google.com with SMTP id mz11so149239bkb.9
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 02:19:39 -0700 (PDT)
Message-ID: <520C9D27.8020801@gmail.com>
Date: Thu, 15 Aug 2013 11:19:35 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
 <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
 <520C9A63.3050706@gmail.com> <20130815091326.GG26614@pengutronix.de>
In-Reply-To: <20130815091326.GG26614@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/8] Set model and hostname at boardlevel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 08/15/13 11:13, Sascha Hauer wrote:
> On Thu, Aug 15, 2013 at 11:07:47AM +0200, Sebastian Hesselbarth wrote:
>> On 08/15/13 09:29, Sascha Hauer wrote:
>>> With multiboard support the compiletime generated BOARDINFO string
>>> gets more and more meaningless. This removes it from Kconfig and
>>> replaces it with a variable that can be set at boardlevel.
>>>
>>> Also many boards have a standard setting for the hostname in the
>>> environment. This patch also moves the standard to C code by calling
>>> barebox_set_hostname().
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> [...]
>>> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
>>> index 24720d5..b1d148d 100644
>>> --- a/arch/arm/mach-mvebu/armada-370-xp.c
>>> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
>>> @@ -100,6 +100,9 @@ static int armada_370_xp_init_soc(void)
>>>   {
>>>   	unsigned long phys_base, phys_size;
>>>
>>> +	barebox_set_model("Marvell Armada");
>>
>> Marvell Armada SoC family comprises more than just 370 and XP. I suggest
>> to name it "Marvell Armada 370/XP" instead. More Armada SoCs may add to
>> this init, but right now it's only those two.
>
> Normally this should be a boardname, but the corresponding code where I
> could add it does not exist. Once the name comes from the devicetree
> this will be solved since the name will come from there then.

Ok, I see.

> So I can change it to "Marvell Armada 370/XP" for now and hope that the
> boards will be converted to devicetree when more SoCs are added.

We are going for DT-only anyway, but just squash it in. I guess Thomas
will find some time to work on it soon.

[...]
>>> +	barebox_set_model("Marvell kirkwood");
>>
>> typo s/kirk/Kirk/
>
> Ok, will change.
>
>>
>>> +	barebox_set_hostname("kirkwood");
>>> +
>>>   	kirkwood_init_clocks();
>>>   	clkdev_add_physbase(tclk, (unsigned int)KIRKWOOD_TIMER_BASE, NULL);
>>>   	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,
>>
>> Also, corresponding changes for Dove are missing (diff below).
>
> The one Dove board we currently have (Cubox) is converted over to
> devicetree, so the boardname will come from there. I could add it for
> now and remove it in the merge of the devicetree conversion and this
> series.

Ok, then drop the diff.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
