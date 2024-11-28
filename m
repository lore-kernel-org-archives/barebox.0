Delivery-date: Thu, 28 Nov 2024 10:23:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGakV-001Oat-2P
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:23:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGakV-0004CV-Jy
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:23:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l/JidOQKuyPjnrdhj5YmFCj+oOn/iys+iUQkNmWq0uE=; b=w4fRxBHuY3zd7gjSB745iHkwuq
	hVyBGGAuDwHh90EpYQxp5Dtmb1wkOdzKxc18nXoHIfXf+9XlqJ0naidcaTuYqc3k09MvsZZ0T2qz0
	Qa+UBF/RovI1Uwlu9edMRJIfjtXAyxiLTI87IDTVUkmHHACKIUBO7esru8AqSquy5pR71j7/RNHti
	dOCAINyC0yD+D8jfwWl6GJ8zz0ccxDfZg+T0EFAFFBddOJOrQ7kL/pE1mdVwqi47qC5lG0cCciZM2
	1BTuBi5ozNQ/KJW+FOUTJzHIMmn6YJb90+zN8yqDnycZVB5h8TXNokuMgnMNIRGWREEAsnixUFa3e
	NOTc+wiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGak0-0000000F8CT-2eA7;
	Thu, 28 Nov 2024 09:23:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGajy-0000000F8CA-3nvI
	for barebox@bombadil.infradead.org;
	Thu, 28 Nov 2024 09:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=l/JidOQKuyPjnrdhj5YmFCj+oOn/iys+iUQkNmWq0uE=; b=NJbtrOa3dhC5CRIHsPJO0WwMLl
	hu3WkTr7XhJ5uzcuZzcCFc3aMofV94X+/pCpBem/5iDpjKYjYodot0ooMFRH44Ohss7mpesmanJbH
	gfUWWU9wYjhFtRg1qC/9LRdbVBcoc5gqli8bqrLUs9R19N+/LoD6FGrjups9s7azcAhtIyGSQcTMo
	XydtsyDHB0JNKxsMTXr7859/C3izrDJFakkWVJcaVZ5nDDNiG9x3cWTM1AaOVUSzahdZAyJeV5n7+
	fbBnwqOu6zORgIvJaXD3fhuyTf92DUiaa8Lo+1sITty9TogHZACPjJygtDQA2MsXOx0gQgCTqrmNf
	GY3Rfz9A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGajw-00000001Zua-020d
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:23:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tGaju-00043L-HJ; Thu, 28 Nov 2024 10:23:10 +0100
Message-ID: <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
Date: Thu, 28 Nov 2024 10:23:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z0gywL2hLcIDoLQ8@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_092312_123363_930178BC 
X-CRM114-Status: GOOD (  27.80  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Konstantin,

On 28.11.24 10:07, Konstantin Kletschke wrote:
> Dear barebox community and hackers,
> 
> we use barebox 022.04.0-dirty from 

I assume this should be v2022.04? -dirty means you have local patches
on top. Do any of them touch SoC-specific, board-specific parts
like clock or power?

> https://github.com/menschel-d/meta-barebox.git in our yocto kirkstone project.
> This worked for ages in up to hundreds of BBBs without any issue.
> 
> Since last week I have the problem, that the system is not able to
> reboot (linux userspace issuing reboot command) or reset (command reset
> at barebox prompt) anymore in _some_ of the BBBs we got delivered from
> SEEED (we get a couple of hundreds a couple of times per year). Speaking
> of some one digit percentage.

What changed over the last week on the software side? I understand barebox
stayed the same? Is the kernel still the same?

> Linux userspace running, issuing reboot command:
> 
> systemd-shutdown[1]: Rebooting.
> reboot: Restarting system
> -> Then gets stuck

On affected hardware: Does this happen always or only some times?

> Barebox prompt, issuing reset command:
> 
> Hit m for menu or ctrl-c to stop autoboot:    3
> barebox@TI AM335x BeagleBone black:/ reset
> -> Then gets stuck
> 
> This also applies to triggering the barebox's watchdog to trigger reset
> and also the hardware line on the BBB S2 is not working on those BBBs
> too! The S2 button is connected to CPU's NRESET_INOUT ball A10.

This sounds very similar to the issue fixed in commit 9c1a78f959dd
("Revert "ARM: beaglebone: init MPU speed to 800Mhz""), but that's already
included in v2022.04.0, hence the question if you have patches that
do anything similar.

> If I test those use cases with stock u-boot delivered with the BBB the
> reset/reboot works each time.
> 
> From the symptoms I guess the barebox is not able to start in each case
> when it should.

Yes, but it sounds strange that only now these problems pop up?

> Where can I start to investigate such an error, what could cause the
> hardware glitching away that something is on the edge which does not
> work anymore?

Besides checking what changed, you should check if Linux is playing
around with the voltages powering the SoC and if it does, disable that
to see if it improves the situation.

Afterwards, we can look into how you can make barebox resilient against
this.

> I learned it is something like a soft reset which is done in software,
> where can I look in the sourcetree for this special part?

Your barebox restart handler is probably am33xx_restart_soc (named
"soc" in reset -l output).

Cheers,
Ahmad

> 
> Kind Regards
> Konstantin 
> Kletschke


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


