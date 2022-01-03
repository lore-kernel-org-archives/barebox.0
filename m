Delivery-date: Mon, 03 Jan 2022 10:07:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4JJL-009gnG-4i
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 10:07:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4JJJ-0005aY-FR
	for lore@pengutronix.de; Mon, 03 Jan 2022 10:07:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VnDixDPn0R6toewV3MGzMIC9HU+VLNob9giUo/UqfQw=; b=uy9Jpp5gQj4Nmc4Ua0ORKsi5wm
	FFU0mw63RxhQhsx3qzPlMMTY7d/Mwl4QHYLX7RilixwFOSfbYJHgtI5RP79K2HHASg6r8oVBueyIf
	H59i5wvRlweJEod67cyJgYHp+731ppC/DRpiRbaZ6aieOkdLtDqalEhknIB13X8LzQdSwJ48LUFkK
	hJwbZNNx4QSjmYg+v1LiOSZ8eoaL+o2EC9ZHoF8H1iyBiBteULdLUXvseTUG3QxLh5vKUuNAZEEvW
	H80XQ7UMt62LPoboMxQDY2y4GlnMBwNIQSVyYfcLo2WJGesy2QfKvCFiTayqmYPi6FHDAkUnohfE5
	YIpvJf+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4JHs-008dZj-Um; Mon, 03 Jan 2022 09:05:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4JHn-008dYH-WA
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 09:05:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4JHm-0005Re-Es; Mon, 03 Jan 2022 10:05:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4JHl-0000jo-Sr; Mon, 03 Jan 2022 10:05:45 +0100
Date: Mon, 3 Jan 2022 10:05:45 +0100
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220103090545.GG6003@pengutronix.de>
References: <20211216122653.2335949-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211216122653.2335949-1-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:05:32 up 23 days, 17:51, 64 users,  load average: 1.33, 1.31, 1.32
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_010548_061571_6D9FBA45 
X-CRM114-Status: GOOD (  22.90  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] watchdog: imxwd: suspend watchdog timer in low power mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 16, 2021 at 01:26:53PM +0100, Andrej Picej wrote:
> Watchdog timer should be disabled in low power mode. The problem that
> was observed was that when the watchdog is started from barebox, kernel
> driver doesn't do its own setup again and in turn this bit is left
> unset. Moreover, this bit is write-once and has to be set before
> enabling the watchdog, leaving responsibility for proper setup to a
> party first using the watchdog timer (e.g. bootloader). Issue manifests
> itself later on, when device enters low power mode (e.g. suspend) for
> more amount of time than what is maximum watchdog timeout (128s). After
> that period of time, device will not recover ever as there is no service
> patting the watchdog (CPU is suspended). This means that the device can
> hang in suspend mode or it performs an unexpected reset.
> 
> Thus to avoid suspend/resume problems when watchdog is started already
> in the bootloader, align bootloader driver settings with kernel settings.
> Kernel driver has been already setting this bit since 2014.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  drivers/watchdog/imxwd.c | 4 ++++
>  1 file changed, 4 insertions(+)

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

