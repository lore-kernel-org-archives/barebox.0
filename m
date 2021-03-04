Delivery-date: Thu, 04 Mar 2021 14:13:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHnnH-0001CQ-JZ
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 14:13:31 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHnnG-00036G-AF
	for lore@pengutronix.de; Thu, 04 Mar 2021 14:13:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g5kYOrdExDj4PiN0cBq0xh9v05bz1oD13byfhwLfr60=; b=LS0pcJBknFcML9JgK63GAXR8H
	kP7ytCHb9HpWutFXh6cOaO5LBRQGivyfi3a43PvJScCXGRVzwSJRv2N5e35vOmzIUpkYjZvJoq0xa
	j1TRvAScklDLr8GjLYIsVJYqjoKDyxwr4oy8Eyjxo0VNBJDtWFkyNoFTM+0bTiKsVgUg/D14xbLE4
	pY/X0lAHRabudmdRBePbPbA4qAERKES2bcl9KwVRLNXOoi/vRqCZi2A8xvs16i2UIe0+0BTFoCJuD
	yno202lW9oO4Zbl9zxjLwogZI0896SxG1fn0gt6WjFJwwb9XOeVB7nM1aYs8piMbaknLlH/iW5BWb
	Qpm/8/3Qg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHnjP-008hOA-GN; Thu, 04 Mar 2021 13:09:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHnhO-008hHl-5h
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 13:08:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHnhN-00029A-DV; Thu, 04 Mar 2021 14:07:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHnhN-0005pU-2J; Thu, 04 Mar 2021 14:07:25 +0100
Date: Thu, 4 Mar 2021 14:07:25 +0100
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210304130725.GA15495@pengutronix.de>
References: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:55:37 up 14 days, 16:19, 82 users,  load average: 0.20, 0.18, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Renaud,

On Thu, Mar 04, 2021 at 12:28:03PM +0000, Barbier, Renaud wrote:
> Looking at many ARM platforms I see the UART is set in the PBL.
> 
> I guess the baud rate is fixed.
> 
> I am looking into a way to make the baud rate configurable. 
> Would it possible from the PBL to read the "baudrate" variable from the environment?

There is CONFIG_BAUDRATE which could be configured in Kconfig you could
evaluate in the uart setup.
Reading the environment from PBL is something you don't want to do as
you would need drivers for all possible environment locations in PBL.
PBL console and configurable baudrate don't go together well, better
don't do it.

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

