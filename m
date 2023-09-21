Delivery-date: Thu, 21 Sep 2023 10:50:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFOL-005gvv-0I
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:50:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjFOJ-0004nu-2F
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:50:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vPAXB94hpa56GcOxA/kOUVp44fPzciJHOUD8KJekbLA=; b=TWZ/uLSZsoZP1eSSzaTdKAxV/t
	WoMkgZC73Ozp0M6bRd0uISSmX5wLG+mXbpP6vpKiGpoANyfcSlNSo6pihCICrcY/cjAgr0UK5nZyZ
	mH3R097cWPKEEOcs9bD3NthTG2mChKhL7X023CXZ/qbVacITkIHR3A9G0ybl9uzy+dZbBVHTQkd+e
	EKu6Wav2DYtib/Y2+iYjdnmE/x0zWTIwK0Nxri2N4G6UNicOHt4u8jdySG+vetQ8X7GZ1JTBSMCdo
	ySnxQt+DZX/g57gMM46nuuWHVAwG/qJTv9PcJVtB1Qd8sbdEkbHeQzojhP0LCs6g/umvHLMdAZDHu
	Uz0FEcag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFN2-005WHE-0g;
	Thu, 21 Sep 2023 08:49:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFMz-005WFx-1S
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:49:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjFMx-0004UR-QX; Thu, 21 Sep 2023 10:49:07 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjFMx-007sst-9O; Thu, 21 Sep 2023 10:49:07 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjFMx-00AfNs-60; Thu, 21 Sep 2023 10:49:07 +0200
Date: Thu, 21 Sep 2023 10:49:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921084907.GG637806@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_014909_487030_F8736CA6 
X-CRM114-Status: GOOD (  17.82  )
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
Subject: Re: [PATCH 0/5] add stack protector and guard page support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 05:08:55PM +0200, Ahmad Fatoum wrote:
> GCC's strong stack protector feature is increasingly used as default in
> many distros, because of comparatively low overhead. This series adds
> support in barebox to catch stack frame overflow as well as a guard
> page feature to catch stack region overflow.
> 
> Ahmad Fatoum (5):
>   include: move PAGE_ definitions into linux/pagemap.h
>   ARM: mark early C setup functions as __prereloc
>   lib: add stackprotector support
>   ARM: mmu: catch stack overflowing into TTB with stack guard page
>   commands: add stacksmash command for causing stack overflows

Applied, thanks

Sascha

> 
>  Makefile                           |   3 -
>  arch/arm/cpu/common.c              |   2 +-
>  arch/arm/cpu/interrupts_32.c       |  21 +++++-
>  arch/arm/cpu/interrupts_64.c       |  38 +++++++---
>  arch/arm/cpu/mmu_32.c              |  16 +++++
>  arch/arm/cpu/mmu_64.c              |  15 ++++
>  arch/arm/cpu/start.c               |   4 +-
>  arch/arm/include/asm/barebox-arm.h |  18 ++++-
>  arch/arm/include/asm/reloc.h       |   2 +-
>  arch/arm/lib64/string.c            |   2 +-
>  commands/Kconfig                   |   6 ++
>  commands/Makefile                  |   1 +
>  commands/stacksmash.c              |  58 ++++++++++++++++
>  include/common.h                   |   6 +-
>  include/linux/compiler_types.h     |  21 ++++++
>  include/linux/pagemap.h            |   8 ++-
>  lib/Kconfig                        |   2 +
>  lib/Kconfig.hardening              | 108 +++++++++++++++++++++++++++++
>  lib/Makefile                       |   1 +
>  lib/stackprot.c                    |  32 +++++++++
>  lib/string.c                       |   2 +-
>  scripts/Makefile.lib               |  10 +++
>  22 files changed, 350 insertions(+), 26 deletions(-)
>  create mode 100644 commands/stacksmash.c
>  create mode 100644 lib/Kconfig.hardening
>  create mode 100644 lib/stackprot.c
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


