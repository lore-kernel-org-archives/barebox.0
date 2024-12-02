Delivery-date: Mon, 02 Dec 2024 15:16:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI7EH-0037D8-2U
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 15:16:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI7EH-000884-K6
	for lore@pengutronix.de; Mon, 02 Dec 2024 15:16:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SnzDdF3hhrYa+4E8N4OUSyRKyRGxSmUgTRYw2TNxbDk=; b=dwmKizKs61yiSIlV2OGmAIR1GO
	pbOK2xawwVTydsM87KkYTFxuJW0cbAHq7benxMuTkG85EPaus6yigZwn0fYySi5J1Qd+p+62LAGvx
	SXBcgNwQGGOPxSQ8VZqx5Y1IIj//xza5lMSOj/UM4/6SqKsuqaFNlR6DdMt7Lp3IkmX+hyzakeGk0
	UrrrGR21BnmmHsZlr76GKxuknsARSm/7GGJpTF9EmPw+UZnpqimkBWwucKX2FWe/GSrc7rhHttNg3
	TnW3hxod4B7wxzoIkVKcRNUWQPYkuPhUaQozSgDerUQKArSoCJnHgGCcl3lNJO9oEkqXRGlGSG/2G
	AwX08v4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7Dl-00000006OmP-35eM;
	Mon, 02 Dec 2024 14:16:17 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7DS-00000006Oii-1gu9
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 14:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733148919;
	bh=Q1ta4ZsTyB0oldrwytXp1Q4w4MJtMc/qwHtq9YR3s2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WaeXf3UN/miW9PP7JW04JcNg/f0DfM9nDb1gm9hAm+D10aLy0X3udgp/JY1drM4hd
	 jMbntyBctLHqfKAJSpwMwHSjD2yAgixplCnJzpBde2V9nXnUngBc0lF15vpSzZvoXf
	 dOkOwZ4JeL4/NpPh+fNiTTQS3/hgLNpA18KQl98hXT8m1TSeauqLMgWLMEM+3WKuuh
	 85L6Ao+jkDooV7U4uPBKOJqkPEirgkFTiGVdtyImSsOw1IR+80TY0/5g8fDKuej9YV
	 uCVmS0qdsMu2GRtdgeAe2pPAubmKg/qy9lxG0iYnhC+fbA52mVAe3HsVgMnGTetOWv
	 khm0pj5/DLC0A==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 76E8E401A2;
	Mon,  2 Dec 2024 15:15:19 +0100 (CET)
Date: Mon, 2 Dec 2024 15:15:18 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z03A9rr21q320J0t@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_061558_878169_31FD4461 
X-CRM114-Status: GOOD (  19.45  )
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
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 02, 2024 at 01:41:26PM +0100, Ahmad Fatoum wrote:
> Hello Konstantin,

Hello Ahmad,

> > Changed CONFIG_BAREBOX_MAX_IMAGE_SIZE from 0x1b400 to 0x2b400
> 
> Why do you do this step? 0x1b400 == 109KiB, which is chosen, because the MLO
> needs to fit into the On-Chip SRAM of the AM335x.

Well, the current master of barebox does not fit actually, if I do "make
am335x_mlo_defconfig" and "make" I end up with Error

images/start_am33xx_afi_gf_sram.pblb size 112288 > maximum size 111616

I read some information about too much features and if I read correctly
there was today traffic on this mailing lit about dealing with this
problem. I read in the internet somewhere about some guy increasing this
size and going well...

> Increasing the size won't magically increase RAM size, but it may result
> in a truncated MLO being loaded into memory or worse: barebox overwriting
> memory and MMIO that it shouldn't be touching.

... which was not a good idea for me adapting this, I was not aware this
is physically tied to internal SRAM. Oops.

> Do you also change this when compiling your normal image?

No way! Only changes in environment in a production version 2022.04.0.
To deal with debugging and code changes and faster deployment I have
additionally downloaded current master git. In the latter one I do "make
am335x_mlo_defconfig" but after that I enter "make menuconfig" and
disable "CONFIG_MTD" resulting in a successful compile.

Both versions, the production 2022.04.0 and the current master
(defconfig, disabling MTD) behave
the same: On most BBB devices resetting at barebox prompt via "reset" or
pressing S1 works reliable any time, on some (one digit percentage)
never.

I thought about the PMIC handling. I see barebox does not do anything
with it, relies on reset default and sets CPU speed to 500MHz in
lowlevel.c:

am33xx_pll_init(MPUPLL_M_500, DDRPLL_M_400);

Which is totally reasonable, the voltage is 1,1V then in this mode after
powerup.

u-boot seems (I am not 100% sure) to set 1,3V but goes 1000MHz, which is
reasonable too. So there is a difference but not a fatal one.

May I kindly aask how to properly enable the LL debugging?

I do "make am335x_mlo_defconfig", disable CONFIG_MTD and set 

CONFIG_DEBUG_LL=y
CONFIG_DEBUG_OMAP_UART=y
CONFIG_DEBUG_AM33XX_UART=y
CONFIG_DEBUG_OMAP_UART_PORT=0

and compile a new MLO and copy it over. Does the other part barebox.bin
need to be handled the same?
The normal serial console I use is attached to UART0, is it save to use
UART_PORT 0 here also?

This starts well on cold boot, I get some additional non readable chars
at startup, like this:

2~�W-�,-H]
          ���k׋�ҫ�.LWC�C�C��arebox 2024.10.0-00152-g53c99b9f550b-dirty #15 Mon Dec 2 15:07:37 CET 2024

On "reset" or S1 I get no output at all, like without LL debug.

I will try to move the 4 lines in lowlevel.c like you suggested...

Regards
Konstantin


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



