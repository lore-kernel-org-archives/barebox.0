Delivery-date: Mon, 04 Oct 2021 14:04:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMhd-0007Ho-2n
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 14:04:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMhb-0006k6-TD
	for lore@pengutronix.de; Mon, 04 Oct 2021 14:04:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMNuhAWWnJpeIF6rXuxrxfKr9lchcwu0OKBpkTJ42Kg=; b=k+dUZzKSclgxpM
	u17dzbT6l+9xigtnQWauIFqM2eT8PtG7cBuzO4gSyKVBaaiD4pWWZxC1xLh7+MfnxjBnIaHU3zADq
	pc/xXpK2W7r6HqlBmwWmdMSMx1HPoigBQuIM2cxiNEXP9u7TCHoGS1P50VrIRZ9ch3G51B2YaZIaV
	e4ye4BD4uDiLdefZeJMkZX7LQToDKF5W9lckaBWupLyoselFogvdxlBIKhMREPO796UgD4ZuC9poc
	4lw5ioN4suGnQIAZXbjzfV11vLa49ipwUsLXqc/0K6BOOHnOUZkbbmI5sEONA2gHg2CbrciJCWmHn
	3x5B8bbuWHmO1i0pI0sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMgP-006LoA-UQ; Mon, 04 Oct 2021 12:03:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMgK-006LnN-UI
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 12:02:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMgJ-0006bB-Lr; Mon, 04 Oct 2021 14:02:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMgJ-0006Hg-Cb; Mon, 04 Oct 2021 14:02:55 +0200
Date: Mon, 4 Oct 2021 14:02:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211004120255.GI28453@pengutronix.de>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210817101104.114945-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:02:36 up 228 days, 15:26, 144 users,  load average: 0.89, 0.46,
 0.33
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_050257_004613_5699CAC3 
X-CRM114-Status: GOOD (  21.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 0/8] RISC-V: add LiteX SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 17, 2021 at 01:10:56PM +0300, Antony Pavlov wrote:
> Changes since v3:
> 
>   * rebased on top of next branch;
>   * the "console: support set baudrate for fixed baudrate drivers" patch
>     is introduced so the "litex serial: add setbrg callback" patch is dropped;
>   * update mac0 IP-block base addresses in litex dts according to latest
>     SoC configuration.
> 
> Changes since v2:
> 
>   * rebase on top of master branch (f873c7ff2497) +
>     "RISC-V: extend multi-image to support both S- and M-Mode"
>     (http://lists.infradead.org/pipermail/barebox/2021-May/036086.html).
>   * "litex serial: add setbrg callback" patch by Marek Czerski is added
>     for review;
>   * fix "clocksource: timer-riscv: select CSR from device tree" patch;
>   * change gpio IP-block base addresses in litex dts;
>   * gpio-74xx-mmio uses device_get_match_data() now.
> 
> Changes since v1:
> 
>   * rebased on top of next branch;
>   * new patches are introduced:
>     * clocksource: timer-riscv: select CSR from device tree
>     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclusive
>     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=n
>   * almost all of Ahmad's notes are fixed (e.g. unused header files inclusions are dropped);
>   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_get_match_data()
> 
> 
> Antony Pavlov (8):
>   clocksource: timer-riscv: select CSR from device tree
>   serial: add litex UART driver
>   console: support set baudrate for fixed baudrate drivers
>   gpio: add driver for 74xx-ICs with MMIO access
>   spi: add litex spiflash driver
>   net: add LiteEth driver
>   RISC-V: add LiteX SoC and linux-on-litex-vexriscv support
>   RISC-V: add litex_linux_defconfig

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

