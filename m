Delivery-date: Tue, 17 Oct 2023 11:41:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsgZi-00Bbxd-Oe
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 11:41:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsgZh-0000Gn-9y
	for lore@pengutronix.de; Tue, 17 Oct 2023 11:41:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZKSYdCKeFyIi2HFHabuNgXBXESF0T+EsPBIXTMQSIZA=; b=C3n7+FlK7BowhP5e8lpK2hsobx
	OeAmRrtC7t3ob0zYntMlCTWdlMQ/TZD5dAYUQoCn1iUJGOFQ5vkzKWTM6zSalpw1UYprVlKhQnjOa
	jnL0jA67GFrML6ffRpGuXDOuEjxIatBRj4HmTSv5bj0uPT9EVYk2eHssyQM1P4cQkEuW1qUTI6J8j
	dWfRQjuwAUaM6EILx1C66tHiJ2JawvdTdseiIi+eMnHJm5tuEHyMsja5CtHpRgVvaV4sXW12tzIq5
	5tqmZMspWAu/PMbUICs1Lsb9UlsU0LQo7hRc9ohdVett93zvZxmiOaTAk4ljKeysi6QgQwkGTNfE3
	DnboHQiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsgYE-00Bqir-2W;
	Tue, 17 Oct 2023 09:39:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsgYA-00BqiN-2u
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 09:39:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qsgY4-0008GG-W6; Tue, 17 Oct 2023 11:39:37 +0200
Message-ID: <4ea7821c-4dd7-596f-2ccb-0b286ff04196@pengutronix.de>
Date: Tue, 17 Oct 2023 11:39:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de>
 <20230912104903.GA637806@pengutronix.de>
 <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de>
 <20231006115908.GH235829@pengutronix.de>
 <CAP1tNvRLTzhkiVvun=+yHkxm1jtX_xQNg0rXCM5HEeGNNQ10wA@mail.gmail.com>
 <20231013111141.GJ235829@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231013111141.GJ235829@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_023943_015103_81242D78 
X-CRM114-Status: GOOD (  31.42  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] net: add generic MAC address derivation from machine
 ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 13.10.23 13:11, Sascha Hauer wrote:
> On Thu, Oct 12, 2023 at 05:59:45PM +0300, Alexander Shiyan wrote:
>> Hello.
>>
>> Any news on this patch?
> 
> It's Ahmad's turn to integrate the remaining review topic(s) and resend.

I don't mind if you send the v2. It'll take me at least a week until
I get around to respin this.

Thanks,
Ahmad

> 
> Sascha
> 
>>
>> пт, 6 окт. 2023 г. в 14:59, Sascha Hauer <sha@pengutronix.de>:
>>>
>>> On Tue, Sep 12, 2023 at 02:34:28PM +0200, Ahmad Fatoum wrote:
>>>> Hi Sascha,
>>>>
>>>> On 12.09.23 12:49, Sascha Hauer wrote:
>>>>> On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
>>>>>> From: Ahmad Fatoum <ahmad@a3f.at>
>>>>>>
>>>>>> Especially during development, devices often lack a MAC address. While a
>>>>>> MAC address can be easily added to the environment:
>>>>>>
>>>>>>   nv dev.eth0.ethaddr="aa:bb:cc:dd:ee:ff"
>>>>>>
>>>>>> It's easily lost when flashing complete new images, e.g. from CI.
>>>>>> Make the development experience neater by deriving a stable MAC address
>>>>>> if possible.
>>>>>
>>>>> I like this, because my Fritzbox network overview is full of duplicate
>>>>> entries coming from boards with random MAC addresses.
>>>>
>>>> Glad you like it. If you are ok with the first two patches, can you take
>>>> those until I respin this?
>>>>
>>>>>
>>>>>
>>>>>> @@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)
>>>>>
>>>>> This function should be renamed. When reviewing this patch I asked
>>>>> myself why you limit generating a fixed MAC address to the DT case until
>>>>> I realized that you actually don't. I was just confused by the function
>>>>> name.
>>>>
>>>> Ah, didn't notice that. Will rename.
>>>>
>>>>>
>>>>>>  {
>>>>>>    char str[sizeof("xx:xx:xx:xx:xx:xx")];
>>>>>>    struct eth_device *edev;
>>>>>> +  bool generated = false;
>>>>>>    int ret;
>>>>>>
>>>>>>    list_for_each_entry(edev, &netdev_list, list) {
>>>>>> @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
>>>>>>
>>>>>>            ret = of_get_mac_addr_nvmem(edev->parent->of_node,
>>>>>>                                        edev->ethaddr);
>>>>>> +          if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)) {
>>>>>
>>>>> This check doesn't seem to be needed, generate_ether_addr() already
>>>>> returns -ENOSYS when this option is not enabled.
>>>>
>>>> Until we have LTO, I'd like to keep this in, so the function need not be called.
>>>> In this instance, I find it is a less ugly alternative to have #ifdef and static inline..
>>>>
>>>>>> @@ -381,9 +419,16 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>>>>>>
>>>>>>    if (!is_valid_ether_addr(edev->ethaddr)) {
>>>>>>            char str[sizeof("xx:xx:xx:xx:xx:xx")];
>>>>>> -          random_ether_addr(edev->ethaddr);
>>>>>> +
>>>>>> +          ret = generate_ether_addr(edev->ethaddr, edev->dev.id);
>>>>>
>>>>> For most network devices we won't get here because of_populate_ethaddr()
>>>>> will already have done it for us. It's only used for devices that are
>>>>> probed after postenvironment_initcall(), namely USB devices.
>>>>
>>>> Or those that don't have CONFIG_NET_ETHADDR_FROM_MACHINE_ID enabled
>>>> or don't have a machine ID set.
>>>>
>>>>> I think this deserves a cleanup before we merge this. The original
>>>>> reason to introduce a postenvironment_initcall() for getting the MAC
>>>>> address from nvmem was:
>>>>>
>>>>>> We do this in a very late initcall, because we don't want to enforce a
>>>>>> probe a probe order between nvmem providers and network devices. We
>>>>>> can't do it at randomization time, because we need to fixup Ethernet mac
>>>>>> addresses, even when barebox itself doesn't ifup the netdev.
>>>>>
>>>>> I think we should have one centralized function that retrieves the MAC
>>>>> address for an ethernet device. That should be called when we actually
>>>>> need that MAC address, so once in net_new() and once at of_fixup time.
>>>>>
>>>>> Right now the behaviour is inconsistent with regard to random MAC
>>>>> addresses. Currently we propagate the random MAC address to the Linux
>>>>> device tree when we use ethernet in barebox, but we don't propagate it
>>>>> when we do not use ethernet in barebox. We should decide what the
>>>>> desired behaviour is and do it consistently regardless if we use
>>>>> ethernet in barebox or not. This could be cleaned up along the way.
>>>>
>>>> Randomized MAC addresses are a necessary evil when barebox needs to do
>>>> networking and doesn't have a stable address. If we have a stable address,
>>>> we shouldn't randomize.
>>>>
>>>> Fixing up a randomized MAC address is a lesser evil than having different
>>>> MAC addresses for barebox and Linux. If we don't need a MAC address in barebox,
>>>> we shouldn't generate a random one just to fix it up.
>>>>
>>>> If we have a stable address, we should tell Linux about it.
>>>>
>>>> That's the logic of the current code and it's sensible to me. Why change it?
>>>
>>> Ok, makes sense. Let's go for it then.
>>>
>>> Sascha
>>>
>>> --
>>> Pengutronix e.K.                           |                             |
>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



