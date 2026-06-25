Delivery-date: Thu, 25 Jun 2026 12:57:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wchlz-009ghu-01
	for lore@lore.pengutronix.de;
	Thu, 25 Jun 2026 12:57:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wchly-0005I7-89
	for lore@pengutronix.de; Thu, 25 Jun 2026 12:57:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q4wwdkBER6dmugPKIba9tJL16bhmJKBjmR5s+0o+mvs=; b=wP2LZgTXbd1ea7dYEhPAwoN0c3
	NcfTFwUsH8s6JT8nvsy6JMSeQKcCgeC+lBZG7oggi82zJP6WnQtp1OUc5GV7zR+XuNpkBtfn+Ok/m
	RfIaMP3G8jRaCdm6rAMTZOZsMh2MjSdPIjIbitTMsMG/uk9RoZDNXF8j4QCdkxscsfy1VMOrgRDPF
	u5/CbwWz4N/cjdcT/aQgjm8tQq39rHnZOoveFy70Q/1PLpN4SYeQcfCK/NcYZGxwKG40CAxINhUBC
	49F2Q1HcJ+amWshLhbgSvflj+zcWA05tnYox8KI0tzf522QJKIRwvgUdsi3CVUv6McWlCV/on7241
	LAyxFCxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wchkp-000000092hq-2CkK;
	Thu, 25 Jun 2026 10:56:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wchkl-000000092hJ-3gRK
	for barebox@lists.infradead.org;
	Thu, 25 Jun 2026 10:56:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wchkj-0001ec-NE; Thu, 25 Jun 2026 12:56:13 +0200
Message-ID: <c972194b-b9f8-4257-93b0-3f21d9880acf@pengutronix.de>
Date: Thu, 25 Jun 2026 12:56:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <SJ0PR07MB976607010E638B0F6CDE5B66ECED2@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <a1496274-e221-4dae-99ae-6ba52220cc9c@pengutronix.de>
 <SJ0PR07MB97660A51DC012191F730201EECEC2@SJ0PR07MB9766.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <SJ0PR07MB97660A51DC012191F730201EECEC2@SJ0PR07MB9766.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_035615_921661_5A631364 
X-CRM114-Status: GOOD (  18.85  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: Initialization order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/25/26 11:02 AM, Renaud Barbier wrote:
> What about an init call back like in the pair: arch/arm/boards/tqma93xx/board.c  and drivers/mfd/pca9450.c 

Not really a fan of these ad-hoc interfaces. In Linux you can register
callbacks for different life cycle stages via bus notifier:
BUS_NOTIFY_*, but we don't have something similar in barebox yet.

Your suggestion reminded me of something we _do_ have: PCI fixups!

Check out ventana_pciesw_early_fixup()

You could add a fixup like that matching your VID/PID in your board code
and call of_ensure_probed() inside on your SPI flash and do your
necessary writes?

Cheers,
Ahmad

> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: 24 June 2026 21:19
>> To: Renaud Barbier <Renaud.Barbier@ametek.com>; Barebox List
>> <barebox@lists.infradead.org>
>> Subject: Re: Initialization order
>>
>> ***NOTICE*** This came from an external source. Use caution when
>> replying, clicking links, or opening attachments.
>>
>> Hello Renaud,
>>
>> On 6/24/26 17:51, Renaud Barbier wrote:
>>> Hello,
>>> I have a LS1021A connected to a device via SPI bus and PCIe bus. To enable
>> the PCIe bus on this device , I need to write registers via the SPI bus.
>>> I created a small SPI driver using the regmap layer to access the chip and I
>> am able to  display or write registers via md and mw.
>>>
>>> I have tried (core)device_initcall opening the device using
>>> open_and_lseek but it is either called after ls_pcie_probe or too
>>> early and failed
>>>
>>> What would be the best approach to do this initialization before
>> ls_pcie_probe is called?
>>
>> The easy way would be doing it in the board driver by enabling deep probe
>> and calling
>> of_device_ensure_probed() on the SPI device to ensure it's available.
>>
>> The more proper way would be to reflect the dependency in the device tree.
>> Sascha did some work with creating DT nodes for PCI devices recently, so
>> maybe he has some advice to share.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>>
>>> Cheers,
>>> Renaud
>>>
>>>
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       |
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!Dk
>> wl4WL-Furup3YXUUa_6evqK-EgjByab0YR7X-
>> xXNe9xPJQaeIaSFImNWY64ihl_HNxdBOUoLIuj49FCZee6Z82ktU$   |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



