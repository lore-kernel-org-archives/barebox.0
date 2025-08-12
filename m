Delivery-date: Tue, 12 Aug 2025 18:20:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrk5-009iz1-2R
	for lore@lore.pengutronix.de;
	Tue, 12 Aug 2025 18:20:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrk5-0006D8-0J
	for lore@pengutronix.de; Tue, 12 Aug 2025 18:20:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u2pNl7s5DnrzN2pOpNnxtDW8jLTcOVrLCMTNbBFLs0E=; b=iFSFtQyILz+FTCoqm6ILyDqKO/
	Jz5TnMmBSpkdfVJQrrirQ0BbICbA3PMl0dyATx1U6Jn90wNreVMVVvx8rzApAAFKlYZ7KCKoQorGs
	ygD/CAMosbLYmkQrqu572tP7oSMbXtV1d5lwxBflOPOB+UmAdxFCIgQ7GDQH1x0NbR+QzFld+Jyki
	Tkt/thOh6WpVvA5pUWyPZc1GACKYiIvOI34EnpAWfEWGzjiE4yFsdL4bcpX/qccJxK2Hds7kvNrHH
	OTezHdDrDWhoIXboVtpz27wMOji/Hi6/69KgbQ9S732pPz4AmVqkx/z9SA50IQ0QWT1OOw4zqVrWV
	Bsnj2LLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrjd-0000000BJoX-2MZv;
	Tue, 12 Aug 2025 16:20:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmt1-0000000AZZj-3zkx
	for barebox@lists.infradead.org;
	Tue, 12 Aug 2025 11:09:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ulmt0-0004l3-46; Tue, 12 Aug 2025 13:09:46 +0200
Message-ID: <55910e27-7725-4486-ac00-b7b18f451d4c@pengutronix.de>
Date: Tue, 12 Aug 2025 13:09:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
 <20250811122824.1667791-44-a.fatoum@barebox.org>
 <aJsZ-ESfR2_y-via@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aJsZ-ESfR2_y-via@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_040947_998700_DE66CEC1 
X-CRM114-Status: GOOD (  16.08  )
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
Subject: Re: [PATCH 43/44] commands: introduce bfetch command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 12.08.25 12:39, Sascha Hauer wrote:
> On Mon, Aug 11, 2025 at 02:28:23PM +0200, Ahmad Fatoum wrote:
>> Inspired by U-Boot's addition of the ufetch command and the neofetch
>> utility for Linux[1], add a similar command to barebox.
>>
>> The command is meant to simplify showing off a barebox port with some
>> colored ASCII art. The usual alternative is a screenshot of a barebox
>> boot up and prompt, which for a fresh port usually will contain some
>>> = warning messages, which is not as pleasant to look at compared to:
>>
>> :##:                                   :##: none@virt64
>> -%%:  =#####.                          :%%- -----------
>>       #@@@@@.                               Kernel: barebox 2025.07.0-<snip>
>>       *@@@@@.                               Model: ARM QEMU virt64 (linux,dummy-virt)
>>       *@@@@@.                               Config: arm64 multi_v8_defconfig
>>       *@@@@@.      :=##=.                   CPU: Cortex-A57 r1p0 at EL1
>>       *@@@@@.   :+%@@@@@@#+:                Memory: 1 GiB
>>       *@@@@@:-*@@@@@@@@@@@@@%*-.            Uptime: 1 second
>>       *@@@@@@@@@@@@@@%%@@@@@@@@@#=.         Shell: Hush with 155 commands and 8 aliases
>>       *@@@@@@@@@@@%**+=+*%@@@@@@@@@%+.      Consoles: input0 cs0 netconsole-1
>>       *@@@@@@@%#*++++++===+*#%@@@@@@@+      Features: FW_CFG HWRNG PCI VIRTIO
>>       *@@@@@#*+++++++++++++===+#@@@@@+       barebox: /dev 9P BTHREAD DEEP RATP W^X
>>       *@@@@@*+++++++++++++++++=*@@@@@+      Network: 1 interface, 1 up
>>       *@@@@@*+++++++++++++++++=*@@@@@+        eth0: 0.0.0.0/0
>>       *@@@@@*+++++++++++++++++=*@@@@@+      Hardening: init-stack
>>       *@@@@@*+++++++++++++++++=*@@@@@+      Devices: 85 with 17 bound
>>       *@@@@@*++++++++++++++++==*@@@@@+      Drivers: 220 drivers across 16 busses
>>       *@@@@@%#*+++++++++++===+*%@@@@@+      Storage: 1x MTD (128 MiB)
>>       *@@@@@@@@%#*++++===+*#%@@@@@@@@+      Environment: 28 bytes
>>        -*%@@@@@@@@@%*++*%@@@@@@@@@%+:       Firmware:
>>           :+#@@@@@@@@@@@@@@@@@@#=:            PSCI: v1.1 over hvc
>>              .=*@@@@@@@@@@@%*-.
>>                  -+%@@@@%+:
>> -@@-                :==.               :@@-
>> :**.                                   .**:
> 
> Commands like cpuinfo and uptime are not selected by bfetch, but used
> unconditionally, so we might get some not-so-fancy
> 
> cpuinfo: No such file or directory
> uptime: No such file or directory
> 
> messages in the bfetch output.

Oh, that's decidedly not fancy. I wil suppress the error message when in structio
context for v2.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


