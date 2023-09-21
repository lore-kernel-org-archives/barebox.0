Delivery-date: Thu, 21 Sep 2023 10:19:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEuT-005f8X-PZ
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:19:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEuR-00064y-NI
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:19:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yGGXfqCQzBN+tTFCnHZUzze9ETqyB4y5CFqvoNO3ZD0=; b=BX7TXmJZHHdjGW02j4KYsXcA9r
	TDFvGwb9EM3K7JOzD4k3NkzloyJqLBxS0sbzMgvej1k51h69QDxjuFIlDmIITA1aqSZ7OnMngoEDH
	+5l/qmWRm8VflgnSa2yvOlIK7FmK1+JKsSrc/7GqcezQNXOnBjQ8esv16PxGI5ri2OXDZQHnXFsqK
	Y01SEDg+9A1oPnKy9/cpisMxdyOMBnFXpr/CLCk7xBayuY5uq7iF/hcESdZiouCi7IblfbUy/sdsS
	w1c0oIacERJ8y7tHLKpInbKFjmm5I9ebfclgUgg7eRV2XqhICzvV1TSX5u/g/Zt76I1ypjL0zURpJ
	m7ss8z/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEtK-005ThJ-1x;
	Thu, 21 Sep 2023 08:18:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEtH-005Tgv-2M
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEtG-0005iZ-Hy; Thu, 21 Sep 2023 10:18:26 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEtG-007sl4-4n; Thu, 21 Sep 2023 10:18:26 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEtG-00AfDG-2O; Thu, 21 Sep 2023 10:18:26 +0200
Date: Thu, 21 Sep 2023 10:18:26 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921081826.GF637806@pengutronix.de>
References: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_011827_766117_21A692DB 
X-CRM114-Status: GOOD (  20.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] ARM: support booting arbitrary ELF executables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 02:57:12PM +0200, Ahmad Fatoum wrote:
> Unlike MIPS and kvx, where ELF is used as kernel image format, Linux
> ARM support defines its own flattened format.
> 
> Other kernels may be distributed as ELF images though, so it makes
> sense to enable booting of ELF images on ARM as well.
> 
> This has been tested booting FreeRTOS ELF executables on the ZynqMP.
> 
> Note that this will refuse to boot kernel ELF images as those have
> type dyn, while the common ELF code in barebox will only boot type exec.
> 
> Ahmad Fatoum (3):
>   common: elf: support loading to address 0
>   ARM: add support for booting ELF executables
>   kbuild: support generating stripped ELF files for PBL

Applied, thanks

Sascha

> 
>  Makefile                   |  4 +--
>  arch/arm/cpu/Makefile      |  1 +
>  arch/arm/cpu/bootm-elf.c   | 56 ++++++++++++++++++++++++++++++++++++++
>  arch/arm/include/asm/elf.h |  5 ++++
>  common/elf.c               | 17 ++++++++----
>  images/Makefile            | 10 +++++--
>  include/elf.h              |  1 +
>  7 files changed, 83 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm/cpu/bootm-elf.c
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


