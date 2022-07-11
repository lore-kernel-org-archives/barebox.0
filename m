Delivery-date: Mon, 11 Jul 2022 16:22:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAuJE-002epO-6i
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 16:22:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAuJC-0007PU-4Z
	for lore@pengutronix.de; Mon, 11 Jul 2022 16:22:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EC8ejCyZZ831MzK+7zDoh1rE3nBt7d9dxBZ+m+Qt5EU=; b=R/gt4R8O0rmQONRG4kHqXKHfvW
	YSZJIrBV3FcXMJWkC3OkZxK6gHK4BS/+SxA/kkdUR8Pu1ZSYl8qsF4wMfFvUM+9lhx8TCQfN8IcEU
	SXIW+eu3DhO73PdRotKt1ltHhh4Kdx2lzB8ZSTFwkzN7j4XTSOw7AvlpqayheTuN4gBkKe+Sc8Hxd
	p2GC/TangDt/uRNxI14OBx4prRnd48Ag2WP2rrGiWMMSb79fBpkuW4P1WfqzNOIENF6Ano49c2KEN
	qJQf9Q4r6dGFRKLapz8x1OMeZE54VwAiBUcqm7GIuTa3T7k8fUdjSEBbBKv9j1mn+Hgp5CyFVRyT5
	cEX+epFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAuHt-002GKM-Id; Mon, 11 Jul 2022 14:21:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAuHp-002GFM-MZ
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 14:21:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oAuHm-0007GO-Fn; Mon, 11 Jul 2022 16:21:18 +0200
Message-ID: <5592f4ad-c338-d7c9-7263-f87d9334db50@pengutronix.de>
Date: Mon, 11 Jul 2022 16:21:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20220711141246.3331160-1-j.zink@pengutronix.de>
 <20220711141246.3331160-2-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220711141246.3331160-2-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_072121_762838_958FF7EA 
X-CRM114-Status: GOOD (  24.35  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: i.MX7: add 96Boards Meerkat96 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.07.22 16:12, Johannes Zink wrote:
> This is a i.MX7D-based board with an upstream device tree.
> Add the necessary boilerplate to have barebox create an image.
> 
> The memory settings are taken from U-Boot v2022.07-rc6.
> 
> System reset requires pmic driver which is not available yet in barebox.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
> v1 -> v2:
>  - added meerkat96 board to imx_v7_defconfig
>  - added Documentation for meerkat96 board
> ---
>  Documentation/boards/imx/meerkat96.rst        |  31 ++++++
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/meerkat96/Makefile            |   4 +
>  arch/arm/boards/meerkat96/board.c             |  10 ++
>  .../flash-header-mx7-meerkat96.imxcfg         | 105 ++++++++++++++++++
>  arch/arm/boards/meerkat96/lowlevel.c          |  34 ++++++
>  arch/arm/configs/imx_v7_defconfig             |   1 +
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/imx7d-meerkat96.dts              |  42 +++++++
>  arch/arm/mach-imx/Kconfig                     |   5 +
>  images/Makefile.imx                           |   5 +
>  11 files changed, 239 insertions(+)
>  create mode 100644 Documentation/boards/imx/meerkat96.rst
>  create mode 100644 arch/arm/boards/meerkat96/Makefile
>  create mode 100644 arch/arm/boards/meerkat96/board.c
>  create mode 100644 arch/arm/boards/meerkat96/flash-header-mx7-meerkat96.imxcfg
>  create mode 100644 arch/arm/boards/meerkat96/lowlevel.c
>  create mode 100644 arch/arm/dts/imx7d-meerkat96.dts
> 
> diff --git a/Documentation/boards/imx/meerkat96.rst b/Documentation/boards/imx/meerkat96.rst
> new file mode 100644
> index 000000000..3cdb1beaf
> --- /dev/null
> +++ b/Documentation/boards/imx/meerkat96.rst
> @@ -0,0 +1,31 @@
> +Meerkat 96
> +==========
> +
> +The Meerkat96 is a single board computer based on an i.MX7D SoC by NXP, featuring a dual core ARM Cortex-A7 at 1 GHz and a Cortex-M4 at 266MHz and 512 MB DRAM. For further details on the board's features check the manufacturers page at https://www.96boards.org/product/imx7-96
> +
> +Serial console
> +--------------
> +
> +UART6 of the i.MX7D is broken out to Pinheader J3, on the Silkscreen the Pins are labeled with B (Ground), W (UART 6 TX) and G (UART 6 RX). If you use the UART-To-Serial-Converter provided with the board, you can just connect the Black jumper to B, the White to W and the Green to G. The UART uses 3.3V levels. 

Quite a long line. Could you break it?

> +
> +Building Barebox                                                        
> +----------------                                                        
> +                                                                        
> +To build Barebox for ZII i.MX7 based boards do the following:   

That's not a ZII.
        
> +                                                                        
> +.. code-block:: sh                                                      
> +           

Much trailing whitespace. Block copy? :^)

Sascha accepts fixup commits, so you can create a fixup locally
and

  git send-email -1 --in-reply-to="<20220711141246.3331160-2-j.zink@pengutronix.de>"

to have it appear correctly threaded.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


