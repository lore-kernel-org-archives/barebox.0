Delivery-date: Mon, 25 Apr 2022 12:45:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1niwDZ-00Efbp-RI
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 12:45:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1niwDX-00070y-7S
	for lore@pengutronix.de; Mon, 25 Apr 2022 12:45:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=80F5wRi66pIWlp7UWUtdoLMh2BcNNUIWJSUZq2EDS2w=; b=OEk1bLff0wHHvBRN/PdClyKEZv
	J3Xd7fNiyT5yTDSICX+hq4IKdyutpjZofun72hRuSYTSn7Dnnb07z+U58wmZvkuKHjYtofBCPIUyW
	rVTJgMj4DPHz+yeyAkWLnjlIiYKfRfPvk6oRIRMnGX1GnhSmQe8GTop7NTPJgqJwBVpaxfQ+YWzh0
	8dQS2nJQuHJ4C+XmtKS3/0z+vxvlC3PtGPZ3N85hCtWB/rR2JQfcybpEm/k2svPWUsVzQFUZ1dqCq
	TLD5CGSixRBA1/72VoZwlLT/TZ3sgv6kiGmHXbd0VFHTkDJhVyT+JgYWXS26C9fIdtaYdKZMDoCFl
	NpBuLDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niwC4-009AB2-FP; Mon, 25 Apr 2022 10:43:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niwBy-009A9u-VW
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 10:43:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1niwBx-0006ti-HS; Mon, 25 Apr 2022 12:43:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1niwBx-0006Mc-8I; Mon, 25 Apr 2022 12:43:41 +0200
Date: Mon, 25 Apr 2022 12:43:41 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ore@pengutronix.de
Message-ID: <20220425104341.GK4012@pengutronix.de>
References: <20220425062849.17954-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220425062849.17954-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:35:26 up 25 days, 23:05, 79 users,  load average: 0.20, 0.14, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_034343_049372_61E3ADC8 
X-CRM114-Status: GOOD (  21.92  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] ARM: rpi: enable single entry point for all
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 25, 2022 at 08:28:45AM +0200, Ahmad Fatoum wrote:
> VideoCore can boot kernel directly and will pass appropriate DT
> according to kernel boot convention. If we do arm_cpu_lowlevel_init() in
> the ARM board-dt-2nd, we can have this generic image act as second stage
> on all Raspberry Pi variants.

I just chatted with Ahmad and we both agreed that we'll go into the
direction that we'll remove the individual images after a few releases
and fully go to using the board-dt-2nd image for rpi. We'll leave the
individual images here for now until we are sure the generic image
works.

Applied, thanks

Sascha

> 
> Ahmad Fatoum (4):
>   ARM: cpu: board-dt-2nd: call arm_cpu_lowlevel_init
>   ARM: rpi: don't warn about lack of videocore fdt
>   ARM: rpi: remove outdated comment after stack setup rework
>   ARM: configs: rpi: add and document single barebox-dt-2nd bootloader
> 
>  Documentation/boards/bcm2835.rst          | 6 ++++++
>  arch/arm/boards/raspberry-pi/lowlevel.c   | 1 -
>  arch/arm/boards/raspberry-pi/rpi-common.c | 4 +---
>  arch/arm/configs/rpi_defconfig            | 1 +
>  arch/arm/cpu/board-dt-2nd.c               | 4 ++++
>  5 files changed, 12 insertions(+), 4 deletions(-)
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

