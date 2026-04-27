Delivery-date: Mon, 27 Apr 2026 12:10:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHIvU-00GuET-0c
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 12:10:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHIvT-00075p-HJ
	for lore@pengutronix.de; Mon, 27 Apr 2026 12:10:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TgGZQvmLLLuS4pCHYuSWEVhqjrcc6esK7dEfFa8CKVU=; b=Csp+EzdNZ3c2gWk8r8z0ZB/dU9
	M8N254zIWW8tldh+wns93nQ4ydU4k3qRC0Q8DAYDWWIL+NcGEaEY1zMtfdPJOD9Cv7Ox0IyQS7BRr
	oNZS7Btaevx6zI2kFsrGevtvZwl7TamaAWG6wzVnbhQowPSVcNpkHxp/2fn7+ag4HBjUDOiVl3Rvt
	d4KaaXGtYjkbpbMobgvi18eXQ8dAMfXi3K68RLvhdpe72gXBzwsYUGxBOZHHe5ManL6dciAvWMd6u
	lsZ1X8c6icJtt6hOPJyLcl+RjuTmmCzB251klWzMq5l/eTusgHO2MzqQAfkLbE0sui6FEDcFuaSM1
	gyuTydIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHIuq-0000000Gf2n-3uiU;
	Mon, 27 Apr 2026 10:10:12 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHIum-0000000Geyu-3MbU
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 10:10:11 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id CBB54800379;
	Mon, 27 Apr 2026 12:09:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 cczrelay04.in2p3.fr CBB54800379
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=in2p3.fr;
	s=20260401; t=1777284569;
	bh=TgGZQvmLLLuS4pCHYuSWEVhqjrcc6esK7dEfFa8CKVU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iQzEHDy02esqCTVVSDkmAY17dpRp/XLIDjaIXUf9dQLwUenWqfzVWyILz5hw9qnY5
	 3uq7cb/wNx3dcRbTfN9Z3N2tLGNTQnK7GMB1vZixt0AO9fWZ+EqAI5eBHZWrrWbvUZ
	 N7tBRXcA+yjzcy2INNWYJw/qS+hnvTyeyUkgrBmsb3RR6L9F0mPx6eJEEBQrfChbP1
	 Vcom+MA+XTEYmk7x7KqKWWcn2tCGyPeuWs+VsoIMIolQYIzUFar6DGvqHaxWaUU+A0
	 B9iVs5A6nOjNjW0wRmTlGAiuTEfCU2uiqXHuf3NOR9JLJ/VuliSesXPtTJmCTVYgS3
	 dTV39k/4tUdUQ==
Message-ID: <09c2d997-08e5-484a-a7ea-3204b304f3b8@clermont.in2p3.fr>
Date: Mon, 27 Apr 2026 12:09:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: ML_Barebox <barebox@lists.infradead.org>, abbotti@mev.co.uk
References: <aeaec45e-ef30-462b-a28f-53d2b82d6387@clermont.in2p3.fr>
 <87mrysizs9.fsf@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <87mrysizs9.fsf@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_031009_250416_82438DA1 
X-CRM114-Status: GOOD (  22.46  )
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

Hi Stephen, thanks for your reply,

Pins SDA and SCL, GPIO51 and GPIO52 respectively, are specified with the 
I/O standard 3.3V LVCMOS and a drive strength of 2mA, which is way more 
than needed, given my 10K pull-up resistors (3.3 / 10K = 0.33mA). I know 
that 10K is bigger than the usual 2.2K, but probably not big enough to 
prevent any change on the SCL line. I just see a perfect flat line when 
I probe the bus.

I compared iocsr_config_cyclone5.c and pinmux_config.c in the 
terasic-de10-nano/ and enclustra-sa2/ directories. There are a lot of 
differences. But the lines that changed in enclustra-sa2/ when I tried 
to enable the I2C1 bus are now the same as in the terasic-de10-nano/ 
directory, which probably makes sense.

Does Barebox have to decipher every bit in those cryptic files?

David


Le 24/04/2026 à 09:27, Steffen Trumtrar a écrit :
> On 2026-04-23 at 14:00 +02, David Picard 
> <david.picard@clermont.in2p3.fr> wrote:
>
> Hi,
>
>> Hello,
>>
>> @Stephen and Ian: I Cc you since I spotted you authored commits 
>> related to Intel
>> SoC FPGA pin muxing.
>>
>
> long time ago ;)
>
>> I'm trying to enable the I2C1 bus on a Cyclone V-base module, mounted 
>> on a base
>> board. The I2C1 lines connect to a 2.54mm header, on which I attached 
>> a I²C
>> device with pull-up resistors at address 0x40.
>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/ 
>>
>>
>> I can't detect the I²C device, nor can I see any pulse on the SCL 
>> line, which is
>> constantly at +3.3V.
>>
>> I changed the pin muxing in Quartus, updated the handoff files, 
>> changed the
>> devicetree. The I2C1 bus is visible in Barebox and Linux. More detail 
>> here:
>> https://community.altera.com/discussions/fpga-device/cyclone-v-hps-i2c1-issue-no-activity-on-bus/352583 
>>
>>
>
> I remember, that iocsr was 'underdocumented' to say the least...
>
> Wasn't it possible to change drive strength and those settings or was 
> that with Xilinx/Zynq?
>
>> As documented on the Barebox website, I generated the BSP files with 
>> the Quartus
>> script bsp-create-settings and copied the handoff files to the 
>> Barebox build
>> directory. After that, I could see that iocsr_config_cyclone5.c and
>> pinmux_config.c had changed.
>> https://www.barebox.org/doc/2025.05.0/boards/socfpga.html#updating-handoff-files 
>>
>> https://www.intel.com/content/www/us/en/docs/programmable/683187/20-1/bsp-create-settings.html 
>>
>>
>> If someone could give me some hint, that would be really great!
>
> I see, that the Terasic DE10 Nano uses i2c1. Maybe compare the changed 
> iocsr with those?
>
>
> Best regards,
> Steffen
>



