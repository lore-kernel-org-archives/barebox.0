Delivery-date: Fri, 23 Apr 2021 16:16:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwbW-0005up-A7
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 16:16:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwbV-0007XD-CM
	for lore@pengutronix.de; Fri, 23 Apr 2021 16:16:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oHtihlW8SgoH2X7e2HLLeAGcTVzmXZOgz+/k27IKss8=; b=nw1aqBaAqMaTa1xW7TVrlVTNs
	mFo5cvp7tVSl+mBHi7nhWUeaEXf4Dd2EEzt7XBAo1xav6pO8J9XQ8gJjxHwKCN8LLc5YRO9A+tdgj
	2ZO1ztT9ro1Kw8DJsLtOIp2x133PaCwQxsUlQ0QvagPveBLSu/zIeEC80NWiCizvHm02rCiYuo/ul
	VuOEY7IaOhJzSaORgv5i7yr+cUbY63/q+T1yR2m5tAjOt//clWLeE4VxWYD19nHd1nHMvdA5oLZzb
	2ID2+ZnhLY+QZIzmrQmLJ5jZkWrTq1x1j7Het5J430t1VzN4vbY1HJnVIis03u1c5F0h56et3H9h2
	eTyFVOSZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZwaA-001fn7-0s; Fri, 23 Apr 2021 14:14:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwa1-001fmW-UG
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 14:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=mNjIDRoPqHgzv4KfL5WLdK07AlLjp/k7IjWk+uxFh+o=; b=wYREwOdvs1NpPEoJKJQvhGu+75
 MoasVG4KvdNLC0zLBl65Eq/yGJl0kiKIypBk4TB4YdaLleP65ayEtbZGoK/CTWd/iURnWhukPPs6z
 dT6aDx1a5OEXmz++Kpwa09Gn8xAiRmjAIWRV8s+fI7SMpOaxHso8HMKi7FckPKoAzYYygNZ4ANjBw
 p4m/7/K+2YZBqT8F4LmXrQqHLZeq1E18ouxV2fZ15y941QSip/8Z24vAiSf9g5U97BXBV8W90rcZd
 rDkpOydysugmR8zsL7iXgDXXp/fPinac8ob8trVg0oByGvAbj5sRPpg4kl3Al8MqJAHN6ki5RLqpz
 M3hPMAeQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwZz-00ESla-5D
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 14:14:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwZw-00075c-In; Fri, 23 Apr 2021 16:14:44 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwZw-00046G-9Y; Fri, 23 Apr 2021 16:14:44 +0200
Date: Fri, 23 Apr 2021 16:14:44 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210423141444.weoblw75ooeukowr@pengutronix.de>
References: <20210409131149.2184-1-o.rempel@pengutronix.de>
 <20210409131149.2184-2-o.rempel@pengutronix.de>
 <20210413045810.GE6950@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413045810.GE6950@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:13:04 up 142 days,  4:19, 47 users,  load average: 0.03, 0.06,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_071447_220451_9B4214D8 
X-CRM114-Status: GOOD (  20.24  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/6] mci: atmel_mci: add PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 06:58:10AM +0200, Sascha Hauer wrote:
> On Fri, Apr 09, 2021 at 03:11:44PM +0200, Oleksij Rempel wrote:
> > +int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> > +		      unsigned int clock, unsigned int slot)
> > +{
> > +	struct atmel_mci_priv *priv = &atmci_sdcard;
> > +	struct atmel_mci *host = &priv->host;
> > +	struct mci_ios ios = { .bus_width = MMC_BUS_WIDTH_4, .clock = 25000000 };
> > +
> > +	bio->priv = priv;
> > +	bio->read = at91_mci_bio_read;
> > +
> > +	host->regs = base;
> > +
> > +	atmci_get_cap(host);
> > +
> > +	/* get real HZ */
> > +	host->bus_hz = clock;
> > +
> > +	host->slot_b = slot;
> > +	if (host->slot_b)
> > +		host->sdc_reg = ATMCI_SDCSEL_SLOT_B;
> > +	else
> > +		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
> > +
> > +	atmci_writel(host, ATMCI_DTOR, 0x7f);
> > +
> > +	atmci_common_set_ios(host, &ios);
> 
> Is it necessary to call this? The ROM should have already configured the
> controller. By relying on this you could drop the controller
> initialization code from PBL.

We get MCI controller in disabled state. I do not see any way to avoid
reconfiguration.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

