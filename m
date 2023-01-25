Delivery-date: Wed, 25 Jan 2023 15:34:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKgrU-001bC9-BY
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 15:34:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKgrR-000464-FT
	for lore@pengutronix.de; Wed, 25 Jan 2023 15:34:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K2rTLr3PvCjhdaRVnLKC5mMm9yh6uYj/NASqUQYv5dM=; b=AFUoMTKShX/ShE8ctcIMsh+O2x
	hK0WROQnaZGeTqGu7RTNLXfF1cI//Q1xdIcRwriiYjfxqCPfWF0XzZrdawyaDnWnFJ8/Pote91uV5
	Y2kDzuuKBaHe3c1zMsH2JzBuGLdGeOq9F9bwTrXbA6C8tecRbIDpcfoBZht9rZfi9g2g1INtC1/53
	8oAcF7eBFTWWjDXIGh2TFOINieinm1yP9s7dVqRFYgjeiskm18XntQ43hm1yzocMWv43HM43ShHgd
	KFSMHJmgSQxbnUU0TRoPWBuqhHcJoklFLt/w+gS1Q1wUQKN/Hg8mUPdKUCkyVYLARwhfNwA2V1YsW
	RQyz7yaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKgq7-007YnB-68; Wed, 25 Jan 2023 14:33:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKgq1-007YlT-DX
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 14:33:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKgpz-0003vr-5z; Wed, 25 Jan 2023 15:33:19 +0100
Message-ID: <13bed4ae-5db5-7432-f610-a065bdebb524@pengutronix.de>
Date: Wed, 25 Jan 2023 15:33:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
 <072ab8ce-d92f-8841-a44e-621a3ba345a4@pengutronix.de>
 <Y9E23b56PcfZWsum@novena-choice-citizen>
 <77f25018-39ab-ec53-56a5-21bfdeb484d7@pengutronix.de>
 <Y9E8mqaQ+S2PeatL@novena-choice-citizen>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y9E8mqaQ+S2PeatL@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_063321_507458_3C8F8ABE 
X-CRM114-Status: GOOD (  17.98  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 25.01.23 15:28, John Watts wrote:
> On Wed, Jan 25, 2023 at 03:16:05PM +0100, Ahmad Fatoum wrote:
>> We could add the binding to the barebox AT24/AT25 driver. We'll need
>> to make sure we don't fail the probe in the error path as not to
>> break existing users. Fortunately, with deep probe, we will
>> have no -EPROBE_DEFER that would complicate this.
> 
> I'm really not sure if specifying the regulator (that should always be on) for
> every possible node is a good idea. I'd need to add -supply properties to:
> 
> - USB
> - Sata
> - HDMI
> - SD cards
> - Ethernet
> - PCIe
> - FPGA
> - I2C
> - UART

What voltage does your UART require that you don't already have when
your SoC is powered up? anyways, I still see utility in observing
the vcc-supply upstream bindings for EEPROMs.

> 
> Some regulators even require multiple inputs such as 3v and 5v delayed.

Add an of_devices_ensure_probed_by_property("regulator-boot-enabled") or
something to the start of your machine's board driver then.

> 
> John.
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



