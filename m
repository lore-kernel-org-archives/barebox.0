Delivery-date: Wed, 23 Feb 2022 11:58:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMpM5-007Ywn-8o
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 11:58:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMpM3-0004hN-RT
	for lore@pengutronix.de; Wed, 23 Feb 2022 11:58:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VAlgb+YkvhcY1AIbKRAuwW1Th5NdxdtPLDT7KSc1vDI=; b=bLi7mPHsuRd3iH5xejeSpAmMQi
	pIeIjAdzHw81O1xMHjmXrURj7I7nSL4+Ntz0q/wXUbKJQxpshgPgRINy2gJ2j8oi6w5mG4AX//ldi
	GSxZSym3JvQcSmUqt5dffiaNrsXBgevuOf2BDOlMay8wHJ0wszv1a6/+klllNtClcuc+kg6J2kBcc
	w8Y5gA90aU3T6RhX366EG2x3YF6VbqyooRmQ3MztIqyAjy7gXERrzC4LwWGp8TBevYeJohcM5LQbp
	dTetRfDFNF6QuHmd+6ar5Z2G9e097AimLlFdvuwm4Nv2f85aqFL3UB65pyh+KtiQ+u+GcAKlR5nMj
	RKY5Z2gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMpKX-00DlyF-Ru; Wed, 23 Feb 2022 10:57:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMpKS-00Dlxk-Eb
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 10:57:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMpKQ-0004cw-Vx; Wed, 23 Feb 2022 11:57:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nMpKP-0005bD-OU; Wed, 23 Feb 2022 11:57:01 +0100
Date: Wed, 23 Feb 2022 11:57:01 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Xogium <contact@xogium.me>
Message-ID: <20220223105701.GM9136@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:56:38 up 74 days, 19:42, 91 users,  load average: 0.17, 0.16, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_025704_513607_F6454028 
X-CRM114-Status: GOOD (  22.66  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/24] ARM: stm32mp: add trusted bootchain (SCMI&FIP)
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Feb 20, 2022 at 01:47:12PM +0100, Ahmad Fatoum wrote:
> ST calls trusted firmware + SCMI for accessing some secure resources the
> trusted boot chain (as opposed to the basic bootchain). This is
> independent of cryptographically secured boot. So far, barebox generated
> images with a STM32 header prepended, which could be booted after
> upstream TF-A. This extends barebox to generate an extra image suitable
> for inclusion in A TF-A Firmware Image Package and teaches barebox to
> support firmware clocks and resets provided by TF-A over secure monitor
> calls. There are no upstream DTs yet with SCMI and intention seems to be
> to have boot firmware fix up the nodes. The SCMI changes here have been
> tested by taking OpenSTLinux with its downstream TF-A, U-Boot, OP-TEE
> and Linux components and just replacing U-Boot with barebox via fiptool
> update.
> 
> Cheers,
> Ahmad Fatoum (24):
>   PBL: fdt: factor reg property parsing into helper
>   pinctrl: stm32: use gpio-ranges instead of alias
>   ARM: stm32mp: simplify with build_stm32mp_image macro
>   ARM: stm32mp: change stm32image extension to .stm32
>   filetype: detect TF-A Firmware Image Packages (FIP)
>   scripts: add tool to adjust bl33 load address in existing FIP
>   ARM: stm32mp: build extra barebox-stm32mp-generic-bl33.img
>   ARM: stm32mp: ddrctrl: fix wrong register field widths
>   reset: stm32: drop stm32mp1_reset_ops indirection
>   reset: move stm32 reset code to drivers/power/reset
>   ARM: smccc: sync header with upstream
>   firmware: import Linux v5.13 SCMI support
>   reset: add SCMI support
>   clk: add SCMI clock driver
>   regulator: add SCMI regulator driver
>   clk: accept const arguments in clk_to_clk_hw/clk_hw_to_clk
>   serial: stm32: bail if clock_get_rate returns zero
>   clk: implement of_clk_hw_{onecell,simple}_get
>   clk: implement clk_hw_reparent
>   reset: add support for reset_control_status
>   clk: stm32mp1: sync with Linux v5.17-rc1
>   regulator: core: fall back to node name if no regulator-name property
>   ARM: dts: stm32mp: remove regulator-name override in stm32mp151.dtsi
>   ARM: stm32mp: enable more config options

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

