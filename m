Delivery-date: Tue, 10 Dec 2024 22:52:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tL8A3-006X3u-0y
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 22:52:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tL8A3-0005pe-86
	for lore@pengutronix.de; Tue, 10 Dec 2024 22:52:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9hE4vzt8w/n4Ds7twOY2CQMkcp18arxV2l2icpReetk=; b=h9Bjv4QgR1IE57W6ZpA69MfEU0
	klTGeS0aVC4TmXd+lq3gHUl7UQvKiqDduIysNXv70TmqFtEar9rXUex0hakCPEWRy7Yfy162LZ3L+
	52X9IKu9BeOhl75Lne2FIekKYtGVJITDoDSkQmwrmjXSw4+OBeIBknY64oSTlnWuLhVUS7SwIUAVv
	rz87RWNKWgO+jynFh8UK9OXL3YCLSfYcEsXfP6LkeaDJrRPaD4G3xKM8BWxI5TWe51A0TcV/xGZlz
	FPWy8NYB9azrU/+68OrFOpgj+rJWfudiqKY2tHHGq/CCzREyFKQS2xpZXN051usQK+p6U9eWAhbpi
	P771rXjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL89K-0000000CrhZ-3oKD;
	Tue, 10 Dec 2024 21:52:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL89G-0000000Crgh-3ilB
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 21:52:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tL89E-0005g4-Vk; Tue, 10 Dec 2024 22:52:05 +0100
Message-ID: <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
Date: Tue, 10 Dec 2024 22:52:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z1CDcFAPdlDBkGJ5@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_135206_931296_B308C0DF 
X-CRM114-Status: GOOD (  20.76  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 04.12.24 17:29, Konstantin Kletschke wrote:
> On Wed, Dec 04, 2024 at 07:14:17AM +0100, Ahmad Fatoum wrote:
> 
>> Very interesting. You can now try to move the 4 putc_ll`s to a later point in the
>> startup code and then see which line of barebox code needed the delay in front of
>> it.


> I _think_ this is the critical path, I have more putc_ll() inserted, but
> they are not important.
> If by any chance it is better readable for anyone I could provide a
> complete diff, of course.
> 
> So, when I power up, I get:
> 
> 2>6ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]
> 
> before the banner.
> 
> When I reset, S1, blabla, I get:
> 
>> 6ABCDEF%G-%|
> 
> So I assume it dies at 
> 
> BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));

You can print hex numbers with puthex_ll(), although by now you are
already relocated, so you can add

  pbl_set_putc((void (*)(void *, int))debug_ll_ns16550_putc, uart0);

after omap_debug_ll_init(), enable CONFIG_DEBUG_PBL and then you can
use normal printf and also see the panic message if the BUG() indeed
triggers.

> So each warm restart method gives me a proper reboot. 
> With an additional putc_ll() in lowlevel.c in beaglebone_sram_init().
> The later debug putc_ll() have no influence on starting not starting.

Getting stuck inside the BUG_ON doesn't make much sense. It may be interesting
to find out what the value of virt_addr is.

I suspect the RAM controller itself may be acting funky after a warm reboot
and letting some time go by fixes that :/

Cheers,
Ahmad

> 
> Kind regards
> Konsti
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


