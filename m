Delivery-date: Wed, 03 Jan 2024 12:21:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKzJ5-001qq9-2w
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 12:21:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKzJ4-0000Ah-M6
	for lore@pengutronix.de; Wed, 03 Jan 2024 12:21:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vq0NZgg4HMZrGDWOLrQmkAafBquOrpgJkrGMoyttOOg=; b=L366VCTBnOqcbauuutw1iHFcSY
	uCmn3zx8LogMdhl9I3v7B/UWozusix+B53PGSOl+jjFV7GTLir39S2iG/ws7QKkb+97Vm2pBt0a2P
	w7CgLoOSzUQy3vzaKxRagzpi1Qls0bp69og5qfCLEEgc4nf4DAWWaOXYRzu5LxSupzB0jx1RriCaz
	bAHd/3k014WcMA0lFKAD/UutcpME7qtB3aeXRgqny0RkzcBkAEBeckB1Bgtko4A3Gu3XL6fVHjEe0
	AyB+BvGBV6dJe1NVwjZyECLpAdNaA2W/XP8vcxKz3mr+PY6h0lTem/3CwMH0WkxWNx+BUand5YUsy
	L4pwWcrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKzHq-00AUwl-0A;
	Wed, 03 Jan 2024 11:19:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKzHm-00AUvr-1w
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 11:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKzHi-0008Az-OK; Wed, 03 Jan 2024 12:19:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKzHi-0006Vm-Bp; Wed, 03 Jan 2024 12:19:42 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKzHi-00A3I3-9T; Wed, 03 Jan 2024 12:19:42 +0100
Date: Wed, 3 Jan 2024 12:19:42 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240103111942.GF1318922@pengutronix.de>
References: <20240102110118.280032-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102110118.280032-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_031946_660610_57EB9A0A 
X-CRM114-Status: GOOD (  18.61  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] ARM: boards: i.MX8M: add HAB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 02, 2024 at 12:01:15PM +0100, Marco Felsch wrote:
> The gencsf header is required to build HAB (secure-boot) compatible
> images. This commit add the support for this for all i.MX8M boards.
> 
> To finally build HAB compatible images the CONFIG_HABV4 and
> CONFIG_HABV4_IMAGE_SIGNED must be enabled.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  .../boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg | 2 ++
>  .../flash-header-imx8mm-phyboard-polis-rdk.imxcfg               | 2 ++
>  .../boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg | 2 ++
>  arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg | 2 ++
>  arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg       | 2 ++
>  arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg     | 2 ++
>  arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg         | 2 ++
>  .../flash-header-imx8mp-dart.imxcfg                             | 2 ++
>  .../boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg    | 2 ++
>  9 files changed, 18 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg b/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
> index 10606ce29c96..8aff991618ec 100644
> --- a/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
> +++ b/arch/arm/boards/innocomm-imx8mm-wb15/flash-header-imx8mm-wb15.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mm
>  loadaddr 0x007e1000
>  max_load_size 0x3f000
>  ivtofs 0x400
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg b/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
> index 10606ce29c96..8aff991618ec 100644
> --- a/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
> +++ b/arch/arm/boards/phytec-som-imx8mm/flash-header-imx8mm-phyboard-polis-rdk.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mm
>  loadaddr 0x007e1000
>  max_load_size 0x3f000
>  ivtofs 0x400
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
> index 93cf14f26ba5..f82759f8499a 100644
> --- a/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
> +++ b/arch/arm/boards/phytec-som-imx8mq/flash-header-phycore-imx8mq.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mq
>  loadaddr 0x007E1000
>  max_load_size 0x3F000
>  ivtofs 0x400
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> index 663bd102e9a2..6ea2e6c68ed7 100644
> --- a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> +++ b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mp
>  loadaddr 0x920000
>  max_load_size 0x3f000
>  ivtofs 0x0
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg b/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
> index 10606ce29c96..8aff991618ec 100644
> --- a/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
> +++ b/arch/arm/boards/protonic-imx8m/flash-header-prt8mm.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mm
>  loadaddr 0x007e1000
>  max_load_size 0x3f000
>  ivtofs 0x400
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg b/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
> index 663bd102e9a2..6ea2e6c68ed7 100644
> --- a/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
> +++ b/arch/arm/boards/skov-imx8mp/flash-header-skov-imx8mp.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mp
>  loadaddr 0x920000
>  max_load_size 0x3f000
>  ivtofs 0x0
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg b/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
> index 663bd102e9a2..6ea2e6c68ed7 100644
> --- a/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
> +++ b/arch/arm/boards/tqma8mpxl/flash-header-tqma8mpxl.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mp
>  loadaddr 0x920000
>  max_load_size 0x3f000
>  ivtofs 0x0
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
> index 2b104edfb741..c3149a197f7d 100644
> --- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
> +++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mp
>  loadaddr 0x918000
>  max_load_size 0x3f000
>  ivtofs 0x0
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> index 93cf14f26ba5..f82759f8499a 100644
> --- a/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> +++ b/arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> @@ -5,3 +5,5 @@ soc imx8mq
>  loadaddr 0x007E1000
>  max_load_size 0x3F000
>  ivtofs 0x400
> +
> +#include <mach/imx/habv4-imx8-gencsf.h>
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


