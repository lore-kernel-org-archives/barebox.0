Delivery-date: Mon, 27 Apr 2026 14:14:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHKrD-00GwMs-2t
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 14:14:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHKrD-0001ms-5L
	for lore@pengutronix.de; Mon, 27 Apr 2026 14:14:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rUnhVNzWcIYjrmdbnyyvQmqBy4q/eiRL+tPm5kB4gyI=; b=n6nugwMAe6aSpbK0OVhe46oOst
	rrK/QzuYZ53r4h5AXi/WGnBC/t2sgZ0VsLFij3R0p/GDePyh2dtOHnNY1J/gR0+HyxmhA1jJNL0id
	KZaXNr0jzLllSobT0qw6ye315k2otvxxiihIlOnY6eKxPeWxd7Ec6qF2t3N3cyJUM/uW6vbQL5NbH
	ZSuM6AP6L+1qnvkoTt42+gAuG1Cwks3R6PbEShWl99zUIfUvsFha3KZm2rcy25BJANuib2hrPD2yf
	Zx+SpQE9Vd+3sJDEcpE5E4dYd2PyX3IyC0Pn0l6P4McyISt0W/ZyVLnCmQatWjh/qblREXLeeDr25
	x8W94Vww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKqa-0000000Grjl-0Yvn;
	Mon, 27 Apr 2026 12:13:56 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKqW-0000000Grid-2wcW
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 12:13:54 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id 3B8DE800379;
	Mon, 27 Apr 2026 14:13:49 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 cczrelay04.in2p3.fr 3B8DE800379
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=in2p3.fr;
	s=20260401; t=1777292029;
	bh=rUnhVNzWcIYjrmdbnyyvQmqBy4q/eiRL+tPm5kB4gyI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YG/Tc0HVDL9Y5VNds0K7TocdeYGTML4iBG4kzDTb9dcnGua2WY3UiI3ZjS9Opg+oc
	 bx4659Whk6HOkC7Zv5h/T6IxX0KUQiW4hBhcrdGIDPR77qW5oFd7Ne2eEx6lh88b8Y
	 6MRWdSVWWT2XcfQRVXiHG9D99tHYnUacp8Vang6VefMVJKgO9B9PcsKEYdcF6BK+6w
	 6/ni22pHyU7/hZWh30qfDaphbDRZJez2KZ5Pu/YQ4f3jYnqCIGqCtNoTtTtnihzTwK
	 IebksUy3KOLtcPFzv58oLyizvhxy9b7Z8qWo46GiiUy6ArWJjfmT/jazoBQd7uGCmV
	 2ndWyEOUhPx7A==
Message-ID: <c952a0cc-1b0c-474e-8e5a-d40303825d5a@clermont.in2p3.fr>
Date: Mon, 27 Apr 2026 14:13:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: ML_Barebox <barebox@lists.infradead.org>, abbotti@mev.co.uk
References: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
 <87mrysizs9.fsf@pengutronix.de>
 <09c2d997-08e5-484a-a7ea-3204b304f3b8@clermont.in2p3.fr>
 <871pg0vh4t.fsf@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <871pg0vh4t.fsf@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_051353_142903_9A2E376C 
X-CRM114-Status: GOOD (  29.43  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: ARM: socfpga: enclustra-sa2: issue with I2C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Too bad you don't have an idea. Sorry for misspelling your name,

I'm not sure it's related, but I get errors with the 
socfpga_import_preloader script only if I use the --embedded-sdk option. 
I couldn't figure out what this option changes.
https://paste.debian.net/hidden/fffbb190

David

Le 27/04/2026 à 12:20, Steffen Trumtrar a écrit :
> On 2026-04-27 at 12:09 +02, David Picard 
> <david.picard@clermont.in2p3.fr> wrote:
>
> Hi,
>
>> Hi Stephen, thanks for your reply,
>>
>> Pins SDA and SCL, GPIO51 and GPIO52 respectively, are specified with 
>> the I/O
>> standard 3.3V LVCMOS and a drive strength of 2mA, which is way more 
>> than needed,
>> given my 10K pull-up resistors (3.3 / 10K = 0.33mA). I know that 10K 
>> is bigger
>> than the usual 2.2K, but probably not big enough to prevent any 
>> change on the
>> SCL line. I just see a perfect flat line when I probe the bus.
>>
>
> :(
>
>> I compared iocsr_config_cyclone5.c and pinmux_config.c in the 
>> terasic-de10-nano/
>> and enclustra-sa2/ directories. There are a lot of differences. But 
>> the lines
>> that changed in enclustra-sa2/ when I tried to enable the I2C1 bus 
>> are now the
>> same as in the terasic-de10-nano/ directory, which probably makes sense.
>>
>
> Makes sence, yes and was what I hoped for. But, doesn't seem to change 
> anything.
>
>> Does Barebox have to decipher every bit in those cryptic files?
>>
>
> barebox knows nothing about the meaning of the iocsr registers. Those 
> values a just written to the hardware and can't be changed afterwards.
> AFAIK there still is no linux driver that might read and decipher the 
> settings.
>
> Sadly, I don't have any more ideas at the top of my head why it 
> doesn't work. Everything sounds correct.
>
>
> Best regards,
> Steffen
>
>>
>> David
>>
>>
>> Le 24/04/2026 à 09:27, Steffen Trumtrar a écrit :
>> > On 2026-04-23 at 14:00 +02, David Picard 
>> <david.picard@clermont.in2p3.fr>
>> > wrote:
>> >
>> > Hi,
>> >
>> >> Hello,
>> >>
>> >> @Stephen and Ian: I Cc you since I spotted you authored commits 
>> related to
>> >> Intel
>> >> SoC FPGA pin muxing.
>> >>
>> >
>> > long time ago ;)
>> >
>> >> I'm trying to enable the I2C1 bus on a Cyclone V-base module, 
>> mounted on a
>> >> base
>> >> board. The I2C1 lines connect to a 2.54mm header, on which I 
>> attached a I²C
>> >> device with pull-up resistors at address 0x40.
>> >> 
>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/ 
>> I
>> >> can't detect the I²C device, nor can I see any pulse on the SCL 
>> line, which
>> >> is
>> >> constantly at +3.3V.
>> >>
>> >> I changed the pin muxing in Quartus, updated the handoff files, 
>> changed the
>> >> devicetree. The I2C1 bus is visible in Barebox and Linux. More 
>> detail here:
>> >> 
>> https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c1-issue-no-activity-on-bus/352583 
>> >
>> > I remember, that iocsr was 'underdocumented' to say the least...
>> >
>> > Wasn't it possible to change drive strength and those settings or 
>> was that
>> > with Xilinx/Zynq?
>> >
>> >> As documented on the Barebox website, I generated the BSP files 
>> with the
>> >> Quartus
>> >> script bsp-create-settings and copied the handoff files to the 
>> Barebox build
>> >> directory. After that, I could see that iocsr_config_cyclone5.c and
>> >> pinmux_config.c had changed.
>> >> 
>> https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-handoff-files
>> >> 
>> https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/bsp-create-settings.html
>> >> If someone could give me some hint, that would be really great!
>> >
>> > I see, that the Terasic DE10 Nano uses i2c1. Maybe compare the 
>> changed iocsr
>> > with those?
>> >
>> >
>> > Best regards,
>> > Steffen
>> >
>



