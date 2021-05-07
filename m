Delivery-date: Fri, 07 May 2021 10:10:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1levZU-000458-6h
	for lore@lore.pengutronix.de; Fri, 07 May 2021 10:10:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1levZT-0000Xz-El
	for lore@pengutronix.de; Fri, 07 May 2021 10:10:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEm4I6MCxeUZU9iSXsGaIFOTKLgNlYhT8APp7Xlxvig=; b=RzGcZupUXYRd23Jo+b7XcWbU1
	ugJbos+FDJA/ytOn7SShKatK8H60svvEi0G2tqAwVJGoF5gqDhDtijvgpa8srHZQftvT8Sv1fMIvk
	CXQ8awc42JVgVAYtPbrr7UqYb2G/6u/S4Y3tqFvYZfTXNVP2fJozIvmt3lV+O5+27Vh1wxoaJlUAe
	yNoTA8tGZusAc3EtC9UvFXGzJAvsC2kSGfc8g4dQd6PiXoFi4QobH9jVIshfOrDYvnHf0db0JtvfL
	NXl4Oamr6byXU8GqJA+unB2A7pFXVAbc8zd8qqvt7azH1qYLa9DlmYF3FOIZtUpXOHXvfZotSyt8h
	gIAOhY42A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1levYX-006TWH-NH; Fri, 07 May 2021 08:09:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levYT-006TW3-5w
 for barebox@desiato.infradead.org; Fri, 07 May 2021 08:09:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OX7RKgWH4ic+HQH4o8Cmdr7xagGlGtuOxeaMwYO7HKo=; b=Obk0tq25lebACDpSD0ygOY/6Fx
 sZnQEsSaArPpaZI3GZLxCLdEB1E67/ziLn8nXd9NCpyfiNeIt3TqZhg3g4Ki33JtUB24xBBbJdHlO
 jQpuPXuL62TAbD183r1AOAzo47MozHEWP/7cDMqZUBNFCGJJIjqyh3JJ0XvdyO/wYomd65H1KHwo7
 XXe4sf/HUzUdoa6J7/YwztmLdQCvhiNg2MOnTfTUIq25mAEsKWySe6XA8xTahQT/HR3dfb5OY8h0M
 mpq0bB51Ie/Dlw0QyEtzzdFu6uZlhiEEOXgukj6hRX4UygKhNsbVG5RKi3GWrPaNyCnUqcQDERisS
 xiTmZWkw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1levYQ-006g8o-Jf
 for barebox@lists.infradead.org; Fri, 07 May 2021 08:09:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1levYP-0000FM-CC; Fri, 07 May 2021 10:09:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1levYP-0002fN-2d; Fri, 07 May 2021 10:09:45 +0200
Date: Fri, 7 May 2021 10:09:45 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210507080945.GT19819@pengutronix.de>
References: <20210416172646.26834-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416172646.26834-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:23 up 78 days, 11:33, 98 users,  load average: 0.22, 0.22, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_010946_668061_3F4A9A61 
X-CRM114-Status: GOOD (  25.55  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: storage: retry for up to 10s on lengthy HDD spin
 up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 16, 2021 at 07:26:46PM +0200, Ahmad Fatoum wrote:
> Some USB disks take notoriously long to spin up. They are seen by a bus
> scan, but they report ready only after a few seconds have passed. This
> is not a problem if vbus is enabled early on, so devices have had a
> chance to spin up. If vbus is first enabled as part of the usb scan,
> not enough time might have passed for the USB disk to be usable.
> 
> This issue was observed on an i.MX6QP with following topology:
> 
>   usb: USB: scanning bus for devices...
>   usb: 5 USB Device(s) found
>     1 ID 0000:0000
>     |  u-boot EHCI Host Controller
>     |
>     +-2 ID 0424:2517
>     |
>     +-5 ID 1058:2621
>     |    Western Digital Elements 2621
>     ...
> 
> Unplugging and replugging the USB disk and doing a second usb scan
> made the unit ready test succeed. Increasing the retry count
> during initialization has negative consequences for other cases,
> like when a device is unplugged while being probed (which already
> takes way too long).
> 
> Instead, just for the case of a detected USB mass storage device that
> couldn't get ready initially: retry for 10s at initialization time
> before giving up.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - don't increase retry count, instead just check time and don't
>     loop longer than 10s at init time.
> ---
>  drivers/usb/storage/usb.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

