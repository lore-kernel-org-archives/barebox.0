Delivery-date: Tue, 03 Dec 2024 19:29:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIXe1-003bFP-0d
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 19:29:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIXe1-00041S-4E
	for lore@pengutronix.de; Tue, 03 Dec 2024 19:29:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NjV+wQhlmRo2qV4un31eYWj36WRKaa3l2WcgSZS21GQ=; b=bh2zQ2GTDZnPyv8GPdxOU3lWYm
	nzFhfxhy2ebCzpl5NR6P6pSqjh93uFfibYL6P30X3EvQ7Oupi8Ffrs19rM1gBCg0IgOjWnp8WZCtt
	SRKP8L3rUvEwa0dT/bop7XvX4VMUt+35ynKOnQHWs73SLBl4WGMqeRFlj7LPQAwzyuCmEv3QME3Bg
	YwB2JufglWC+5AenYjuKBvEujQGOVnXdYwvEhqUX1GmKmByvVwyXeZ3cUAoOfMEzbe+HrW9OePztV
	uB0elqWp4qGTUChx/NHcrYW4RQCS2zEOr7qXzP4+JQ8hR2dnVQF/xtkTyIrjCzysHHpTS3OWGl6Ds
	jWx/+coQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIXdQ-0000000AN5F-2rVf;
	Tue, 03 Dec 2024 18:28:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIXdN-0000000AN4r-24JQ
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 18:28:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIXdL-0003ma-PX; Tue, 03 Dec 2024 19:28:27 +0100
Message-ID: <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
Date: Tue, 3 Dec 2024 19:28:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z03A9rr21q320J0t@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_102829_527844_017ABC03 
X-CRM114-Status: GOOD (  23.00  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.12.24 15:15, Konstantin Kletschke wrote:
> On Mon, Dec 02, 2024 at 01:41:26PM +0100, Ahmad Fatoum wrote:
> I thought about the PMIC handling. I see barebox does not do anything
> with it, relies on reset default and sets CPU speed to 500MHz in
> lowlevel.c:
> 
> am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);
> 
> Which is totally reasonable, the voltage is 1,1V then in this mode after
> powerup.
> 
> u-boot seems (I am not 100% sure) to set 1,3V but goes 1000MHz, which is
> reasonable too. So there is a difference but not a fatal one.
> 
> May I kindly aask how to properly enable the LL debugging?
> 
> I do "make am335x_mlo_defconfig", disable CONFIG_MTD and set 
> 
> CONFIG_DEBUG_LL=y
> CONFIG_DEBUG_OMAP_UART=y
> CONFIG_DEBUG_AM33XX_UART=y
> CONFIG_DEBUG_OMAP_UART_PORT=0
> 
> and compile a new MLO and copy it over. Does the other part barebox.bin
> need to be handled the same?

You can enable it for barebox.bin too, but enabling it for MLO only
should work too.

> The normal serial console I use is attached to UART0, is it save to use
> UART_PORT 0 here also?

Yes, that would be my expectation.

> This starts well on cold boot, I get some additional non readable chars
> at startup, like this:
> 
> 2~�W-�,-H]
>           ���k׋�ҫ�.LWC�C�C��arebox 2024.10.0-00152-g53c99b9f550b-dirty #15 Mon Dec 2 15:07:37 CET 2024

Hmm, CONFIG_BAUDRATE is set correctly?

> On "reset" or S1 I get no output at all, like without LL debug.
> 
> I will try to move the 4 lines in lowlevel.c like you suggested...

If it doesn't work at a later place, it won't work when you move it
earlier. I have a BBB here, so I can give enabling DEBUG_LL a try
too if you get stuck.

Cheers,
Ahmad

> 
> Regards
> Konstantin
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


