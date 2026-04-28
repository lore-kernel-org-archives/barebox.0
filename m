Delivery-date: Tue, 28 Apr 2026 14:53:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHhwB-00HK4q-0e
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 14:53:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHhwA-0006GT-C7
	for lore@pengutronix.de; Tue, 28 Apr 2026 14:53:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lKyw8nAEz/zxTjKVG+Hs1VukrqiHQGk0NovZzj4oh9U=; b=Ak4uEu77H3KAP1VTarptjnzGNV
	qelgwtXYTQmTCJZGyQrp6dyyjCdobFOiElsvBDoV7A/sopu+Ux+k5wPk6H0HmB7ZN3qnEkabKlUxJ
	JU4uGk4xl4uTnzjuG8V+beooiWsL2pVtNu9W0fhYYWYlJKoCX7p1++bsCSFr2Nxl5v1PnW+m73vh1
	Mmpa2Mb+SpBpxJHzvBAmH9bkE6rhKFEZFuDkA6cDvEprKdz2QwPFLKl+mG4Eh3+ARK3CCoaXled+x
	JOEtFFEGjrjm6R+ZcsPpyqm3DEWcbdYVSXvyixdpPlGP3lGat7QKOCy14LGM/sIEC+J2/tk83KC+2
	+RnuGfsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhva-00000001TNM-44mT;
	Tue, 28 Apr 2026 12:52:38 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.151] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhvV-00000001TLx-2812
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 12:52:37 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id DA24118027B3;
	Tue, 28 Apr 2026 14:52:27 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 cczrelay03.in2p3.fr DA24118027B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=in2p3.fr;
	s=20260401; t=1777380747;
	bh=lKyw8nAEz/zxTjKVG+Hs1VukrqiHQGk0NovZzj4oh9U=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=L/xQfIIeKpu6XCdU/va+rEGNxRdppQG458837INW4Bslu9pfOpb7QaPB2LBKS8GyD
	 5vgFv/eSOzsYFJ0sX8AjVJoBRqiTxLN5aqh+6wu9rLNVpnjpJjbD9O0XVaG3RJt9F3
	 YAgsAGmAMq4C/C/JpFjsG2Wuqxyoy5RIEQm7HBTIb1GpAuTQckFh0B9GzNyw5cfP3E
	 54mll5m+Du0BKafPUbC0RKFk82c2qdbh7kLx7GvSqlMjLAUMoFk+6W77dPBJGzrvQn
	 YxxbeNNksjFYs74B4Bg0EHAB+Xva6+X972396b75wy1U2SzYJvftvxLbGd6u1exf3N
	 /zi6zoIIO9yVg==
Message-ID: <6df3155d-7254-4777-bf87-644b7850e237@clermont.in2p3.fr>
Date: Tue, 28 Apr 2026 14:51:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: ML_Barebox <barebox@lists.infradead.org>, abbotti@mev.co.uk
References: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
 <87mrysizs9.fsf@pengutronix.de>
 <09c2d997-08e5-484a-a7ea-3204b304f3b8@clermont.in2p3.fr>
 <871pg0vh4t.fsf@pengutronix.de>
 <c952a0cc-1b0c-474e-8e5a-d40303825d5a@clermont.in2p3.fr>
 <87pl3ktwsq.fsf@pengutronix.de>
 <0d87b14c-4696-46e1-bf37-6bbfa0f24b8d@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <0d87b14c-4696-46e1-bf37-6bbfa0f24b8d@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_055233_947447_3BF50FCC 
