Delivery-date: Tue, 22 Jul 2025 15:01:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueCct-002Z9x-1V
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 15:01:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueCcs-0007WN-Rm
	for lore@pengutronix.de; Tue, 22 Jul 2025 15:01:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3jB7s7LyetbuimPuOppI409GvnOKcAO/7V4kc2129eQ=; b=mArKmJPKEpMpy74a38HjpTSUlt
	A02mH3gzTCOi/15YcpAjfNa7uqeqitYdcs5p+nTi/WrPV6uTiKbtnnLzxvysoybrLH5ZGJhTtoDmt
	OBCyVhFhD+UmWuEvljd8vb6SW711U5mS45Fz8ZyNLNRHn0886HxsVbpvGoGm2r+G8doSCmBoyIAfA
	+I9n3SmzueP1O4msHpCKyFrErfIjugI6zDbvG+EtxiJ3eQsyr8vP8JmXCOYj8sJUKF2j1m5RB3Z5K
	vcn4rKxdCQfaEv6tMN0KBjEZhlYwwTzWXxl6nue4Dp6ufTAODHWpv6T8a5V3n1B9t5jZceGF8zfJH
	Q1uKXYpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueCcE-00000002Uzl-0g0H;
	Tue, 22 Jul 2025 13:01:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueBva-00000002OsV-3592
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 12:17:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueBvY-0000T6-3v; Tue, 22 Jul 2025 14:17:00 +0200
Message-ID: <15ecd1db-7a4f-4ba4-9ddd-27e4391ceee9@pengutronix.de>
Date: Tue, 22 Jul 2025 14:16:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB35323F18EB9CB31A85BCEEF0EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <DM5PR07MB35323F18EB9CB31A85BCEEF0EC5CA@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_051702_775417_5D2BD256 
X-CRM114-Status: GOOD (  15.25  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: handoff data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 7/22/25 13:08, Renaud Barbier wrote:
> On our LS1046A based board (v2022.03) we used to pass the results of memory tests in the PBL  through the OCRAM to the barebox load.
> I see there is handoff data support.
> 
> In my board lowlevel.c code, I have added the call:
> 
> handoff_add_arm_machine(0x12345678);

You should define a new handoff type for your custom info, e.g.:

#define HANDOFF_DATA_MEMTEST   HANDOFF_DATA_BOARD(0)

instead of overloading the (legacy) ARM machine id for something else.

> And then try to read it back from device_initcall:
> 
>  machine = handoff_data_get_entry(HANDOFF_DATA_ARM_MACHINE, &hsize);
> printf("machine = %ld, %p\n", hsize, machine);
> 
> However, both the machine pointer and size are set to 0.
> 
> Am I missing something in the process?

Handoff data is used for DT as well, so if you get to a functional
barebox, handoff is working...

As a sanity check, what happens if you move your handoff_add_arm_machine
behind handoff_data_add_dt() in barebox_pbl_start?

If that works, but your handoff_add_arm_machine in lowlevel.c doesn't,
can you share your code?

Cheers,
Ahmad

> 
> Cheers,
> Renaud
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



