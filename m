Delivery-date: Thu, 28 Nov 2024 10:47:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGb79-001P21-0X
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:47:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGb79-0000yh-1u
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:47:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PMWsJK88333CbUU6srmQe/1O2HUQXYbc3JzM2yY/gHg=; b=ROpXG0ogLJ/QRX9t1gRM36RK5s
	LvTwYvJ1dsJSA+M5YqXI/Tsmlc15k+WKE/TafWkdjGJYrOdAZ9n4WiXYlXvN0+CX9B30E/+6Vqn4q
	J0OuF9mbP6ZKqNa15eEptFB0Mbe+/rqMy556dflQuN75A9SJSUMk+VRBCT4/YNmQqV+Gy3xaTVv+A
	qClbnl+GMK4CSjZkEV+Q7llK9Z2Y3M/rPfuxMLB2VzlMqDGqa8cgx724g3esvEW8kLpjDkbi/FYRH
	44yu0T0rsTs7OdVy3qm6vAV+dHJu+B3jpOCMkPmI6PpFwpEjY5/RpPZ82pWDfLKNYv7AkQBebRW3+
	EwT4Xazw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGb6j-0000000FAz5-2JxU;
	Thu, 28 Nov 2024 09:46:45 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGb6g-0000000FAyi-33hx
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1732787171;
	bh=SgWWX3iO/JzWWFQnTceSsPyegDjFVRFp8F6JW97PZy8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fw66+5PEeJ5dm0+SA+F5VwaHJyShjWbEJ+6QUcCflcxrHxKkmyX3gfIARLVxXuQXM
	 PMQ+RdNs8HGhmJ0GeDf/DSfEzgmUTDWAV6A+SMcWbhNyFEaVE0NePuTLvogMRploa1
	 AiqeHvhMOdbjxaIHWy0g2GzcVZl1FPvUBSc7ig7+R/uxPIxNGKr7Sth4qHGhg44IH4
	 gr+kSj6eNxJkyy2jwpU8rpQN2+BO4eP5dtA6GT+AStXXa1t+2pEfd72HsgZsvkowrf
	 jsLMkakI7eDWtaDK14UFjEjcZMJaQZs2tWXhWnZaLSQ7l36H0xH2zSviSWIvokCK36
	 Lcd3jWgMwwsqw==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 45FBE40170;
	Thu, 28 Nov 2024 10:46:11 +0100 (CET)
Date: Thu, 28 Nov 2024 10:46:10 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0g74s98_Pz98tC5@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_014642_909080_E79EA6C8 
X-CRM114-Status: GOOD (  19.44  )
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

On Thu, Nov 28, 2024 at 10:23:10AM +0100, Ahmad Fatoum wrote:

> I assume this should be v2022.04? -dirty means you have local patches
> on top. Do any of them touch SoC-specific, board-specific parts
> like clock or power?

Yes, it is "barebox 2022.04.0-dirty #1 Tue Sep 10 08:45:54 UTC 2024".
The patches we apply do not touch any clock or power, we touch:
Environment, kernel cmdline, watchdog settings, bootchooser config, 
autoabortkey. Config stuff.

> What changed over the last week on the software side? I understand barebox
> stayed the same? Is the kernel still the same?

We changed nothing. I use to ship this barebox version with kernel for a
couple of months. Last week we only ramped up quantity but the fails are
so high in percentage it should had happened a couple of times before.

> On affected hardware: Does this happen always or only some times?

Always. Easy reproducable.
Meanwhile I realized on affected BBBs it can be reproduced this way:

Boot, hit Ctrl-C to stop barebox at prompt.
Hit S1 button which is wired to NRESET_INOUT ball A10 (its not S2 as I
initially wrote, S1).
System is stuck/frozen/dead.

> This sounds very similar to the issue fixed in commit 9c1a78f959dd
> ("Revert "ARM: beaglebone: init MPU speed to 800Mhz""), but that's already
> included in v2022.04.0, hence the question if you have patches that
> do anything similar.

Sounds interesting, I will take a look. As said, we patch no clock
voltages or something like that.

> Yes, but it sounds strange that only now these problems pop up?

Yes. Last week we started to experience this problem in production, we
have ~200 working BBBs, ~20 have this problem. The batch worked
flawlessly but suddenly a couple of broken BBBs kinda heaped one day,
now sometimes this happens.

I am even not so shure if software is to blame or if the hardware is or
has become glitchy, but falsinh stock u-boot still is able to
reset/restart on its own on these devices.

> Besides checking what changed, you should check if Linux is playing
> around with the voltages powering the SoC and if it does, disable that
> to see if it improves the situation.

Sadly (or gladly?) linux is not involved on affected BBBs. Boot, stop in
bootloader, hit S1, system freezes.

> Your barebox restart handler is probably am33xx_restart_soc (named
> "soc" in reset -l output).

I will poke around, never in my life was dealing with reset code :-)

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