X-CRM114-Status: GOOD (  35.02  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: ARM: socfpga: enclustra-sa2: issue with I2C1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I don't know exactly why and how, but after re-doing everything multiple 
times, it finally worked!

Anyway, I have a new version of the handoff files with I2C1 enabled on 2 
HPS pins. Is it worth sharing with Barebox, or is it too specific?

Next, I'll try to enable a SPI master. Same question.


David



Le 27/04/2026 à 14:36, David Picard a écrit :
> Generate the handoff files manually: is it what the 
> bsp-create-settings script from Intel's embedded shell does? I did run 
> it.
>
> I understand that socfpga_import_preloader mostly only reformats the 
> files.
>
>
> Le 27/04/2026 à 14:25, Steffen Trumtrar a écrit :
>> On 2026-04-27 at 14:13 +02, David Picard 
>> <david.picard@clermont.in2p3.fr> wrote:
>>
>>> Too bad you don't have an idea. Sorry for misspelling your name,
>>>
>>
>> no problem ;)
>>
>>>
>>> I'm not sure it's related, but I get errors with the 
>>> socfpga_import_preloader
>>> script only if I use the --embedded-sdk option. I couldn't figure 
>>> out what this
>>> option changes.
>>> https://paste.debian.net/hidden/fffbb190
>>>
>>
>> Hm, the script is obviously pretty hacked together and not very error 
>> proof.
>> With the embedded-sdk provided, it generates the handoff-files 
>> without the
>> option, the handoff files need to be generated manually.
>>
>> Maybe the Python script in the SDK changed since adding this option 
>> and doesn't
>> copy the files that are stat'ed.
>>
>>
>> Steffen
>>
>>> David
>>>
>>> Le 27/04/2026 à 12:20, Steffen Trumtrar a écrit :
>>> > On 2026-04-27 at 12:09 +02, David Picard 
>>> <david.picard@clermont.in2p3.fr>
>>> > wrote:
>>> >
>>> > Hi,
>>> >
>>> >> Hi Stephen, thanks for your reply,
>>> >>
>>> >> Pins SDA and SCL, GPIO51 and GPIO52 respectively, are specified 
>>> with the I/O
>>> >> standard 3.3V LVCMOS and a drive strength of 2mA, which is way 
>>> more than
>>> >> needed,
>>> >> given my 10K pull-up resistors (3.3 / 10K = 0.33mA). I know that 
>>> 10K is
>>> >> bigger
>>> >> than the usual 2.2K, but probably not big enough to prevent any 
>>> change on the
>>> >> SCL line. I just see a perfect flat line when I probe the bus.
>>> >>
>>> >
>>> > :(
>>> >
>>> >> I compared iocsr_config_cyclone5.c and pinmux_config.c in the
>>> >> terasic-de10-nano/
>>> >> and enclustra-sa2/ directories. There are a lot of differences. 
>>> But the lines
>>> >> that changed in enclustra-sa2/ when I tried to enable the I2C1 
>>> bus are now
>>> >> the
>>> >> same as in the terasic-de10-nano/ directory, which probably makes 
>>> sense.
>>> >>
>>> >
>>> > Makes sence, yes and was what I hoped for. But, doesn't seem to 
>>> change
>>> > anything.
>>> >
>>> >> Does Barebox have to decipher every bit in those cryptic files?
>>> >>
>>> >
>>> > barebox knows nothing about the meaning of the iocsr registers. 
>>> Those values a
>>> > just written to the hardware and can't be changed afterwards.
>>> > AFAIK there still is no linux driver that might read and decipher the
>>> > settings.
>>> >
>>> > Sadly, I don't have any more ideas at the top of my head why it 
>>> doesn't work.
>>> > Everything sounds correct.
>>> >
>>> >
>>> > Best regards,
>>> > Steffen
>>> >
>>> >>
>>> >> David
>>> >>
>>> >>
>>> >> Le 24/04/2026 à 09:27, Steffen Trumtrar a écrit :
>>> >> > On 2026-04-23 at 14:00 +02, David Picard 
>>> <david.picard@clermont.in2p3.fr>
>>> >> > wrote:
>>> >> >
>>> >> > Hi,
>>> >> >
>>> >> >> Hello,
>>> >> >>
>>> >> >> @Stephen and Ian: I Cc you since I spotted you authored 
>>> commits related to
>>> >> >> Intel
>>> >> >> SoC FPGA pin muxing.
>>> >> >>
>>> >> >
>>> >> > long time ago ;)
>>> >> >
>>> >> >> I'm trying to enable the I2C1 bus on a Cyclone V-base module, 
>>> mounted on a
>>> >> >> base
>>> >> >> board. The I2C1 lines connect to a 2.54mm header, on which I 
>>> attached a
>>> >> I²C
>>> >> >> device with pull-up resistors at address 0x40.
>>> >> >> 
>>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
>>> >> I
>>> >> >> can't detect the I²C device, nor can I see any pulse on the 
>>> SCL line,
>>> >> which
>>> >> >> is
>>> >> >> constantly at +3.3V.
>>> >> >>
>>> >> >> I changed the pin muxing in Quartus, updated the handoff 
>>> files, changed
>>> >> the
>>> >> >> devicetree. The I2C1 bus is visible in Barebox and Linux. More 
>>> detail
>>> >> here:
>>> >> >>
>>> >> 
>>> https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c1-issue-no-activity-on-bus/352583
>>> >> >
>>> >> > I remember, that iocsr was 'underdocumented' to say the least...
>>> >> >
>>> >> > Wasn't it possible to change drive strength and those settings 
>>> or was that
>>> >> > with Xilinx/Zynq?
>>> >> >
>>> >> >> As documented on the Barebox website, I generated the BSP 
>>> files with the
>>> >> >> Quartus
>>> >> >> script bsp-create-settings and copied the handoff files to the 
>>> Barebox
>>> >> build
>>> >> >> directory. After that, I could see that 
>>> iocsr_config_cyclone5.c and
>>> >> >> pinmux_config.c had changed.
>>> >> >>
>>> >> 
>>> https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-handoff-files
>>> >> >>
>>> >> 
>>> https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/bsp-create-settings.html
>>> >> >> If someone could give me some hint, that would be really great!
>>> >> >
>>> >> > I see, that the Terasic DE10 Nano uses i2c1. Maybe compare the 
>>> changed
>>> >> iocsr
>>> >> > with those?
>>> >> >
>>> >> >
>>> >> > Best regards,
>>> >> > Steffen
>>> >> >
>>> >
>>
>
>



