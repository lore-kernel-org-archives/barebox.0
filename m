Delivery-date: Fri, 08 Mar 2024 11:51:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXpR-00DbaS-32
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 11:51:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXpR-0003Vn-AH
	for lore@pengutronix.de; Fri, 08 Mar 2024 11:51:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7opTCDlgd84dEBMBJCM+tnmMhxAvJ1XNNGGSMHiOd9c=; b=4ozha0YZCRFXygvJLN5yi4Ph3F
	VM3rsmscPS315KtWs+BcNkxHTmDpGtSW9OJJlr+L3Z8XK4hsneG+IQWIevTRgyGHOyNMvQgTJdD0q
	A9h1sc0KIuIOxXozk3Qm8yB5Cex4Z+LvFbytrb9PXRpeFtR8Pj0i7Cw6o64oBcPyBh5LueZk1b3KP
	clw+aAP6XjkDzjnBO0F6zRcJbdqFeNcukkMFZHEyR2ePnxVdVrZ8zZGGnN3BMv0RiJay7Ke9yi2Lx
	YCCWnggDfHxGM9DcocfzfeCyez8D47KpRA7hdNPiPhW/FIF8qQbaLeStE1E1lMZ/u6CR0GYJUPlCR
	NDiFIVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXp0-00000008qhr-23kW;
	Fri, 08 Mar 2024 10:51:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXox-00000008qhT-1fAr
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 10:51:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1riXov-00034J-FB; Fri, 08 Mar 2024 11:51:21 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1riXov-0057PY-2W; Fri, 08 Mar 2024 11:51:21 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1riXou-007uIh-3D;
	Fri, 08 Mar 2024 11:51:21 +0100
Date: Fri, 8 Mar 2024 11:51:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
	barebox@lists.infradead.org
Message-ID: <ZertqFHxingnr6kd@pengutronix.de>
References: <20240308091507.249009-3-uwe@kleine-koenig.org>
 <20240308091507.249009-4-uwe@kleine-koenig.org>
 <ace334e4-d2ce-4e22-b6ce-e03550b1ad21@pengutronix.de>
 <brq6pmetsgbghlfxfqcyxe3dslsjntd22wfme2mg7fjrr7satz@2we7kevot4fc>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <brq6pmetsgbghlfxfqcyxe3dslsjntd22wfme2mg7fjrr7satz@2we7kevot4fc>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_025123_532068_742CBCB2 
X-CRM114-Status: GOOD (  24.39  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] of: partition: Use mtd partitioning for of_fixup
 instead of the cdev variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 08, 2024 at 11:14:28AM +0100, Uwe Kleine-König wrote:
> Hello,
> 
> On Fri, Mar 08, 2024 at 10:27:21AM +0100, Ahmad Fatoum wrote:
> > On 08.03.24 10:15, Uwe Kleine-König wrote:
> > > From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> > > 
> > > It was already noticed in commit 9d42c77f126e ("devfs: take into account
> > > for the partitions check that mtd is different") that the partitioning
> > > info is stored differently for mtd devices. Instead of only getting the
> > > partion size from the right spot, use the right data completely.
> > 
> > I read both this commit message and that of the referenced commit and I
> > don't quite understand what the issue is. Could you add a short sentence
> > about what particular issue this fix addresses?
> 
> The situation fixed here is:
> 
> After bootup the partitioning information for mtd devices exists in both
> locations (cdev->partitions and cdev->mtd->partitions). An interactive
> addpart only adds the the latter. This patch fixes the of fixup to also
> use the latter.

I don't think this is true. Looking at __devfs_add_partition() we have:

	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
		struct mtd_info *mtd;

		mtd = mtd_add_partition(cdev->mtd, offset, size,
				partinfo->flags, partinfo->name);
		if (IS_ERR(mtd))
			return (void *)mtd;

		list_add_tail(&mtd->cdev.partition_entry, &cdev->partitions);
		return &mtd->cdev;
	}

	...

	list_add_tail(&new->partition_entry, &cdev->partitions);

So all partitions end up in the &cdev->partitions list.

of_fixup_partitions() currently iterates over &cdev->partitions, but it
has:

	if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
		continue;

And I think this is your problem. The newly created partition is ignored
during fixup because it doesn't have the DEVFS_PARTITION_FROM_OF flag
set. What you do is a complicated way of ignoring this flag in your
additional iteration over &cdev->partitions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


