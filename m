Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGDIi-0001X5-21
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 16:13:32 +0000
Received: by wyf22 with SMTP id 22so909671wyf.36
	for <barebox@lists.infradead.org>; Wed, 10 Nov 2010 08:13:29 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20101110151106.GT6017@pengutronix.de>
References: <4CDA5DF9.7050906@flatfrog.com>
	<20101110151106.GT6017@pengutronix.de>
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Wed, 10 Nov 2010 21:43:00 +0530
Message-ID: <AANLkTikwqJckiphhidiSV=OysTQp5Jf-EWonmJTbp=Es@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: BeagleBoard sdrc init writes reserved values
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 10, 2010 at 8:41 PM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> Hi Orjan,
>
> On Wed, Nov 10, 2010 at 09:55:21AM +0100, Orjan Friberg wrote:
>> In sdrc_init in board-beagle.c both
>>
>> =A0 =A0 =A0 =A0 writel(0x1A, SDRC_REG(SYSCONFIG));
>>
>> and
>>
>> =A0 =A0 =A0 =A0 writel(0x18, SDRC_REG(SYSCONFIG));
>>
>> sets bits 4:3 in the IDLEMODE field. =A0The OMAP3 TRM (spruf98k) defines
>> 0x2 as the only valid value for this field, all others being marked as
>> "reserved - do not use". =A0board-omap3evm.c does the same thing,
>> board-sdp343x.c does not.
>>
>> Anyone knows where these settings come from? =A0Derived from an older
>> version of the TRM? =A0(I'm thinking there may have been a feature that
>> was discovered to be unreliable or not working as intended so it was
>> removed from the docs.)
>
> I have no idea. I'm pretty sure though that the value has been copied
> from some version of U-Boot or Xloader.
>

I agree - I think this is an accident - probably copied from older loader
versions and introduced in the first version that went here.

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
