Delivery-date: Wed, 25 Jan 2023 09:05:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKamk-001HdW-UB
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 09:05:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKami-0003CS-6z
	for lore@pengutronix.de; Wed, 25 Jan 2023 09:05:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fRKeA//cbnKQPvyvtyn0HSvI0M+Yn55SMdT6peUNJfI=; b=c3udnKqflvIReYu6QdgMPHlcpD
	Fm7n3re1TXp7cSISR9tFznT3q/kiBg+DGWA+2vDY0Y5hmGUPNoSXWBYOkwD+4wQfDQ5DG1Fy2wnTt
	lKgzAN3fBwqmpGqbEhgHITVqHDt5mO9roYF7J4CQZY4Hns/op137k+2L1ihUobBstz2Ldsrilu9rX
	w/T2UsgdjM+TFzIzDgPVJeV4AFoA6rin7kzKyOtXE2FQTorocmRe0YLEYX4vgGf5R4YqdVICOHrZK
	8nlOsMvEHucJj2YKBkL7SundmBL5G1wGvyb14KiSaQqeltYvzVV5u22wPyezry+uCNHl+ZjaxmaNl
	WXCHPaJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKalS-006Jki-Hv; Wed, 25 Jan 2023 08:04:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKalO-006Jjq-2z
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 08:04:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKalM-00034S-6V; Wed, 25 Jan 2023 09:04:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKalK-0001qz-UP; Wed, 25 Jan 2023 09:04:06 +0100
Date: Wed, 25 Jan 2023 09:04:06 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125080406.GW24755@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9AlCQieCBIEOjs5@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_000410_144975_26C5EC75 
X-CRM114-Status: GOOD (  33.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 05:35:53AM +1100, John Watts wrote:
> On Mon, Jan 23, 2023 at 10:33:05AM +0100, Sascha Hauer wrote:
> > And here is the point where you have to request that the EEPROM is
> > actually availabe to support the deep probe mechanism. Before reading
> > the EEPROM add a call to:
> > 
> > 	of_device_ensure_probed_by_alias("eeprom0");
> > 
> > Nowadays the read-MAC-address-from-EEPROM thingy would likely be done
> > using nvmem cells which would boil this code down to device tree changes
> > only. If you're feeling brave you could change this, I won't insist on
> > it though.
> > 
> > Sascha
> 
> Hey Sascha,
> 
> I did some refactoring today based on your suggestions and now have this code:
> 
>         rc = of_device_ensure_probed_by_alias("eeprom0");
> 
>         if (rc < 0) {
>                 pr_err("Unable to probe Novena EEPROM: %s\n", strerror(-rc));
>                 return NULL;
>         }
> 
>         rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
> 
> This gets me this bootup sequence:
> 
>   of_platform_device_create: register device 21a8000.i2c@21a8000.of, io=0x021a8000
>   register_device: 21a8000.i2c@21a8000.of
>           probe-> 21a8000.i2c@21a8000.of
>   imx-iomuxv3 20e0000.pinctrl@20e0000.of: set state: /soc/bus@2000000/pinctrl@20e0000/i2c3grp-novena
>   __request_region ok: 0x021a8000:0x021abfff flags=0x0
>   of_get_named_gpio_flags: cannot parse sda-gpios property: -2
>   of_get_named_gpio_flags: cannot parse scl-gpios property: -2

That's expected because you haven't specified sda-gpios or scl-gpios.
The message is only printed at debug level after all.

>   <NULL>: <i2c_fsl_set_clk> I2C_CLK=66000000, REQ DIV=660
>   <NULL>: <i2c_fsl_set_clk> IFDR[IC]=0x39, REAL DIV=768

Shouldn't be <NULL>. I have sent a patch for this a moment ago.
This is not your problem though.

>   register_device: i2c0
>   register_device: es83280
>   es83280: registered on bus 0, chip->addr 0x11
>   register_device: 24c5120
>               probe-> 24c5120
>   of_get_named_gpio_flags: cannot parse wp-gpios property: -2
>   at24 24c5120: Registering nvmem device eeprom0
>   register_device: eeprom00
>   at24 24c5120: registered on bus 0, chip->addr 0x56
>   eeprom00: read ofs: 0x00000000 count: 0x00000014
>   i2c0: master_xfer[0] W, addr=0x56, len=2
>   i2c0: master_xfer[1] R, addr=0x56, len=20
>   i2c0: timeout waiting for status set 0x20, cur status: 0x93
>   at24 24c5120: read 20@0 --> -95 (1046280961)

-95 (Operation not supported) is the return value of i2c_recover_bus()
when no bus recovery is implemented. The return value is confusing, I
sent a patch changing this to -EBUSY instead as the kernel does.
This also doesn't point us to the problem.

>   Unable to read Novena EEPROM: Connection timed out
> 
> After the shell boots I'm able to read /dev/eeprom0 just fine.

It looks like something is not initialized correctly yet. Normally
the usual suspects are pinctrl, clocks or regulators. Each of them
should be tied in by the deep probe mechanism as needed already, at
least when it's properly registered in the device tree. Clock looks
correct (66MHz), for the (pfuze) regulator I can't find anything in the
board code that configures something there later. You could verify
that the pinctrl has been configured already by activating the debugging
in drivers/pinctrl/imx-iomux-v3.c.
It could be something that pulls SDA low, but I don't have an idea why
it should work later.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


