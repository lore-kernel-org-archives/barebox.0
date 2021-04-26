Delivery-date: Mon, 26 Apr 2021 11:37:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laxg4-0002zB-Su
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 11:37:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laxg3-0005Yo-Vi
	for lore@pengutronix.de; Mon, 26 Apr 2021 11:37:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DHK2abfYLAzVEPo6rDagMwIhpN0Gm+TioGpeI5yB8Wo=; b=ZWvDVZ8jzC3OzHmG38ZmwMPgt
	4G5aE60URg/XtvDuCml5DcZzXiH7zvsy4mq19AErypxWB0TAxuqdGEK6lwLps5dg01a7C7wgSqEq1
	Cu9d9hkJLGiv5epp0i5BcLF2qIawzRh9bqd6Cp8k8iQYcSdldLvz64X957mP69Qb7La5Vg719vAU5
	pVYp9tnhdG5LElI9ZpMiXFxz/WyRIKcnQDKn3F+NuYJYWJmehmUmcjy5unZVejhIZQKoLItkhvuX6
	DdfQ4LYFk+E5QqgCsgJuVnfQR1aKCopilW8D8ksfv2e4nzGzmaOM8ZabMkK5jq63iflT77853X95u
	NX1rr24fA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laxfC-007KXD-KN; Mon, 26 Apr 2021 09:36:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxf9-007KX2-Gr
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 09:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=r8TV9w9VA+sd61LaG7akbyspZ+LBG9nZ3PODJRUj/9Q=; b=LgUjaxjXfp3pEOaDCpQZshaAac
 X6hBUxifjfXMb2uYjOK7VIesak7zd6GHUhir5ZCT34LwU4/ItGO2MvQ6DO7NuazxOTbYi2st/66IS
 Cg3YXkCzWTfhMh9ejVcwT6fHzCcRNXBjxqzKjoq7aXD87HyDVnYGVuRIPeVM3DtiCQDjrUPgduHdi
 AVzT4D7IwpTutJNK/vBDZ01PAbOI18+dZMZtIjh/ReXQ705SwHhqa212kdY77PSY9d8C6vn8Q62Gx
 NRBJwbGEQB3WtHdl0T1/DMPG2EYKdkzikXb/Xj/YA84JTsIR6/ZSMQpytaA8sPU1tkTNzmhkDywHO
 xTBHzyxw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxf5-00Frot-LH
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 09:36:18 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1laxf1-0005Tx-Cl; Mon, 26 Apr 2021 11:36:11 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-18-s.hauer@pengutronix.de>
 <62d9fd38-fa11-446d-1aee-2165a55f0fd5@pengutronix.de>
 <20210426092025.ayufzlgd7hchyngw@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b337571d-58e6-4c8d-58a9-764e8126e04b@pengutronix.de>
Date: Mon, 26 Apr 2021 11:36:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210426092025.ayufzlgd7hchyngw@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_023615_722390_454A00C6 
X-CRM114-Status: GOOD (  25.42  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 26.04.21 11:20, Marco Felsch wrote:
>> How about changing BAREBOX_DEEP_PROBE_ENABLE so BAREBOX_DEEP_PROBE_ENABLE(physom_imx6_match);
>> works? Updated boards should be using board drivers anyway, so make it easier for them to
>> enable deep probe.
> 
> Hi Ahmad,
> 
> Why do I need to chnage it to board drivers if I only wanna fix a probe
> order issue? But you're right adding the _match table should be possible
> to :)

Either you have board code at a single init level and changing to a board driver
will be very straight-forward. Or you have multiple initcalls, which expect
drivers at prior initcall levels to have probed a device, which will be broken
by a move to deep probe.

>> I'd go even further and require board drivers by having it take a driver_d * as argument
>> and introduce deep_probe_board_driver() that expands to postcore_platform_driver and
>> BAREBOX_DEEP_PROBE_ENABLE.
> 
> How about this:
>  1st) adding a probe_enum like kernel and introduce PROBE_PREFER_DEEP
>  2nd) adding a deep_probe_enable_board() function to common/deep_probe.c
>  3th) checking during register_driver() if the flag is set and call the
>       deep_probe_enable_board().
> 
> This allows use to still use the macro mechanism and the boards already
> converted to the board driver style can use this simple enum to mark all
> boards as deep-probable.

I don't see how that would work. deep_probe_is_supported() is called on oftree
registration, which is prior to the board driver's register_driver.
I thought that's the point of the linker array: You need the info too early
to be able to dynamically register a board.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> This would prevent having a board driver that's deep probe incompatible in the
>> first place, because it will likely not find the resources it requires that early
>> if it doesn't deep probe.
>>
>> Cheers,
>> Ahmad
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

