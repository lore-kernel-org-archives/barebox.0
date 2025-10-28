Delivery-date: Tue, 28 Oct 2025 12:01:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDhSY-00Cf1c-2J
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 12:01:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDhSY-0008Nd-3T
	for lore@pengutronix.de; Tue, 28 Oct 2025 12:01:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Cq7+Y2sUWCu5hbYLrmmqgIwEVIxXnxTSFg1TcOBXMY=; b=uNpKEW8Y6wWkkt3oRaMofzZBlK
	CgC7RseAmzcRskC5j9a2wrWwz3OeIgKBKrirZckNvuinEzgqgJJXHn83whTsjL6tDYloP/Fb+zfHr
	AzFBPkHPj3vb/G/uVXsn3a0KblxSCN7d0Rgn+MhrbKdRGxbrI8aqqIyaENRIdnRmrUbmmyhRqJX9t
	PpRiyR/rKlxHPI1k8gL1m/LCJeMqyMQ72BeNGmzq8xoQ3kVfhkNbmcM9LX4dAaA2TYgoVxM8fqqSa
	G8Ze5lhfQmBJYE9lr2YSu1kJrmt/o+VT3RXqtk4w2DJ8f+t+q1nuNIPRzDQCTN0fNAdg8edQ3vNWu
	tNZMA1bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhS4-0000000FoNO-1XAw;
	Tue, 28 Oct 2025 11:01:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhRz-0000000FoLM-3I81
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 11:01:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDhRx-00086g-Br; Tue, 28 Oct 2025 12:01:13 +0100
Message-ID: <38b64506-cd65-4024-8e0d-b8925a96d9b4@pengutronix.de>
Date: Tue, 28 Oct 2025 12:01:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Michael Tretter <m.tretter@pengutronix.de>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
 <20251027192938.2586566-5-a.fatoum@barebox.org>
 <aQCFYqNbaavn3pYU@pengutronix.de>
 <10308082-4d36-488f-b87c-9357e0e7125d@pengutronix.de>
 <aQCRW2k8IkHPTW_-@pengutronix.de>
 <482391c4-ff05-4af3-b3ee-41977923b689@pengutronix.de>
 <aQCfFOfYug9S7Hd-@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aQCfFOfYug9S7Hd-@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_040115_831657_834FEE85 
X-CRM114-Status: GOOD (  21.75  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/5] pmdomain: add Rockchip power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 10/28/25 11:46 AM, Sascha Hauer wrote:
> On Tue, Oct 28, 2025 at 11:41:47AM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 10/28/25 10:48 AM, Sascha Hauer wrote:
>>> On Tue, Oct 28, 2025 at 10:04:06AM +0100, Ahmad Fatoum wrote:
>>>>
>>>>
>>>> On 10/28/25 9:57 AM, Sascha Hauer wrote:
>>>>> On Mon, Oct 27, 2025 at 08:28:20PM +0100, Ahmad Fatoum wrote:
>>>>>> +static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>>>>>> +				     struct device_node *parent)
>>>>>> +{
>>>>>> +	struct device_node *np;
>>>>>> +
>>>>>> +	for_each_child_of_node(parent, np)
>>>>>> +		return -ENOSYS;
>>>>>> +
>>>>>
>>>>> I gave it a quick try on RK3588 and driver probe fails here. RK3588 has
>>>>> several subdomains in its power controller.
>>>>
>>>> I need it on rk3566 though, otherwise the probe hangs. Should I drop the
>>>> rk358x compatibles?
>>>
>>> That leaves us with the warnings introduced with the last patch:
>>>
>>> WARNING: dwc3 fc000000.usb@fc000000.of: power domain not found (ignoring)
>>> WARNING: rockchip-dw-pcie a40c00000.pcie@fe180000.of: power domain not found (ignoring)
>>> WARNING: rockchip-dw-pcie a41000000.pcie@fe190000.of: power domain not found (ignoring)
>>> WARNING: dw_mmc fe2c0000.mmc@fe2c0000.of: power domain not found (ignoring)
>>> WARNING: dwc3 fc400000.usb@fc400000.of: power domain not found (ignoring)
>>> WARNING: rockchip-dw-pcie a40400000.pcie@fe160000.of: power domain not found (ignoring)
>>
>> Is PCIe working right now?
> 
> Not this particular port which still has a missing phy, but generally
> yes. The Rock5t has ethernet connected to PCIe.
> 
>>
>>> Maybe add a dummy driver where people can add their compatible to when
>>> they encounter the warning knowing that their SoC doesn't need a power
>>> domain driver?
>>
>> Are you sure the power domains are indeed unneeded?
> 
> No, I am not, but currently it seems all power domains we need are
> turned on.
> 
> If it's more convenient for you you could of course still add power
> domain support for RK3588 ;)

Not intending to anytime soon, sorry.

> Having a dummy driver might turn out useful for other SoCs, I am not
> sure how many SoCs we have which lack a power domain driver, but have
> power domains in specified in the device tree.

Yes, absolutely. I'd prefer people actually familiar with the hardware
adding matches to the dummy driver though...

I will do this for v3. Can 1, 2 and 4 already go to next?

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



