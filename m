Delivery-date: Mon, 14 Apr 2025 13:06:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeO-000cCS-0r
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:06:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeN-0008QP-FQ
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:06:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WjEj5qlEcztw2H+6vdoVa0lmtc9cQwCkUknkRQn5NQQ=; b=y1G7ICdi7IECL6l0eFJXZJJ0Q6
	2fOVmdj+8aFiFc/314olEHTduOOUJElk7BIzA4i1cTa0UYGjKR3yquVAl0HIOAdpFwpwWNywowKZ/
	6JApf/5g8ShZwroXNltZLvGUopcfPXNZESqU0xJJssLkT5lSVYiaoUp0vj7kDHT2LfNeHK5zFJx2R
	0wwQ31l5KEDvbo1x2epRY0uQmoprTpbvi/Eg0WYiuklCyFHKASAt1TbIC9O8R01scj7Ezg9I3pgMY
	F7qt6/j/jdgLypya5Hw5dYNcOVWnm7Koqvi/c9VmjxjOwUwZtNPQxnt+cJtsFjRat9TgzXycraSL+
	b1ueyt2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hdy-00000001f6o-2W9E;
	Mon, 14 Apr 2025 11:06:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HPj-00000001cCM-0SnL
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:51:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HPh-0002jr-MY; Mon, 14 Apr 2025 12:51:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HPh-000Efg-1e;
	Mon, 14 Apr 2025 12:51:41 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u4HPh-000GFY-1M;
	Mon, 14 Apr 2025 12:51:41 +0200
Date: Mon, 14 Apr 2025 12:51:41 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250414105141.zvvackgnnghutku2@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_035143_149324_4E0A6ECE 
X-CRM114-Status: GOOD (  13.00  )
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
Subject: Re: [PATCH 00/18] boot: improve cdev alias and blspec support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 25-04-14, Ahmad Fatoum wrote:
> Building on past top of past bootscan and cdev alias infrastructure in
> next, enable the following:
> 
>    - Favoring entries in GPT XBOOTLDR partition and EFI system
>      partitions, like we already do for MBR XBOOTLDR partition
> 
>    - Allow state backend and other DT bindings to point at a
>      barebox,bootsource node to allow same state DT description
>      to work across different boot media

thanks for your work :) The series LGTM with minor nits.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> 
> Ahmad Fatoum (18):
>   cdev: make cdev_find_child_by_gpt_typeuuid external
>   cdev: constify cdev_find_child_by_gpt_typeuuid's guid_t pointer
>     argument
>   partition: efi: respect DPS_TYPE_FLAG_NO_AUTO flag
>   blspec: iterate over all XBOOTLDR partitions
>   blspec: support GPT XBOOTLDR partition
>   blspec: collect bootloader spec entries from ESP
>   cdev: alias: add support for partition links
>   cdev: do not dereference partname for non-partitions
>   cdev: use common cdev_free helper internally
>   cdev: implement devfs_create_link in terms of devfs_create
>   misc: storage-by-uuid: consider only first diskuuid match
>   misc: storage-by-uuid: prepare for generalizing to different aliases
>   misc: storage-by-uuid: rename to storage-by-alias
>   misc: storage-by-alias: switch over to using cdev aliases
>   misc: storage-by-alias: add support barebox,bootsource
>   misc: storage-by-alias: register as link to main cdev
>   cdev: constify cdev_readlink argument
>   cdev: follow links in cdev_find_child_by_gpt_typeuuid
> 
>  commands/boot.c                 |   1 +
>  common/blspec.c                 |  75 +++++++---
>  common/bootscan.c               |  11 +-
>  common/cdev-alias.c             |  53 ++++---
>  drivers/misc/Kconfig            |  21 ++-
>  drivers/misc/Makefile           |   2 +-
>  drivers/misc/storage-by-alias.c | 236 ++++++++++++++++++++++++++++++++
>  drivers/misc/storage-by-uuid.c  | 202 ---------------------------
>  fs/devfs-core.c                 | 104 ++++++++++----
>  include/block.h                 |   1 +
>  include/bootscan.h              |   5 +-
>  include/driver.h                |  20 +--
>  12 files changed, 440 insertions(+), 291 deletions(-)
>  create mode 100644 drivers/misc/storage-by-alias.c
>  delete mode 100644 drivers/misc/storage-by-uuid.c
> 
> -- 
> 2.39.5
> 
> 
> 


