Delivery-date: Mon, 02 Jun 2025 16:51:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM6VB-002zkM-1T
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 16:51:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM6VA-00077f-T5
	for lore@pengutronix.de; Mon, 02 Jun 2025 16:51:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=adkwvpp6p5MQ3xB3COm2grZtQTakmP/bguyvnvsHQS8=; b=n06R/6kDzQpsf6g0/WqnLl2zIn
	YieelG7ddCEaa8vHswC/5wtkM+yW3AGo5iSFofXyvzziACVB1iQInFkE6/FUCoiNHAqN0RBQOVu8w
	Jds50yilqa0L9gFW5eIMQ0zB0zsIXh04xbbrtLyKi0jdjin0OSv4/7Rg5iMZcKxylx8/d8Ib/WdpM
	dqJjJ0Jiy2kBA72Hsfru8YujUcX3amwGgnInD/G5c4cUMvl2QELfVs0VSP84qVOku/ErWmwBei5WQ
	Wq+4JjpYY3Lvg10ci1G5cqul62XHm3Hs+ca/tfndOmGYWahx9qlYiZj3lrYqMG41bltk2a1rHW54o
	FysvfcXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM6Uc-00000007fjZ-46A3;
	Mon, 02 Jun 2025 14:50:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM6UZ-00000007fip-3O6m
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 14:50:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM6UY-0006kV-8S; Mon, 02 Jun 2025 16:50:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM6UY-001TJq-0E;
	Mon, 02 Jun 2025 16:50:22 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM6UX-006giK-36;
	Mon, 02 Jun 2025 16:50:21 +0200
Date: Mon, 2 Jun 2025 16:50:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aD26LTpV_irbVcGw@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
 <20250602-createnv-v1-4-c3239ff875d5@pengutronix.de>
 <264954b4-d6d3-4ea1-a962-b2bc8a298bb9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <264954b4-d6d3-4ea1-a962-b2bc8a298bb9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_075023_848746_88E5B6E7 
X-CRM114-Status: GOOD (  27.78  )
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
Subject: Re: [PATCH 4/5] commands: create createnv command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 02, 2025 at 03:48:26PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 02.06.25 15:28, Sascha Hauer wrote:
> > We want to move away from describing the barebox environment explicitly
> > in the device tree and instead motivate usage of GPT partitions for the
> > envrionment. This patch creates a createnv command to facilitate this.
> > It creates an environment partition on the specified device and if
> > necessary also a GPT partition table. In the simplest case a "createnv"
> > without arguments will create a partition on the device barebox itself
> > booted from. Both the device and the size of the partition can be
> > specified on the command line.
> > 
> > We can't create environment partitions on a device containing a MBR
> > partition table, so a MBR partitioned device won't be touched.
> > 
> > As an additional safety net the command will ask the user if altering
> > the partition table is really desired. This behaviour can be overwritten
> > by specifying -f on the command line.
> 
> Could we have saveenv/loadenv nudge the user towards createnv if CMD_CREATENV
> is enabled?
> 
> Something along the lines of:
> 
>   saveenv: no environment was registered
>   saveenv: run createnv to create an ad-hoc environment

I was more thinking towards issuing a message like that during startup,
because by then we know already that we don't have an environment
partition. The corresponding patch is not yet ready though, so I sent
without it.

Do you see any advantages putting the message into the saveenv command?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


