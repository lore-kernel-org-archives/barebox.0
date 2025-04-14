Delivery-date: Mon, 14 Apr 2025 13:01:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HYn-000bx5-1Z
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:01:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HYm-0006JF-T4
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:01:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvnkqzlT0Q761E0Nv9SunQyqq4nSFLfqOM1svVkNvdE=; b=XCIhGk5YvlD8CMI6NziIOgDeiw
	xrgwTs+0hFYBIC1ZBXp61eXGESsFeXXb5M6cjC6B71/Z7mS1e1W5ARx44UtcFIWTebpHvESmHq2e0
	iVG+xdEsyXjGKqxQdILQFDpHlCVkTe9iaAp+ICTlnd2697LuY49qw+UI7+wUWFOJB8xalZ2y2sEMq
	eTtu1Wk/Ycs7l0+k7gAuyi6SZ8TmxlubDrsrO89OILK59fx2aAjc+Er9p1VtLGA8nUMNkDqNYOS4U
	9VJX6NmAah/uaJphC+K/PRrYglnC85CQ4eqCeAyiU1YpQctwQO1rCSUKW3SgDQsqlwyeyB3UGRiO8
	Qju0tzYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HYN-00000001djS-0vkr;
	Mon, 14 Apr 2025 11:00:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HG7-00000001aPv-3RbS
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:41:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HG6-0007lJ-G4; Mon, 14 Apr 2025 12:41:46 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HG6-000EeY-10;
	Mon, 14 Apr 2025 12:41:46 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HG6-000GBa-0i;
	Mon, 14 Apr 2025 12:41:46 +0200
Date: Mon, 14 Apr 2025 12:41:46 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250414104146.ahyuhyjyydmjhzwn@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-7-a.fatoum@pengutronix.de>
 <20250414101405.hplqfnnk7mmzzukx@pengutronix.de>
 <d99a59d7-062c-4578-92c3-914dc2bfa61a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d99a59d7-062c-4578-92c3-914dc2bfa61a@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_034147_861404_CDF2246C 
X-CRM114-Status: GOOD (  21.84  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/18] blspec: collect bootloader spec entries from ESP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-14, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 4/14/25 12:14, Marco Felsch wrote:
> > On 25-04-14, Ahmad Fatoum wrote:
> >> +	if (!have_esp)
> >> +		goto out;
> >> +
> >> +	for_each_cdev_partition(partcdev, cdev) {
> >> +		if (!(partcdev->flags & DEVFS_PARTITION_BOOTABLE_ESP))
> >> +			continue;
> >> +
> >> +		/*
> >> +		 * ESP is only a fallback. If we have an ESP, but no bootloader spec
> >> +		 * files inside, this is not an error.
> >> +		 */
> >> +		ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
> >> +		if (ret >= 0)
> >> +			found += ret;
> >> +		else
> >> +			err = ret;
> >> +	}
> > 
> > Is it allowed to have multiple ESP partitions? If not we could save us
> > the additional loop and just store the ESP directly and make use of it.
> 
> It may make sense to have multiple ESPs on the same medium, as long as
> some of them set DPS_TYPE_FLAG_NO_AUTO in the upper bits of the Type
> UUID. I didn't want to preclude such a configuration, hence the loop.

Make sense.

Regards,
  Marco

> 
> Thanks,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> >> +
> >> +out:
> >>  	return found ?: err;
> >>  }
> >>  
> >> -- 
> >> 2.39.5
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 


