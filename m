Delivery-date: Fri, 03 Feb 2023 09:03:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr2E-00CQ9J-Ng
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 09:03:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr2C-00031P-1B
	for lore@pengutronix.de; Fri, 03 Feb 2023 09:03:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W85FrwLmNZhXRA4fnCx2aZbAAofIyjvs3JRycICvAAs=; b=fOF7qVmqppgDH1OgbUlkkENgWc
	/E4LV7GsS4rXK47UDDLeyAGrde06Fg4QzTUaKNDoRbd+bYaqa3pA/Xqz7p4q9kCKYOp4gJBaCUpOf
	mfXXy+wO3T6KuBQi8ss6rnVEG2xxe8Wumo807bFxC+k9hvt1EzGij0JYnfrOH9+7BIGxOKg8yxIa7
	6bMIvqfixnjYCnDP3aCDhW/vUJl+zOoI6t+9kouDt8Yw5dN9C7OVcXTVpKY+O3hRWKTJxBnpi/Kx9
	aXdIBUN+GsmkehVL/BZS76ouzdTNvB6IYa7LrHvHN6e2U9rHZBt7KKTkZfMythT65R8FueADry0R6
	go9jIU1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr0x-000ueA-2E; Fri, 03 Feb 2023 08:01:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr0s-000ucg-Hv
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 08:01:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr0r-0002he-AQ; Fri, 03 Feb 2023 09:01:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr0r-0005pK-2r; Fri, 03 Feb 2023 09:01:37 +0100
Date: Fri, 3 Feb 2023 09:01:37 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230203080137.GS13319@pengutronix.de>
References: <20230202075741.2350028-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202075741.2350028-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_000138_630467_7B6B2CE3 
X-CRM114-Status: GOOD (  24.54  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/5] Add support for the Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 06:57:37PM +1100, John Watts wrote:
> This patch series introduces support for the Novena board.
> This support is basic but enough to boot Barebox.
> 
> The EEPROM code here is included in anticipation for reading the features
> flag in the future when more board features are supported.
> 
> Changes v3 -> v4:
> - Compressed device tree is now used
> - Code style fixes
> - Reworked DDR3 error checking to be more readable
> 
> Changes v2 -> v3:
> - EEPROM data is freed correctly
> - Add email to copyright headers
> - Switched license from GPL2 to GPL2+
> - Dropped get_runtime_offset for device tree
> - Removed "okay" status from EEPROM in device tree
> - Moved novena_try_eeprom code in to novena_probe
> - Other small code re-organizations
> - Moved OCRAM address to its own separate patch
> - Moved udelay fix to its own patch
> 
> Changes v1 -> v2:
> - The board uses the driver model now
> - Memory density is now calculated correctly
> 
> John Watts (4):
>   ARM: novena: Add Kosagi Novena board
>   ARM: novena: Setup RAM using static configuration
>   ARM: novena: Read Ethernet MAC address from EEPROM
>   ARM: novena: Use DDR3 information from SPD EEPROM

Applied, thanks

Sascha

> 
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/novena/Makefile               |   4 +
>  arch/arm/boards/novena/board.c                | 109 +++++++++++
>  arch/arm/boards/novena/ddr_regs.h             | 119 ++++++++++++
>  .../boards/novena/flash-header-novena.imxcfg  |   6 +
>  arch/arm/boards/novena/lowlevel.c             | 172 ++++++++++++++++++
>  arch/arm/configs/imx_v7_defconfig             |   1 +
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/imx6q-novena.dts                 |  18 ++
>  arch/arm/mach-imx/Kconfig                     |   9 +
>  images/Makefile.imx                           |   2 +
>  11 files changed, 442 insertions(+)
>  create mode 100644 arch/arm/boards/novena/Makefile
>  create mode 100644 arch/arm/boards/novena/board.c
>  create mode 100644 arch/arm/boards/novena/ddr_regs.h
>  create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
>  create mode 100644 arch/arm/boards/novena/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6q-novena.dts
> 
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


