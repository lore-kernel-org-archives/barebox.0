Delivery-date: Wed, 03 Dec 2025 10:34:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQjFa-007T4E-18
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 10:34:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQjFZ-0001J6-Q9
	for lore@pengutronix.de; Wed, 03 Dec 2025 10:34:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=og6VCQ/+dozzGpFgxbjmotIQ8eAA3iKMakfmw3Jh/RE=; b=vH5xOMJAL4gDTghTyxigzKIp9s
	uiO0tRqGai4M353BAIr+4brRefjZ2TIoCoD13kzGyLayU8JfKXvfeJRhoizBezOR2zInKb+SqonDA
	QasShEYwOL1tUY+gJSFSvqVEMvXlF14fXGg81AohDZo7k+RKk/3iaBnhDP/pQI3M9+GANzrSTErl5
	unAN76A604VgZV/MHzdgi/rClKE97S2pWovQw78mxUTlhpsM1OB86jTOfFBTdVGa+OGY4K3lZEN3w
	sWlPdfE83bD/ihbf3A24LP4HJVPY2EZG0LkIqHzb+CbFrEAWe0dMWh6Aiub6u+YKk+Bq9yLMSYiMt
	9yHGNtGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjF1-00000006ObX-3OUo;
	Wed, 03 Dec 2025 09:33:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjEz-00000006ObA-2m69
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 09:33:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vQjEy-0001EB-43; Wed, 03 Dec 2025 10:33:40 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQjEx-003km6-30;
	Wed, 03 Dec 2025 10:33:39 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQjEx-003ZQM-2g;
	Wed, 03 Dec 2025 10:33:39 +0100
Date: Wed, 3 Dec 2025 10:33:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aTAD8x0vakc7ESTx@pengutronix.de>
References: <20251128150434.3842713-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201072452.1829564-1-f.pflug@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_013341_723237_D9D89A9E 
X-CRM114-Status: GOOD (  18.66  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

Could you next time send a new revision as new thread rather than as a
reply to the previous revision? That makes it easier to keep track.

Sascha

On Mon, Dec 01, 2025 at 08:20:56AM +0100, Fabian Pflug wrote:
> Changes in v5:
> Updated documentation for nfs
> Added documentation about new bootm variable
> Fixed commit message for last patch
> 
> Fabian Pflug (4):
>   block.h: renamed get_rootargs to get_root
>   fs: split rootargs into root and options
>   bootm: use new api to get kernel command line params
>   bootm: introduce bootm.root_param variable
> 
>  Documentation/filesystems/nfs.rst             | 10 +--
>  .../migration-guides/migration-master.rst     | 18 ++++++
>  Documentation/user/security.rst               | 16 +++++
>  common/block.c                                | 37 ++++++++---
>  common/bootm.c                                | 37 +++++++----
>  drivers/mci/mci-core.c                        |  4 +-
>  fs/9p/vfs_super.c                             |  6 +-
>  fs/fs.c                                       | 61 ++++++++++---------
>  fs/nfs.c                                      |  4 +-
>  fs/squashfs/squashfs.c                        | 13 ++--
>  fs/ubifs/ubifs.c                              | 12 ++--
>  include/block.h                               |  7 ++-
>  include/bootargs.h                            |  2 +
>  include/bootm.h                               |  1 +
>  include/fs.h                                  |  7 ++-
>  15 files changed, 160 insertions(+), 75 deletions(-)
>  create mode 100644 Documentation/migration-guides/migration-master.rst
> 
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


