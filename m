Delivery-date: Thu, 14 Jul 2022 09:58:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtjj-007KsY-GL
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:58:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtjh-0007Y5-94
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:58:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s0Pemd7S1sJ6iioDtvIQPblWE934o/IBR+DYAXhAXLQ=; b=3vMleDWWy3eVoZGH6pKOD/QVwe
	DaMYAK9N6TRDuDSbrwhRkTPEw85Us8tERAOBJbq7E70VO1YUOXZETe/D9n6JmcMoPe/ti00acySew
	H7ygMuNCEtBtg9Eqzm1HgoXjTMetC2wH4dCXb5HvFsvmS0HqcPtVHnJEAzK0IehCEvA3x/qxgDrKs
	P+6rlyyq7OOjPZ5ViOPLb5UBvZacznGDSQdyDV8o7oIj7hq4Ob29S7D9Htk186QcqIWjiBVBnxUpa
	Is86ThIsdx0N8d/bZU3IqFO9kfr8YgbmiL5cEBfx4SR4do00p7M43dqWxBD78ZmlBiawOVfaXaCxn
	NgGXgDrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBti2-00C52y-FA; Thu, 14 Jul 2022 07:56:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtfG-00C3Bl-0b
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:53:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtfE-0006ru-B0; Thu, 14 Jul 2022 09:53:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtfE-000267-10; Thu, 14 Jul 2022 09:53:36 +0200
Date: Thu, 14 Jul 2022 09:53:36 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220714075335.GG23482@pengutronix.de>
References: <20220712164510.efaa3vw4hwabpkza@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220712164510.efaa3vw4hwabpkza@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_005338_084375_06BFA2F1 
X-CRM114-Status: GOOD (  21.48  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Regression in automount between 2021.07.0 and 2022.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 12, 2022 at 06:45:10PM +0200, Uwe Kleine-König wrote:
> Hello,
> 
> while updating barebox from 2021.07.0 to 2022.05.0 I hit a regression:
> 
> The behaviour of 2022.05.0 looks as follows:
> 
> 	bootloader: automount -d /mnt/usbstorage 'usb && if [ -e /dev/disk0.0 ]; then mount /dev/disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount /dev/disk0 /mnt/usbstorage; fi'
> 	bootloader: ls /mnt/usbstorage/
> 
> Without an USB drive this hangs until the watchdog resets the board. I
> guess the problem is that the automount script is called again and again
> because nothing was mounted.

I just tried 2021.07.0 and the behaviour seems to be the same. I don't
think it's a regression.

automount -d /mnt/foo true
ls /mnt/foo

makes barebox hang. That shouldn't happen of course.

> 
> I can workaround that problem by doing:
> 
> 	bootloader: automount -d /mnt/usbstorage 'usb && if [ -e /dev/disk0.0 ]; then mount /dev/disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount /dev/disk0 /mnt/usbstorage; else false; fi'
> 	bootloader: ls /mnt/usbstorage/
> 	running automount command 'usb && if [ -e /dev/disk0.0 ]; then mount /dev/disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount /dev/disk0 /mnt/usbstorage; else false; fi' failed
> 	ls: /mnt/usbstorage/: No such device
> 	running automount command 'usb && if [ -e /dev/disk0.0 ]; then mount /dev/disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount /dev/disk0 /mnt/usbstorage; else false; fi' failed
> 
> but there is still something non-optimal.
> 
> I can look into that, but I'm not entirely sure what the right behaviour
> is.
> 
> Should a command that doesn't mount something considered to have failed?
> (I think that's how it was with 2021.07.0.)

That sounds promising.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


