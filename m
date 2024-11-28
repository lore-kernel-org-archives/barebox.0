Delivery-date: Thu, 28 Nov 2024 16:28:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGgRd-001V1Q-38
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 16:28:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGgRd-0001xR-TH
	for lore@pengutronix.de; Thu, 28 Nov 2024 16:28:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JqrTL1pw1oKg4wb0TtNEpBcaTG/r3tTiUTY/sEujIck=; b=uLqKHTcntAwRjPsF9aeN4YxO+N
	pf4ld39m0sV6D015FoQkZ/IV7RjSEolc6AFHpSyfQt+mphIwYTzkVLA+1SdR1du0hkjt/9AQr9DB2
	FWO+dPRqNL98jvTVcWI4di7bHM86eJt2jqwhpp3xm1uwDUX01G/yZ1yIlSuk7Zm6EQKpjrMC37NCJ
	TbVTucCgVUxvLXyHXN7udcLp2esDqkjpxppmeHAK0jv2qeWXTOnRFWHAwye0ny4iL5QWRap+q85vQ
	G5ndK33U/uuIZLs151Yi1b5/PdZG3A065+IpCrdMly5HUL8MAlZQgYSHtsMvlXNiNG0H7TsVGxDSZ
	jio9ysEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGgR0-0000000FtMP-427r;
	Thu, 28 Nov 2024 15:28:02 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGgPN-0000000FswH-2Icf
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 15:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1732807547;
	bh=w6MgPmdbJ/qdBgbnx8D0cWgoQJv0skaGrUqfZvaF2Lc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UPQXRFT0Wg4SBI/KtFuQ5Jp/I36stpChWJ6cDPtU28GYGsF2Zq3Nwht+9w+eq4VxT
	 374gnoiOR28Dc6kdmX2tUumxhKfHB7Ppv5ogYeyOAbSYlTkbe0ry+nWg8JOAAAHsPC
	 EXy76EKr8FzbWOqwgW+NQyUEIUYxvIA0H8RIyJcEo4jhOL0qvW1payy/Lg9Wvy9/9J
	 oORz6bNPQlsvvt5N9E3Ivr8AzSiA1YyadgakcE+R4bYuJOD3h9n2HeJW2DPT11OmLu
	 PsHHmtUfy1tcQrH5YTEfMDapNg+/85zR0CA+d42kxCulfL7bGAkTmsAmeMZWGOkKp3
	 tWg5/ASTNHGRg==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 551144017F;
	Thu, 28 Nov 2024 16:25:47 +0100 (CET)
Date: Thu, 28 Nov 2024 16:25:46 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0iLevP2fEpysKWk@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z0hbuZBvK2aLd5s1@hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_072621_740660_75A3B73D 
X-CRM114-Status: GOOD (  16.78  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 28, 2024 at 01:02:01PM +0100, Konstantin Kletschke wrote:
> 
> > I'd suggest you enable CONFIG_DEBUG_LL and look if you see at least a >
> > character on the serial console output by the MLO.
> > 
> > If you don't see it, try moving these lines:
> > 
> >   am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
> >   am33xx_enable_uart0_pin_mux();
> >   omap_debug_ll_init();
> >   putc_ll('>');
> > 
> > to the start of beaglebone_sram_init() and see if you get the > printed.
> > 
> > The point is making sure that barebox itself starts up before seeing where
> > it's getting stuck.
> 
> I will try that immediately.


I tried that.

make am335x_mlo_defconfig

Than I set:

CONFIG_HAS_DEBUG_LL=y
CONFIG_DEBUG_LL=y
CONFIG_DEBUG_OMAP_UART=y
CONFIG_DEBUG_AM33XX_UART=y
CONFIG_DEBUG_OMAP_UART_PORT=0

Then I removed the MTD driver, the old hack to set CONFIG_BAREBOX_MAX_IMAGE_SIZE 
to 0x2b400 somehow did not work, the image(s) did not boot at all. So
removing MTD allowed me to keep old 0x1b400 as SIZE and booted.

The I did 

make omap_defconfig 

and set

CONFIG_HAS_DEBUG_LL=y
CONFIG_DEBUG_LL=y
CONFIG_DEBUG_OMAP_UART=y
# CONFIG_DEBUG_OMAP3_UART is not set
CONFIG_DEBUG_AM33XX_UART=y
CONFIG_DEBUG_OMAP_UART_PORT=0

copied both images and booted, wich works.
At the start I see a glitch on the serial console like this:

~�W-�,-H]
                           ���k׋�ҫ�.LWC�C�C��arebox 2024.10.0-00150-g7a3cb7e6fd63-dirty #1 Thu Nov 28 14:35:15 CET 2024


Other baud rate?

However, reset via "reset" or S1 does not reveal a ">" or something. So
I moved the 4 lines in arch/arm/boards/beaglebone/lowlevel.c directly
below "void *fdt;", sadly this seems to not boot at all then, I see no
output on console anymore and the one blinking LED when barebox is idle
does not blink.

Regards
Konsti


-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



