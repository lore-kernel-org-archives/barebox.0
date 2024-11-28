Delivery-date: Thu, 28 Nov 2024 12:19:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGcYU-001Qkf-2T
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 12:19:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGcYU-000556-JB
	for lore@pengutronix.de; Thu, 28 Nov 2024 12:19:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jkc7XPiXkGTj+iFuRd268t1ipLwViM3eFbzLL/l/9yM=; b=V2tItKZK1N5fhAmaCPxARaW918
	LhBcNa2dFACclVCQtZazZweH3wiuVrE9z0QojwOq3XRPm0E9aEGRVBSi38PmRixoX5h+vJohDLYwS
	abaPS8eFnPdaDzXgf1FS/PfKn7EdRwn58MFJNXH6GD1ufOuM2bVkusUVU7rsOJjiUF/7yndEp5NG2
	VIAhuOt/X8tlphxqEkoB8XL1cY6nWfTgElknp7i10OnL6+hgo/WG8lotolcuVbHsKv56DGv4mFcm1
	NnIRksCCw0/LjLMMUJ4kVv5ccIZsku95JrCWF0D1VNB+q96HRb/k1HzfifwdXsVZg3yyTGhRIUQYW
	w63XqNVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGcXq-0000000FLYc-0vsj;
	Thu, 28 Nov 2024 11:18:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGcXn-0000000FLXP-2Wq6
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 11:18:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tGcXl-0004pv-NN; Thu, 28 Nov 2024 12:18:45 +0100
Message-ID: <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
Date: Thu, 28 Nov 2024 12:18:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z0g74s98_Pz98tC5@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_031847_645707_DA55B802 
X-CRM114-Status: GOOD (  34.30  )
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
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 28.11.24 10:46, Konstantin Kletschke wrote:
> On Thu, Nov 28, 2024 at 10:23:10AM +0100, Ahmad Fatoum wrote:
> 
>> I assume this should be v2022.04? -dirty means you have local patches
>> on top. Do any of them touch SoC-specific, board-specific parts
>> like clock or power?
> 
> Yes, it is "barebox 2022.04.0-dirty #1 Tue Sep 10 08:45:54 UTC 2024".
> The patches we apply do not touch any clock or power, we touch:
> Environment, kernel cmdline, watchdog settings, bootchooser config, 
> autoabortkey. Config stuff.
> 
>> What changed over the last week on the software side? I understand barebox
>> stayed the same? Is the kernel still the same?
> 
> We changed nothing. I use to ship this barebox version with kernel for a
> couple of months. Last week we only ramped up quantity but the fails are
> so high in percentage it should had happened a couple of times before.

Are you still building with the same toolchain?

>> On affected hardware: Does this happen always or only some times?
> 
> Always. Easy reproducable.
> Meanwhile I realized on affected BBBs it can be reproduced this way:
> 
> Boot, hit Ctrl-C to stop barebox at prompt.
> Hit S1 button which is wired to NRESET_INOUT ball A10 (its not S2 as I
> initially wrote, S1).
> System is stuck/frozen/dead.

So repeating these steps on some boards never shows any issues and on
some others it always shows issues?

>> This sounds very similar to the issue fixed in commit 9c1a78f959dd
>> ("Revert "ARM: beaglebone: init MPU speed to 800Mhz""), but that's already
>> included in v2022.04.0, hence the question if you have patches that
>> do anything similar.
> 
> Sounds interesting, I will take a look. As said, we patch no clock
> voltages or something like that.

Ok.

>> Yes, but it sounds strange that only now these problems pop up?
> 
> Yes. Last week we started to experience this problem in production, we
> have ~200 working BBBs, ~20 have this problem. The batch worked
> flawlessly but suddenly a couple of broken BBBs kinda heaped one day,
> now sometimes this happens.
> 
> I am even not so shure if software is to blame or if the hardware is or
> has become glitchy, but falsinh stock u-boot still is able to
> reset/restart on its own on these devices.

My guess would be an incompatibility between the settings in the PMIC
and what barebox configures. barebox doesn't touch the PMIC and tries
to use clock rates that should be safe regardless of what changes Linux
did to the PMIC.

U-Boot, depending on version, may be reprogramming the PMIC to allow
for higher clock rates that barebox doesn't currently go for and this
might be related to the issues you are seeing.

>> Besides checking what changed, you should check if Linux is playing
>> around with the voltages powering the SoC and if it does, disable that
>> to see if it improves the situation.
> 
> Sadly (or gladly?) linux is not involved on affected BBBs. Boot, stop in
> bootloader, hit S1, system freezes.

So this happens even after a completely cold reset?

>> Your barebox restart handler is probably am33xx_restart_soc (named
>> "soc" in reset -l output).
> 
> I will poke around, never in my life was dealing with reset code :-)

I'd suggest you enable CONFIG_DEBUG_LL and look if you see at least a >
character on the serial console output by the MLO.

If you don't see it, try moving these lines:

  am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
  am33xx_enable_uart0_pin_mux();
  omap_debug_ll_init();
  putc_ll('>');

to the start of beaglebone_sram_init() and see if you get the > printed.

The point is making sure that barebox itself starts up before seeing where
it's getting stuck.

Cheers,
Ahmad

> 
> Regards
> Konsti
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


