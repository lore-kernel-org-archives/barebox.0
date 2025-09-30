Delivery-date: Tue, 30 Sep 2025 13:48:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3YqT-002lZf-31
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 13:48:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3YqT-0002v1-Bm
	for lore@pengutronix.de; Tue, 30 Sep 2025 13:48:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0pSxeBO0fd6FtqbTB3+evqveTZeEHV7NVFzcmYY8MjQ=; b=L0lvTxLyRhS/Sf5brzZcAJVdKa
	L72c5EDHFZfMFlv5vEYzgRAghOy8m/6wgiHhavQrUF09J8+U6FsOyGZCXCHoLmwhq6qZc4a7MqP8I
	mPJ+JW8+X50+ev+89/N/7z9H1mkStOY9GyWt+U7aMGeaYNr5gyzc/mnakHdBoDcOr150MyovRV6W5
	8YuhO6AQf9drzbYcXtPWAHzIJhcx7avKfdVRXLtEuiVRI5uDirS0NmQdyOj2bR6BpEQAsREaw1Sm3
	2aI4YSKXt7HRjyRxBC3vKlG62WrbJJZ5JuKPqTIHOugx0RFuaSuenuS6qd/o7zKYxuWTwixgJ68lg
	VzLSf+Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Ypz-00000005Ayd-1nim;
	Tue, 30 Sep 2025 11:48:07 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Ypv-00000005AyF-2mDb
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 11:48:06 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58UBlq1T008468
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
	Tue, 30 Sep 2025 13:47:57 +0200
Message-ID: <90710eb2-7fa6-4d13-8877-fbb9fab04913@clermont.in2p3.fr>
Date: Tue, 30 Sep 2025 13:47:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
 <175922885404.3633259.17777224412857358925.b4-ty@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <175922885404.3633259.17777224412857358925.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_044803_976710_6D49CA1D 
X-CRM114-Status: GOOD (  11.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] ARM: boards: add support for Enclustra Mercury
 SA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I was about to submit v3, with the changes you requested.

I was waiting for you to decide wether I keep the fallback MAC 
addresses, as suggested by the manufacturer manual that I shared, or if 
I drop them and let Barebox set a random one.

David

Le 30/09/2025 à 12:40, Sascha Hauer a écrit :
> On Thu, 25 Sep 2025 13:59:07 +0200, David Picard wrote:
>> Add support for the Enclustra Mercury+ SA2, a Cyclone V based
>> SoC FPGA.
>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
>>
>> The SoM provides a 64MiB NOR QSPI flash, DDR3, Ethernet PHY, RTC.
>>
>> The Cyclone V features a hardware ARM core (aka HPS) that can boot
>> from SD card (MMC), QSPI flash. This patch series focusses on MMC.
>>
>> [...]
> Applied, thanks!
>
> [01/10] Add handoff files
>          (no commit info)
> [02/10] Add Enclustra Mercury+ SA2 module
>          (no commit info)
> [03/10] ARM: dts: socfpga: use upstream SA2 device tree
>          (no commit info)
> [04/10] ARM: dts: socfpga: adapt upstream SA2 device tree
>          (no commit info)
> [05/10] boards: enclustra-sa2: read MAC address from EEPROM
>          (no commit info)
> [06/10] boards: enclustra-sa2: configure SI5338
>          (no commit info)
> [07/10] boards: enclustra-sa2: enable SI5338
>          (no commit info)
> [08/10] lib: add crc16 support
>          https://git.pengutronix.de/cgit/barebox/commit/?id=83865ed69b4d (link may not be stable)
> [09/10] nvmem: add support for Atmel sha204(a)
>          https://git.pengutronix.de/cgit/barebox/commit/?id=0837819622a2 (link may not be stable)
> [10/10] boards: enclustra-sa2: read S/N from EEPROM
>          (no commit info)
>
> Best regards,



