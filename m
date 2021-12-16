Delivery-date: Thu, 16 Dec 2021 20:37:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxwYz-008ijv-3t
	for lore@lore.pengutronix.de; Thu, 16 Dec 2021 20:37:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxwYx-0000HG-9n
	for lore@pengutronix.de; Thu, 16 Dec 2021 20:37:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kbl2jB17zLKwou7LIBtA7XErrnF650vaEnd+Uwct/EM=; b=jVMtl5YPBNgePVZpEEND59Z+Gi
	sEYE+o7GpxhIFo5+IcM3Ouopvwc6iVqhRwmXnS1Ro9xybU3BFW+Tc9WPeWWApV5Rnh4jZWq2lZJdN
	ox3kWxvAaG5J9PK2WwpR24RS4PQ0mEVrpP88UCpgo/zMYg91caNxOj/Aqd8sS/Xvs1XC+X2cq7zxq
	lL799CEFdXtI+5ABR+RDfkeSlTBeiI8AdKgSNQUi6yTFZAf3NzZ/EEOQhJEkB7ckVyONSyNSgex0a
	oHloMDzgMKGggOC2qtWZeJM+oVlus3kdUbLhTXGpSIV8+TtBkV0lKR0u8DDj8b3Cgj7vIoHGsKz5P
	qF+4Qx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxwXL-007MKK-Pn; Thu, 16 Dec 2021 19:35:31 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxwXG-007MJS-Cl
 for barebox@lists.infradead.org; Thu, 16 Dec 2021 19:35:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 8410A4020C;
 Thu, 16 Dec 2021 20:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639683322;
 bh=qwLMGaYjgHeJpyzMvtc2TfKWhjX9L8ABq1qgMLhuUVk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Rd35Xx78ICPtsLfxpfa5TO4J0IhVccUENKxzXERjaQ6nyzPeK0/OGIetW6HY+BYjN
 nkUSEaDEOsI/pO5LUCcVsn0KO552D8ZGr9k86NhS6ailaw18o/ZzYccUIcP7oY6ZJq
 O7njdM3ZpUcpUZKr4e5HTLNFd2a4VoCZZx8TUE5AM1RGdHVxHX58JZhfSOWJBIDPUt
 x7JLEAlpZEmL66AI+rowJdsY6gPTVpGGfCxXzcuxBWW3zH5ekNO0mvWEsTQ51jXCMQ
 ff45zrLrQi2+owEym821uUL7d1tysGHfyFPwS4qb+c1h+6rGsEfMhqbkUPhvPWWLRn
 D6P1t4MGgOEzA==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qo-nQVmDpb8W; Thu, 16 Dec 2021 20:35:22 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 06391400B1;
 Thu, 16 Dec 2021 20:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639683322;
 bh=qwLMGaYjgHeJpyzMvtc2TfKWhjX9L8ABq1qgMLhuUVk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Rd35Xx78ICPtsLfxpfa5TO4J0IhVccUENKxzXERjaQ6nyzPeK0/OGIetW6HY+BYjN
 nkUSEaDEOsI/pO5LUCcVsn0KO552D8ZGr9k86NhS6ailaw18o/ZzYccUIcP7oY6ZJq
 O7njdM3ZpUcpUZKr4e5HTLNFd2a4VoCZZx8TUE5AM1RGdHVxHX58JZhfSOWJBIDPUt
 x7JLEAlpZEmL66AI+rowJdsY6gPTVpGGfCxXzcuxBWW3zH5ekNO0mvWEsTQ51jXCMQ
 ff45zrLrQi2+owEym821uUL7d1tysGHfyFPwS4qb+c1h+6rGsEfMhqbkUPhvPWWLRn
 D6P1t4MGgOEzA==
MIME-Version: 1.0
Date: Thu, 16 Dec 2021 20:35:22 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Roland Hieber <rhi@pengutronix.de>, Trent Piepho
 <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Organization: Inside M2M GmbH
In-Reply-To: <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
 <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
 <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
Message-ID: <0af65ce5839f3990206a5b9ac94d00ac@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_113526_798933_CBA0AAD9 
X-CRM114-Status: GOOD (  13.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2021-12-15 11:56, Ahmad Fatoum wrote:

> I think Roland meant that you shouldn't rely on the _mutable_ 
> environment
> for production. It's nice to test out stuff, but once you have figured
> out what you need, add it to the built-in environment (e.g.
> arch/arm/<board/myenv or CONFIG_DEFAULT_ENVIRONMENT_PATH).

Okay, then I got it - the intention of Roland. Compiled default 
environment
is no problem.

But regarding required bootchooser variables: what of those are 
required?
I said I utilised
https://bootlin.com/blog/another-system-update-adventure-with-rauc-barebox-yocto-project/
there is the barebox-state DT tree setup explained (a bit) and then it 
points out
[...]Now we have to add bootchooser variables associated to both targets 
in arch/arm/<board>/env/nv[...]
Which is rather abstract on how to do this, especially, if I have

bootstate.system0.remaining_attempts

in the DT, why should I replicate this in arch/arm/<board>/env/nv?

Or is there a connection needed to be created? Which variables need to 
be specified?
Isn't it already there?

> > barebox@TI AM335x BeagleBone black:/ devinfo state
> > Parameters:
> > bootstate.last_chosen: 0 (type: uint32)
> > bootstate.system0.ok: 0 (type: uint32)
> > bootstate.system0.priority: 21 (type: uint32)
> > bootstate.system0.remaining_attempts: 3 (type: uint32)
> > bootstate.system1.ok: 0 (type: uint32)
> > bootstate.system1.priority: 20 (type: uint32)
> > bootstate.system1.remaining_attempts: 3 (type: uint32)
> > dirty: 0 (type: bool)
> > init_from_defaults: 0 (type: bool)
> > save_on_shutdown: 1 (type: bool)

> > Is bootchooser smart enough to gather system0 and system1 as bootable entries/possibilities?

> > barebox@TI AM335x BeagleBone black:/ bootchooser
> > ERROR: bootchooser: Target list $global.bootchooser.targets is empty
> > No bootchooser found

May be this is my problem:

> hand is manageable, because you restrict what variables are available
> and how they interact with the rest of the system.

?


What I mixed into my not so elaborated mail is a SIDE QUEST:

I can boot a bootloader spec equipped partitio like this:

barebox@TI AM335x BeagleBone black:/ boot mmc1.2


How do I make a boot entry "system0" a boot.default variable can point 
to and also a member
of bootchooser.targets?

I tried mmc1.2 or "boot mmc1.2" as system0 content but that did not 
work...




Kind Regards
Konsti


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

