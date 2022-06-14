Delivery-date: Tue, 14 Jun 2022 10:29:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o11v2-0022m7-Ad
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 10:29:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o11v2-0004sH-1v
	for lore@pengutronix.de; Tue, 14 Jun 2022 10:29:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EfxWWcoWbuzHDwMEs37Rw86aa7nbTciRaGX7LWJTKyA=; b=uFaMUNuEFrp86dw38tCqc+eamt
	InXtqz9SDcNJ5bwsTn6TPZwJ+I4lDlYh0HLFGF12ciiTTEaqjyKjaHCYYJGr5oSPOheRCEtBuYzh0
	Ttraz8FypJ5NUUKFqatDXKWNc23c9K6U8S6qko8CkRVx1PNhs8rcdNYthbDdDmGAtlNjxIC5LcABa
	5koS/SYIXu39VC5shwHM/qlfcxYntJ4tqkfTPibLyusl5/SOAWb1JibJbzbMRtfjLm5+VM9tlcdpq
	k0CDvvZ8aDyslCyXmAWWvFaFqeRoO8QHrYSoFbnVBGxzmjB+x96gL9G39nmRtHkp82pz9xnZPWhRP
	8rhrS5Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11tO-008FGe-W8; Tue, 14 Jun 2022 08:27:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o11tJ-008FEI-Ks
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 08:27:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o11tI-0004fM-8B; Tue, 14 Jun 2022 10:27:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o11tH-00043r-Pt; Tue, 14 Jun 2022 10:27:11 +0200
Date: Tue, 14 Jun 2022 10:27:11 +0200
To: Andrej Picej <andrej.picej@norik.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220614082711.GQ1615@pengutronix.de>
References: <c51b2c94-61b7-df44-5d4c-025d18c4b24f@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c51b2c94-61b7-df44-5d4c-025d18c4b24f@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_012713_720903_DFFC2CC9 
X-CRM114-Status: GOOD (  25.69  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Ethernet reinit on phyCORE hangs the device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 14, 2022 at 09:12:23AM +0200, Andrej Picej wrote:
> Hi all,
> 
> when testing barebox ethernet on i.MX6 (phyCORE) we encountered a bug:
> the ethernet re-init on barebox doesn't work! If we do:
> $ ifup eth0
> $ ifdown eth0
> and then:
> $ ifup eth0
> $ ping HOST_IP
> the device hangs and can only be saved by resetting the board manually.

I can confirm the behaviour is the same here.

> 
> We narrowed the problem down to the "fec_tx_task_enable". It seems that
> enabling tx task with writing to TDAR reg hangs the device shortly after.
> 
> Did you guys maybe encounter something similar on i.MX6 boards or on any
> other boards?
> 
> I guess this is a really specific problem as people don't normally do
> ifup/ifdown with ethernet in bootloader :D.

Nope :)

> 
> Do you have any idea what could be the reason or how could this be solved?
> Any useful information would be greatly appreciated.

Part of the problem is that fec_halt() tears down the device completely.
The counterpart of that is fec_init(), but that is called from during
probe only. I think fec_init() should be called from fec_open() as well.

A quick test revealed this is really only part of the problem. The next
one is that fec_update_linkspeed() is not called on second open, so the
fec speed registers will not get their correct value.

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

