Delivery-date: Wed, 31 Jul 2024 19:51:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZDUP-004rre-3C
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 19:51:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZDUP-0002lD-BC
	for lore@pengutronix.de; Wed, 31 Jul 2024 19:51:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3aQNqXY6OuVKp92lteftEAowUoMMxFWiJy/jTeLmvac=; b=gYdGxamEkVOGcQ0/OUxCoIT59x
	CnB3nuV6quRVqDENFETb7loTZJuvlxa1a14ssnemXN0/gAe7Gn5l6l8mpXDF6bAd8zvfV3LR/NLNW
	sMosFrTQ7+pMqAx76viVz2mdUx3Qophd+bgViov2GQpI7Ef3TWBKXVd44C3P6gWQpSZMV92RtrD4/
	ySYfxw8t6NqUY/sti1Vs27xGv7vPpfr5V0Jm9k4QoNxq0fyBQ6EZmm6+Ulpz0BU7pq6snxJoDBT+j
	QbDnrpjw6etuaguWBJYkeB3vb9T37EbRuN1Em1NSgIMMXC7jveBePM5GYmpVNnHVWnRABq1BKT75n
	oVu8qtDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZDTh-000000023yC-1eTH;
	Wed, 31 Jul 2024 17:51:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZDTb-000000023wU-0X07
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 17:51:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZDTZ-0002ed-A1; Wed, 31 Jul 2024 19:51:01 +0200
Message-ID: <ec161afa-115a-4c2c-a9de-9279e3b8344e@pengutronix.de>
Date: Wed, 31 Jul 2024 19:51:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <7abdbc190f22b62372d0ae76a943d6e5a1467b05.camel@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <7abdbc190f22b62372d0ae76a943d6e5a1467b05.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_105103_202251_83A5CA8B 
X-CRM114-Status: GOOD (  21.67  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: bootchooser: avoid write environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 31.07.24 16:35, Stefano Manni wrote:
> Hi,
> 
> I'm using bootchooser to switch from a partition to another in case of
> an update done in Linux userspace using the command bareboxenv.

You will want to use the barebox-state backend, not the regular environment.
barebox-state:

  - Is laid out redundantly in a power-fail safe manner
  - Supports a circular storage type where the same page is written
    incrementally before an erase is required
  - has a defined set of variables and doesn't allow arbitrarily
    code execution in barebox

See arch/arm/dts/vexpress-v2p-ca9.dts for an example.
You need to set some parameters in the nv once, see slide #26 here:
https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf

> But I see that at every boot the barebox decrements the number of
> remaining attempts in the environment. 
> I'd like to avoid continuing to write the env in order to preserve the
> spinor flash memory.
> 
> Is there any already-ready mechanism to do it?

With the circular state backend, you should see considerably fewer number
of erases. The boot state is still written on every boot, because that's an easy
way to know if a boot failed: always decrement and then increment when
boot succeeded.

If you don't want to decrement on the off-chance that a boot may fail, you
need to be able to detect a successful boot by other means. There are
two built-in ways to do this:

 - If a successful boot differs from a failed boot in the value of $global.system.reset,
   you can set nv.bootchooser.reset_attempts="reset". This means that a regular reset
   after which $global.system.reset="RST" will undo the decrement

 - If you have another way to detect a successful boot, you can call either
   bootchooser_last_boot_successful() from C-code or bootchooser -s from shell


If you have no way to check whether a boot was successful without decrementing, but
you still want to conserve erase cycles, you may consider placing the barebox-state
in EEPROM, if you have one available.

Cheers,
Ahmad

> 
> Thanks all.
> Best,
> Stefano
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



