Delivery-date: Tue, 07 Dec 2021 15:41:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mubee-0007lI-Gp
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 15:41:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mubed-0004nc-9C
	for lore@pengutronix.de; Tue, 07 Dec 2021 15:41:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wzruoiehAHRoIS3lms6K4kwqhd71OmdY7uywuuvLWp4=; b=TMTVMeV2Owzt7v1giphGwYTGIi
	ERKRKO+Oq+aP7V9bOr8ZOsYEf+iCMtvi/zhRBwXa9uL1DfLdI9wOY9YnwxiSGlJGh0RV7AZOQINtU
	2wQRSo3l2RzOPhhufPJ/kta5nEOGpoPBlKkVXkMvRtsdphgvJ1Xfs9aHkCQOG41iOUmyp3wJBgR6w
	4UDpCa50+jHA2ux30oovx6fZfixV/HJ3rgJMV2wKxEYi8mUH5a/h3QNGiBW3N+N09ItCg7VI9+gK9
	ESvpHmHtROhMdHyTCwsJNGTzfAJGs4HiSAXHxniOexAbi+NRU8dGh+vYrVWOkPtB5tehs36PW7JuY
	1+lpzKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mubcp-008yNr-Ew; Tue, 07 Dec 2021 14:39:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mub4h-008pJH-5i
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 14:04:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mub4f-0007b4-Sd; Tue, 07 Dec 2021 15:04:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mub4f-0007ik-Jm; Tue, 07 Dec 2021 15:04:05 +0100
Date: Tue, 7 Dec 2021 15:04:05 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207140405.GN28260@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:03:54 up 292 days, 17:27, 152 users,  load average: 0.58, 0.47,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_060407_272041_548E8BDE 
X-CRM114-Status: GOOD (  22.39  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] ARM/RISC-V: qemu-virt: share common cleaned up
 state/env support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 25, 2021 at 05:10:35PM +0100, Ahmad Fatoum wrote:
> ARM QEMU Virt has support for environment/state. Make this available in
> RISC-V as well, while cleaning up the code a bit and fixing a bug due to
> too early of_probe at pure_initcall level.
> 
> Ahmad Fatoum (7):
>   state: mark state init errors specially
>   state: make first boot less verbose
>   of: overlay: rescan aliases calling of_overlay_apply_tree on live tree
>   ARM: qemu: enable deep probe support
>   ARM: qemu: move board code to central location
>   common: boards: qemu-virt: genericize to support non-ARM architectures
>   RISC-V: qemu-virt: add overlay for environment and state

Applied, thanks

Sascha

> 
>  arch/arm/Kconfig                              |  1 +
>  arch/arm/boards/Makefile                      |  1 -
>  arch/arm/boards/qemu-virt/Makefile            |  1 -
>  arch/riscv/Kconfig.socs                       | 10 +++
>  arch/riscv/configs/virt32_defconfig           |  4 ++
>  arch/riscv/configs/virt64_defconfig           |  4 ++
>  common/Kconfig                                |  2 +
>  common/Makefile                               |  1 +
>  common/boards/Kconfig                         |  4 ++
>  common/boards/Makefile                        |  3 +
>  common/boards/qemu-virt/Makefile              |  7 +++
>  {arch/arm => common}/boards/qemu-virt/board.c | 61 ++++++++-----------
>  .../boards/qemu-virt/overlay-of-flash.dts     | 13 +++-
>  common/state/backend_format_raw.c             |  7 +--
>  common/state/backend_storage.c                | 17 +++---
>  common/state/state.c                          |  4 +-
>  common/state/state.h                          | 14 +++++
>  drivers/misc/state.c                          |  4 +-
>  drivers/of/overlay.c                          |  4 ++
>  19 files changed, 110 insertions(+), 52 deletions(-)
>  create mode 100644 common/boards/Kconfig
>  create mode 100644 common/boards/Makefile
>  create mode 100644 common/boards/qemu-virt/Makefile
>  rename {arch/arm => common}/boards/qemu-virt/board.c (64%)
>  rename {arch/arm => common}/boards/qemu-virt/overlay-of-flash.dts (83%)
> 
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

