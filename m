Delivery-date: Wed, 25 Jan 2023 14:49:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKg9w-001Xwz-05
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 14:49:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKg9t-00064b-2A
	for lore@pengutronix.de; Wed, 25 Jan 2023 14:49:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5s1ur8KsrZUkLQijrffYZxk19cEnfQDvjwUlz2ZZTgg=; b=4/CUYsUR15uoyFEilclhQYzrLX
	mNge0cctwGaI8QVmIWKZtu6pHtmVK9H4nc0esPpcwx8Eo8Bd0GNSs/+Svs110gBKlEuL/8qkr4o0Z
	UAarytcmShsJ+3KuoCrlfa0GuTpfZYE5gwQfu+dSue+OFoQFdPEPxC81haY4HiHLdstSAnF9FQXbw
	zV6LU7wmf/wfqEtoBskAI58YvnQ0DzKRQnIwX4q4cMcIrd4WnTRnmDswHLUwaQc8Xs1WcE+iCM3NV
	MLbqhFyNSpxeW+E08tYZxGQpeO6shENK62XgiBBPs1w3j5hwvYb3GC5mFr6BTfBxaZ9fso5Szkf5H
	/azrR87Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKg8b-007Qe5-CZ; Wed, 25 Jan 2023 13:48:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKg8W-007QdI-Fq
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 13:48:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pKg8S-0005ya-PL; Wed, 25 Jan 2023 14:48:20 +0100
Message-ID: <072ab8ce-d92f-8841-a44e-621a3ba345a4@pengutronix.de>
Date: Wed, 25 Jan 2023 14:48:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: John Watts <contact@jookia.org>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_054824_552156_8FBDB135 
X-CRM114-Status: GOOD (  23.92  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 25.01.23 14:31, John Watts wrote:
> On Wed, Jan 25, 2023 at 09:19:23AM +0100, Sascha Hauer wrote:
>> Yes, normally it should be set up already, unless of course there is
>> some needed pinctrl configuration in an unrelated device tree node.
>>
>> Sascha
> 
> Hi Sascha,
> 
> Here's what I think is going on:
> 
> - The I2C line requires 3v3_DELAYED for pull-ups
> - The EEPROM requires 3v3_DELAYED for power
> - 3v3_DELAYED requires VGEN5 from the PMIC (acts as a gate)
> - The PMIC is loaded after the EEPROM
> 
> Most things on the board require these delayed rails, so I'm wondering
> what the approach should be here. Should I:
> 
> - Rewrite the device tree to reference these delayed rails
> - Probe the PMIC first
> 
> I did try this:
> 
> 	reg_3p3v: regulator-3p3v {
> 		compatible = "regulator-fixed";
> 		regulator-name = "3P3V_DELAYED";
> 		regulator-min-microvolt = <3300000>;
> 		regulator-max-microvolt = <3300000>;
> 		regulator-always-on;
> 		gate-supply = <&reg_vgen6>;

regulator-fixed only understands vin-supply.

> 	};
> 
> But Barebox doesn't seem to see the 'regulator-always-on' as
> 'start immediately'.

For this to work we'd need:

  of_devices_ensure_probed_by_property("regulator-always-on");
  of_devices_ensure_probed_by_property("regulator-boot-on");

somewhere in generic code. Currently, these properties are only
consulted when the device is actually probed.

I actually updated the eeprom node to use
> reg_3p3v as vcc-supply and things were still probed in the wrong order.

That's odd. You can enable CONFIG_DEBUG_PROBES to see in what order
probes happened and at what depth (each probe within a probe is
indented more than its parent).

Cheers,
Ahmad


> 
> John.
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



