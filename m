Delivery-date: Mon, 08 Jan 2024 11:00:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmQc-008fwr-12
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:00:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmQb-0000ll-NX
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:00:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LSOeKSyqL0GBrBEDlaahRKivmj97UWlq+NqlQ7D6OVw=; b=BoA/5f3bGktLXtm/HVLfUBimQQ
	WzYUiJxW32Df13jgFLbkJn/kB8Z+iwpZwEGGLirmdRoHQeiaB/T/qNjRtRgoeP/NTzkR7YrMSkaWU
	zn+8/9hTna/FgTTMKFZoVbRgPxC8ZZVzmqj0ycGTQyKXoV2eG1Iq1WZekp5zuHGdLPgez3a1I+lmo
	TtFV8Hkowc/TraTiYxHsG7tF3QkWnHdllERt9rigBW/doEHWTCJd4OPMIgt2Jmw6REv3vZumlSDSl
	kupLWp69kyo9AZaIBpWre648E4LVO6bhM+QSZF0PR+KxA9FBnafcqOz1hCNzSc+2VgxIzTytYjYVS
	H33hDI9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmPU-004Xpy-0f;
	Mon, 08 Jan 2024 09:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmPQ-004Xpc-2d
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 09:59:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMmPP-0000Oj-DT; Mon, 08 Jan 2024 10:59:03 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMmPP-001DQr-0d; Mon, 08 Jan 2024 10:59:03 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMmPO-00Aq15-UX; Mon, 08 Jan 2024 10:59:02 +0100
Date: Mon, 8 Jan 2024 10:59:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108095902.GE1318922@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_015904_877003_93BF7558 
X-CRM114-Status: GOOD (  20.03  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] cdev: delete partitions when deleting master cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:16:23AM +0100, Ahmad Fatoum wrote:
> blockdevice_unregister only calls devfs_remove on the root cdev and
> leaves the partition cdevs dangling. This doesn't break until the
> block device parent struct device is freed at which time, it will
> iterate over its cdevs to free them. If there's partitions there,
> list_del on the partitions triggers a use after free.
> 
> This series fixes this by removing partitions whenever the master cdev
> is deleted.
> 
> Code has been this way since for ever, but virtio deletes its devices on
> shutdown triggering this issue. As virtio isn't that critical, I think
> it's ok to not go into master right away and sit in next first.

Applied, thanks

Sascha

> 
>  common/partitions.c    | 12 +++++++----
>  drivers/base/driver.c  |  2 +-
>  drivers/of/partition.c | 16 +++++++--------
>  fs/devfs-core.c        | 45 +++++++++++++++++++++++++++---------------
>  include/driver.h       | 12 +++++++----
>  lib/bootstrap/devfs.c  |  2 +-
>  6 files changed, 55 insertions(+), 34 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


