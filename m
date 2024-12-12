Delivery-date: Thu, 12 Dec 2024 10:04:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLf7S-0077xM-0b
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 10:04:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLf7S-0008PX-3r
	for lore@pengutronix.de; Thu, 12 Dec 2024 10:04:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ia4rYw/XCmVa3BwDyz3kP6tqVdgQ4h2wpiMpMm6hkuw=; b=V8vgs1Dc8AtQ6Ta807Kg3hBWL6
	lESKW7wRYrFRndPmwZ3PS5HR9AHnnZFrxMX4QhwslstlBmmp41cDWaCYF28d8/HvwDs0izAH+sOA9
	UMRuVZ9LW6KY2auC4webAMUGqbmuiZlUJidC3bDGQuGlL1A7OGeedgbyEBIPZSx28B5MUxCWrXyqQ
	IKC7oo3uXPv0omjjS4VnnYcXP0JeWykE20S9jEHCHmybtTitQPFGuXanlLayCX5fkqyAT0jS1aZ2l
	tGDj0RaBMemoJHjBE1h9z++XXH0+TZqx5YBwxu94K1JdI/IINeUEPhSoARkWZvl/90SnrSFBdq6lC
	QbOoSlbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLf6s-0000000HQ79-0myA;
	Thu, 12 Dec 2024 09:03:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLf6q-0000000HQ6k-1oFe
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 09:03:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tLf6n-0008JJ-SH; Thu, 12 Dec 2024 10:03:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tLf6m-0030Ma-2T;
	Thu, 12 Dec 2024 10:03:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tLf6n-00CNDE-1G;
	Thu, 12 Dec 2024 10:03:45 +0100
Date: Thu, 12 Dec 2024 10:03:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z1qm8cXe6SmEGxvM@pengutronix.de>
References: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_010348_469374_6F88E27E 
X-CRM114-Status: GOOD (  17.16  )
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
Subject: Re: Possible regression 2024.12.0 in parsing "aliases"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Wed, Dec 11, 2024 at 09:14:32AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> After updating barebox to version 2024.12.0, an error message appeared
> when loading
> the RK3568 board. Accordingly, the I2C1 interface does not work.
> In the previous version (2024.10.0), everything worked as it should. I did not
> understand what the problem is, but I suspect that aliases are now
> parsed incorrectly.
> The system has an alias i2c1 (this is the basic SOC i2c1 interface)
> and an alias i2c10 for the GPIO expander. Perhaps the problem is somewhere here?
> 
> ERROR: rk3x-i2c fe5a0000.i2c@fe5a0000.of: probe failed: Device or resource busy

The culprit is likely somewhere in these commits:

79357f8b96 i2c: start dynamic I2C bus numbers at 32
b474672545 i2c: get adapter.nr from device tree
5b167ad520 i2c: set adapter.nr explicitly to -1

We now use of_alias_get_id() to get the i2c adapter nr. Which adapter
number does fe5a0000.i2c@fe5a0000.of get and which i2c bus device has
already occupied that number?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


