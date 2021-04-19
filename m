Delivery-date: Mon, 19 Apr 2021 09:36:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYOSH-0006BV-In
	for lore@lore.pengutronix.de; Mon, 19 Apr 2021 09:36:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYOSG-0001Li-Nm
	for lore@pengutronix.de; Mon, 19 Apr 2021 09:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nr5rNxRIhuTEA8JZXCbHGkawdxP15tFVghSdVhdcEeI=; b=FYoaVloqNGo2csKRurwHx1o9d
	1GgMi4ye8sIGj6qi2T7MIMwt7OYMZzFUZrG733Aa6Nl1rae6Yes+dLA5K3XS2w8jHI6LcF+qwnqHQ
	wbanZaKdRjLmDpY801TmXeZi9u0B+Wc3PTfBbv8a3MG7kLjKhINeu+C86vx4VYAbkPuw3ArsrJZsN
	3zRnUk64/pFB79/C3ARDmSxsepllIfzf3RoTqHE05mkJ3obfAWtD/wCFBEmRi9gG3l37tJADiDyM3
	NczKGw9qlGg/xc7TmSt2yl6xxO1SM7pocktO3+w72g9+rvZQPnU0Cv3d2YvCiKX5kFmaqTJ2gaW6c
	TBxhPHzbw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYORF-009M0m-VJ; Mon, 19 Apr 2021 07:35:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYOR4-009Lwy-Hp
 for barebox@desiato.infradead.org; Mon, 19 Apr 2021 07:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=3h+QEyVYIdF8P7RlF93gaRLB7zQkjEOkUZdFW9jC/7U=; b=XUSmyAOx93RWEg+q93/SIjVH6h
 vqkOYmqPbA+dk7pfAqqKrIEW+/cW3CLT15+OTeyBR8BIRWU6DBggVbMdPacHt/GqRzcqexQ1mav//
 SdkmMni2b73/JsTr8myy6RgPTbawXimShGw9+Rlo0COHL7FDFV7Q+mxss+IoQWF6ILW/U8fNRIDc0
 zdq+hp/du3udzLrvovZ5t/Jz5jW/JLSfZic2Ezw7eIN+MpnuSJPZksMYE9XwzuuODQ/y7oUeI09Tx
 Zr+BD1fjkny1TeO1HdDdk9DYEA/MFKBhH+PVZPIWihFNkS8rF5BrZ4xqDjs/Rfjc0Yo7kyAVzH1SH
 4ptnwoUQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYOQz-00B8aQ-CC
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 07:35:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYOQy-0000o6-4e; Mon, 19 Apr 2021 09:35:04 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a9a20e26-3e8f-5969-ce72-76014af4f4fb@pengutronix.de>
Date: Mon, 19 Apr 2021 09:35:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_003505_450039_5A3C71ED 
X-CRM114-Status: GOOD (  24.28  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 00/17] barebox deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 16.04.21 11:49, Sascha Hauer wrote:
> Hi All,
> 
> This is the fourth round of patches for barebox deep-probe support.

With feedback addressed,

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> I picked up the series from Marco, it has the things fixed I mentioned
> during the last review and some other improvements:
> 
> Changes since v3:
>   - Add deep-probe support for pinctrl
>   - Port over Phytec Physom to deep-probe
>   - Make sure console is probed ealier at postconsole_initcall time
>   - Let of_devices_ensure_probed_by_dev_id() probe all matching devices, not
>     only the first one
>   - add GPIO support to the base deep probe patch
> 
> Lucas Stach (1):
>   of: base: move memory init from DT to initcall
> 
> Marco Felsch (9):
>   imx53: remove unused imx53_add_nand
>   of: platform: remove check of already added devices
>   of: platform: Keep track of populated platform devices
>   of: base: move clock init from of_probe() to barebox_register_of()
>   initcall: add of_populate_initcall
>   common: add initial barebox deep-probe support
>   ARM: i.MX: esdctl: add deep-probe support
>   ARM: stm32mp: ddrctrl: add deep-probe support
>   ARM: boards: mx6-sabrelite: add deep-probe support
> 
> Sascha Hauer (7):
>   of: Set of_chosen and of_model earlier
>   of: implement of_get_stdoutpath()
>   pinctrl: Find controller node first
>   common: Explicitly probe consoles earlier with deep probe
>   pinctrl: Add deep probe support
>   ARM: i.MX Phytec physom: convert to board driver
>   ARM: i.MX Phytec physom: Add deep-probe support
> 
>  .../boards/freescale-mx6-sabrelite/board.c    |  24 +-
>  arch/arm/boards/phytec-som-imx6/board.c       | 169 ++++++++++---
>  arch/arm/mach-imx/esdctl.c                    |  12 +-
>  .../arm/mach-imx/include/mach/devices-imx53.h |  27 --
>  arch/arm/mach-stm32mp/ddrctrl.c               |  12 +-
>  common/Makefile                               |   1 +
>  common/deep-probe.c                           |  34 +++
>  drivers/base/driver.c                         |  11 +-
>  drivers/clk/clk.c                             |   5 +
>  drivers/i2c/i2c.c                             |   8 +
>  drivers/of/base.c                             |  61 +++--
>  drivers/of/of_gpio.c                          |   4 +
>  drivers/of/platform.c                         | 230 +++++++++++++++---
>  drivers/pinctrl/pinctrl.c                     |  16 +-
>  drivers/regulator/core.c                      |   6 +
>  drivers/reset/core.c                          |   4 +
>  drivers/spi/spi.c                             |   2 +
>  include/asm-generic/barebox.lds.h             |  11 +-
>  include/deep-probe.h                          |  26 ++
>  include/init.h                                |  10 +-
>  include/of.h                                  |  33 +++
>  21 files changed, 575 insertions(+), 131 deletions(-)
>  create mode 100644 common/deep-probe.c
>  create mode 100644 include/deep-probe.h
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

