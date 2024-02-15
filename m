Delivery-date: Thu, 15 Feb 2024 09:32:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raXAN-007CVn-27
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 09:32:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raXAN-000448-0p
	for lore@pengutronix.de; Thu, 15 Feb 2024 09:32:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n+USL9xbJOCi9lItLEj349JYUhE4W1/mfzxszsyfi9Y=; b=xuq3OikUZGAics4ciqk2I+EJpA
	GB3UXRslFhQ+0puWSGh5p3SDQgfzhAyUlhVezJlLK4Vr/EIz2s8MCggks564jNH+KaJZmvL3PXEne
	HGJsLi5gbrMkA1X+66Zu3BpPmJa0atejgeCf8ZJ75Ft8jspWsNrDFrpzZUGHttaubugHTPadevP2Y
	MI8M4XATNddod29HNJOAW0JCRSXJzhuejVaw+G//Uno3H9HEST/5Jgm11mMYM5MMfpis+hphpm+uX
	rD49sFodRrm4xEVNlK+jyto6WHjXtH3mBcjARyGA6F150PH8LmNbLfldVpHOjZbmsO85t5XLriFfB
	8xCYxaZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raX9n-0000000FLpf-21Cc;
	Thu, 15 Feb 2024 08:31:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raX9k-0000000FLpJ-1zsb
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 08:31:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raX9j-00041F-8w; Thu, 15 Feb 2024 09:31:43 +0100
Message-ID: <df8faa26-b8f8-4137-bb8e-53bb12f5bff6@pengutronix.de>
Date: Thu, 15 Feb 2024 09:31:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_003144_548847_ED493855 
X-CRM114-Status: GOOD (  23.88  )
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
Subject: Re: [PATCH 0/7] Detect partition changes at runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 15.02.24 08:47, Sascha Hauer wrote:
> With this series barebox can detect partition table changes at runtime
> and reparse the partition table in that case. With this it's possible
> for example to write an image to a SD card and mount partitions directly
> afterwards without restarting barebox.

That's cool!

How much extra effort do you think would it be to support plug-and-play
of SD-Cards? CONFIG_MCI_POLLER or something would poll card detect and
if it disappears: deregister all partitions and if it appears and probing
is enabled for the device (or it was previously probed), reinit the card
and re-enable the partition table.

That would be a nice stress test for the new functionality :-)

Cheers,
Ahmad

> 
> The fastboot code is also changed to check for existing partitions when
> they are actually used and no longer during initialization time of the
> gadget. With this it becomes possible to expose a full device via
> fastboot and also some not yet existing partitions. When the full device
> is written to one can then write to a (newly created) partition directly
> afterwards.
> 
> The reparsing of the partition table only works when none of the
> partitions are mounted or otherwise opened. When a partition is open
> when the partition table changes, then barebox will continue with
> the old partition table just like Linux does.
> 
> Sascha
> 
> Sascha Hauer (7):
>   fs: move cdev open count to cdev_open()/cdev_close()
>   common: partitions: efi: fix memory leak
>   partition: allow to reparse a partition table
>   block: reparse partition table when necessary
>   fastboot: pass list to fb_addvar()
>   fastboot: add function to free a list of fastboot variables
>   fastboot: evaluate fastboot partitions when used
> 
>  common/block.c          | 30 +++++++++++++++++++--
>  common/fastboot.c       | 59 ++++++++++++++++++++++++++---------------
>  common/partitions.c     | 20 ++++++++++++++
>  common/partitions/efi.c | 10 +++----
>  fs/devfs-core.c         | 13 +++++++--
>  fs/devfs.c              |  4 ---
>  include/block.h         |  2 ++
>  include/disks.h         |  1 +
>  8 files changed, 104 insertions(+), 35 deletions(-)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



