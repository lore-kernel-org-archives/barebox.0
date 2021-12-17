Delivery-date: Fri, 17 Dec 2021 11:02:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myA42-009LZD-SY
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 11:02:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myA41-0003Of-Ea
	for lore@pengutronix.de; Fri, 17 Dec 2021 11:02:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WEjQbQqs4f7KZUM2CEombAw/eo7RP+SHzIpXAE4u7/g=; b=IY5eXyf6KBOuDmbTBtfp/BeEzS
	BhFHWoQkFJk7mWZslxmtp5lL6HaKw2b1HtFAAkiIuoODVWrLdSJfqI0tV1eTMuYSThW3cJXKAXgJe
	GTo+OEAfZBwUYKQ7WtYFnWaaSIky7RwixloXtCC2p8TACohhpYHLvWTlUqkwH/4yb5CyCBPVipsy1
	QkF/qv5inNG6+tdA40gO/Zor3p+fh/l0W8bq9Hv/jzLikVrCmjR+dYA+uFq0l7CF/WxBccxxcmDCx
	rMtPCGJws15hax7zwLZEwnv803b6+iORa/h7Abb7mRCP04JJl5rh1kf1X+fwXRPMwLk4Ft0FN9Vnk
	6H803huA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myA2Y-009Njz-Re; Fri, 17 Dec 2021 10:00:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myA2Q-009Ngh-7v
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 10:00:32 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1myA2O-0003F3-KE; Fri, 17 Dec 2021 11:00:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: Roland Hieber <rhi@pengutronix.de>,
 Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
 <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
 <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
 <0af65ce5839f3990206a5b9ac94d00ac@inside-m2m.de>
Message-ID: <3e8efae8-2c97-1359-cc0d-acbb17b555e8@pengutronix.de>
Date: Fri, 17 Dec 2021 11:00:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <0af65ce5839f3990206a5b9ac94d00ac@inside-m2m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_020030_379232_65F756A7 
X-CRM114-Status: GOOD (  28.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 16.12.21 20:35, Konstantin Kletschke wrote:
> On 2021-12-15 11:56, Ahmad Fatoum wrote:
> 
>> I think Roland meant that you shouldn't rely on the _mutable_ environment
>> for production. It's nice to test out stuff, but once you have figured
>> out what you need, add it to the built-in environment (e.g.
>> arch/arm/<board/myenv or CONFIG_DEFAULT_ENVIRONMENT_PATH).
> 
> Okay, then I got it - the intention of Roland. Compiled default environment
> is no problem.
> 
> But regarding required bootchooser variables: what of those are required?
> I said I utilised
> https://bootlin.com/blog/another-system-update-adventure-with-rauc-barebox-yocto-project/
> there is the barebox-state DT tree setup explained (a bit) and then it points out
> [...]Now we have to add bootchooser variables associated to both targets in arch/arm/<board>/env/nv[...]
> Which is rather abstract on how to do this, especially, if I have
> 
> bootstate.system0.remaining_attempts
> 
> in the DT, why should I replicate this in arch/arm/<board>/env/nv?

bootchooser variables are those that start with bootchooser.*. You named
your state bootstate in the device tree, thus the state driver creates
bootstate.* variables, which can be used to read/write the values.

You need to tell bootchooser which state to take via bootchooser.state_prefix,
but that's it. No need to mess direclty with the state variables.


> Or is there a connection needed to be created? Which variables need to be specified?
> Isn't it already there?
> 
>> > barebox@TI AM335x BeagleBone black:/ devinfo state
>> > Parameters:
>> > bootstate.last_chosen: 0 (type: uint32)
>> > bootstate.system0.ok: 0 (type: uint32)
>> > bootstate.system0.priority: 21 (type: uint32)
>> > bootstate.system0.remaining_attempts: 3 (type: uint32)
>> > bootstate.system1.ok: 0 (type: uint32)
>> > bootstate.system1.priority: 20 (type: uint32)
>> > bootstate.system1.remaining_attempts: 3 (type: uint32)
>> > dirty: 0 (type: bool)
>> > init_from_defaults: 0 (type: bool)
>> > save_on_shutdown: 1 (type: bool)

See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf Slide 26 for an example
/env/nv for a redundant boot setup.

> 
>> > Is bootchooser smart enough to gather system0 and system1 as bootable entries/possibilities?

You need to tell it what system0 and system1 are. See example linked above.

> 
>> > barebox@TI AM335x BeagleBone black:/ bootchooser
>> > ERROR: bootchooser: Target list $global.bootchooser.targets is empty
>> > No bootchooser found
> 
> May be this is my problem:

Ye. You need to tell bootchooser what boot targets there are.

>> hand is manageable, because you restrict what variables are available
>> and how they interact with the rest of the system.
> 
> ?
> 
> 
> What I mixed into my not so elaborated mail is a SIDE QUEST:
> 
> I can boot a bootloader spec equipped partitio like this:
> 
> barebox@TI AM335x BeagleBone black:/ boot mmc1.2
> 
> 
> How do I make a boot entry "system0" a boot.default variable can point to and also a member
> of bootchooser.targets?
> 
> I tried mmc1.2 or "boot mmc1.2" as system0 content but that did not work...

It's a two step thing. First you define your targets, e.g. system0 and system1
Then bootchooser knows the name of the state variables to consult and then
basically does boot ${global.bootchooser.system0.boot}.

Cheers,
Ahmad

> 
> 
> 
> 
> Kind Regards
> Konsti
> 
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

