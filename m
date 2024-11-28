Delivery-date: Thu, 28 Nov 2024 10:07:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGaV7-001OJt-2P
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:07:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGaV7-00010g-Lw
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:07:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QPNuLJlfkds01smvcGjwvnq+m5xcGtYJ6VeC+u5Ow+8=; b=nl/VZtLML6QYyqaPqJ3rJePBVF
	0WgL1YbB10Cu2Cj6BlAhDzUaoH8vez1Uek+vrwHGT8+eyOHIcIA+iE1i/s1UuxoUNWqVc85Krgc+v
	ORo36/Hocuhn6CseqTb7++j/keiwBMABv2Ps+IimYf71qnfxfmPenvwqgG4TRL1fp1rDTWOjJPG6Q
	D4gKL4J92WRwzex7YK41SjZZdCOkazmGiOz7Rs9tpWtlezrnbTYk13+bd97cwgAkHFRG69fIEoRlx
	NgTTVAE3Dn3upDLpHVdG8vz6oNd2QARzcn751q1IUX/xvOgKvcus5+rTUZyc/ZmW47HEkPHNuBh4G
	EYF8ee9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaUb-0000000F6wg-3HIf;
	Thu, 28 Nov 2024 09:07:21 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaUY-0000000F6w3-0RUt
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1732784834;
	bh=ioqQqW9lYn2mcooNC9uYyynvOP4od2pcwSXncFQSH7o=;
	h=Date:From:To:Subject:From;
	b=Hi2VMevra7p/s0vzBONC2q+0EiJPuXlM9niwOYVzLSd+8Fniozqcggw4Y+xmWG61D
	 wl6xndQjjosQmYofDjSHY5rHzm6Wd3g+6alRcC4Aj/JcO65D9XDXQkidNu6tggVfmZ
	 dPOTw6aSIhHLPTrQ8kMfA/HvxzPzE96xjiNnzaUftJ9gc2xXzVLDK8R9G9lGfB0DTC
	 4aEjweAnMg0jPAgYftNO0IwsUduXBJjpXg7AU0ko48W+MhCrJgsh/FkMFoO69JfYve
	 t0EC7TqHrgRuo4uXJ/DiIBYkuftYuIYJIuRKR/8yjRUE56Xh7+WS29KknwsMT+nUg0
	 Znur9rv7+IEDw==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 0A3B840170
	for <barebox@lists.infradead.org>; Thu, 28 Nov 2024 10:07:14 +0100 (CET)
Date: Thu, 28 Nov 2024 10:07:12 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <Z0gywL2hLcIDoLQ8@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_010718_588905_B9C371DC 
X-CRM114-Status: GOOD (  10.15  )
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
Subject: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear barebox community and hackers,

we use barebox 022.04.0-dirty from 
https://github.com/menschel-d/meta-barebox.git in our yocto kirkstone project.
This worked for ages in up to hundreds of BBBs without any issue.

Since last week I have the problem, that the system is not able to
reboot (linux userspace issuing reboot command) or reset (command reset
at barebox prompt) anymore in _some_ of the BBBs we got delivered from
SEEED (we get a couple of hundreds a couple of times per year). Speaking
of some one digit percentage.

Linux userspace running, issuing reboot command:

systemd-shutdown[1]: Rebooting.
reboot: Restarting system
-> Then gets stuck

Barebox prompt, issuing reset command:

Hit m for menu or ctrl-c to stop autoboot:    3
barebox@TI AM335x BeagleBone black:/ reset
-> Then gets stuck

This also applies to triggering the barebox's watchdog to trigger reset
and also the hardware line on the BBB S2 is not working on those BBBs
too! The S2 button is connected to CPU's NRESET_INOUT ball A10.

If I test those use cases with stock u-boot delivered with the BBB the
reset/reboot works each time.

>From the symptoms I guess the barebox is not able to start in each case
when it should.
Where can I start to investigate such an error, what could cause the
hardware glitching away that something is on the edge which does not
work anymore?

I learned it is something like a soft reset which is done in software,
where can I look in the sourcetree for this special part?

Kind Regards
Konstantin 
Kletschke
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



