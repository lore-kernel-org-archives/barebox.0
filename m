Delivery-date: Thu, 08 Jun 2023 08:54:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q79XH-00FPMt-6o
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 08:54:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q79XE-0006lP-Ss
	for lore@pengutronix.de; Thu, 08 Jun 2023 08:54:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S6KPVXRAi0qQqD4XRWhjlA6PVdzYzaey320+B8UPH7k=; b=O2Wi0Lvp88eaWSSojEGlD5Kfuq
	fiigjLfBdlgSCo6r8lNPpJBwNI7/Yn4ABy/6iEV5LXijSFgi78di6qpSgv6Rh872oFsTJxn+TfIED
	ACKbBC0vCqk+tsZiwOun/uCV2gwFonAnX7Y/VL84cc9JFCTbby4zKYF0IJTXzgpRxDwAchEK6dJbs
	1RyFPaTnf/nSeIzaXT1VoNRYFLuXo0UgSvlZIotEO4/ffut6EvKvP5SseqchFDASVLUtS1SsUurjR
	r8e1f57YPH9XLHEJlEwTUqA+heicdgyGfIym34vybjNdNp4IX71dDMwrLHeKmBdRofLzZ194x9hmF
	FulmZDYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q79W8-008JVe-1d;
	Thu, 08 Jun 2023 06:53:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q79W4-008JV3-26
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 06:53:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q79W2-0006e0-No; Thu, 08 Jun 2023 08:53:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q79W2-00055J-GH; Thu, 08 Jun 2023 08:53:02 +0200
Date: Thu, 8 Jun 2023 08:53:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230608065302.GJ18491@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_235304_691276_AD36109A 
X-CRM114-Status: GOOD (  27.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/19] state: allow lookup of barebox state partition
 by Type GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 07, 2023 at 02:06:55PM +0200, Ahmad Fatoum wrote:
> So far, we had basically three ways to reference barebox,state on block
> devices:
> 
>   - On platforms with device tree, we point at a fixed partition
>     described in the DT
> 
>   - On platforms without device tree, we have a custom binding that
>     does a global lookup by partuuid (or a more obscure one by diskuuid).
> 
> Both are less than optimal. The first clashes with the need to use
> a GPT partition for the state and the second doesn't allow relating the
> UUID with an actual device for the case where e.g. both an SD-Card and
> an eMMC are flashed with the same image.
> 
> This series fixes that by:
> 
>   - Supporting definition of fixed partitions that are identical to
>     GPT/MBR partitions.
> 
>   - Alternatively, support pointing barebox-state backend at a
>     GPT-partitioned device and the partition with the barebox-state
>     Type GUID will be taken.

Applied, thanks

Sascha

> 
> Changelog written in each patch
> 
> Ahmad Fatoum (19):
>   common: partitions: decouple from EFI GUID definition
>   efi: define efi_guid_t as 32-bit aligned guid_t
>   cdev: fix for_each_cdev macro
>   of: partition: support of_partition_ensure_probed on parent device
>   state: fix deep probe handling
>   of: of_path: always call of_partition_ensure_probed before resolving
>   driver: add new cdev_is_partition helper
>   commands: stat: remove code duplication for type info
>   cdev: use more descriptive struct cdev::diskuuid/partuuid
>   cdev: record whether partition is parsed from OF
>   cdev: have devfs_add_partition return existing identical partition,
>     not NULL
>   block: parse partition table on block device registration
>   common: partitions: record whether disk is GPT or MBR partitioned
>   block: add cdev_is_block_(device|partition|disk) helpers
>   of: export new of_cdev_find helper
>   state: factor device path lookup into helper function
>   cdev: use cdev::dos_partition_type only if cdev_is_mbr_partitioned
>   common: partitions: efi: record type UUID in cdev
>   state: allow lookup of barebox state partition by Type GUID
> 
>  arch/sandbox/board/hostfile.c  |  4 --
>  common/block.c                 |  4 ++
>  common/blspec.c                |  2 +-
>  common/bootm.c                 |  2 +-
>  common/partitions.c            |  4 +-
>  common/partitions/dos.c        |  4 +-
>  common/partitions/efi.c        | 11 ++++--
>  common/partitions/parser.h     |  6 ++-
>  common/state/state.c           | 50 ++++++++++++++++++------
>  drivers/ata/disk_ata_drive.c   |  5 ---
>  drivers/base/driver.c          |  2 +-
>  drivers/block/efi-block-io.c   |  9 +----
>  drivers/block/virtio_blk.c     |  8 +---
>  drivers/mci/mci-core.c         |  6 ---
>  drivers/misc/storage-by-uuid.c |  4 +-
>  drivers/nvme/host/core.c       |  5 ---
>  drivers/of/of_path.c           | 69 ++++++++++++++++++++++++----------
>  drivers/of/partition.c         | 46 ++++++++++++++++++++---
>  drivers/of/platform.c          |  2 +-
>  drivers/usb/storage/usb.c      |  5 ---
>  fs/devfs-core.c                | 67 +++++++++++++++++++++++++--------
>  fs/fs.c                        | 33 +++++++++++-----
>  include/block.h                | 15 ++++++++
>  include/driver.h               | 60 ++++++++++++++++++++++++++---
>  include/efi.h                  | 19 ++++++++--
>  include/efi/partition.h        | 27 ++++++-------
>  include/of.h                   |  1 +
>  include/state.h                |  4 ++
>  lib/Makefile                   |  1 +
>  lib/uuid.c                     | 15 ++++++++
>  30 files changed, 351 insertions(+), 139 deletions(-)
>  create mode 100644 lib/uuid.c
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


