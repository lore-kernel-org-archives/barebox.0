Delivery-date: Thu, 23 Jun 2022 12:44:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KJr-00BrB2-4W
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 12:44:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KJq-0006zV-Vy
	for lore@pengutronix.de; Thu, 23 Jun 2022 12:44:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JxOJnfYtC8DaE54uCgdW9GVWmWiZ5JHfCCmA2FnF4ss=; b=yNWdTAAi6Av+rukw5M5W193JsF
	axLXI/rY6sjur+ZnVQX2G2pBIyTmCkgxCMF26MUllcmJFjaB9hhbl7QHm6VZwuCl1B0zs21ZCbEaY
	vms16GDQo8JuZZS8SIk04ZbV0gpHGDM8lSY1Tqg1nM+MrRPntJsOTFa21PAuyhWm0c+UZaiufFgAS
	AVFPNoQVnDFdHi9kbjC67lSiX2XprYXZBVJkdlKv9QQHdpoN1vfdZxv7+yie6/NH01y7cSNShCJgt
	IydWuovNri9YAOm/gUK/JyJsUcsT2WoOuqRxehGNhpGNPCeaSJ4kZoKcQheEsTlsh+wNDJjryDK1c
	gfToVkMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KIb-00EZra-Cg; Thu, 23 Jun 2022 10:42:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KIW-00EZrD-4b
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:42:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o4KIS-0006sb-Hc; Thu, 23 Jun 2022 12:42:48 +0200
Message-ID: <f88f4968-e4b2-2197-e8a9-ab5f1ad3907a@pengutronix.de>
Date: Thu, 23 Jun 2022 12:42:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>, lst@pengutronix.de,
 Joacim Zetterling <joacim.zetterling@westermo.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
In-Reply-To: <20220623103051.572885-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_034252_225191_45542033 
X-CRM114-Status: GOOD (  15.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 0/4] ARM: i.MX8M: fix various miscalculation of
 DRAM size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.06.22 12:30, Ahmad Fatoum wrote:
> This fixes issues of wrong DRAM size calculation for imx8mq-evk,
> phytec-som-imx8mq, zii-imx8mq-dev as well as an out-of-tree 
> i.MX8MM board I have.
> 
> For i.MX8MN-EVK, DDR4 size is correctly calculated, but not LPDDR4.
> I can't see where the issue is though, so I am disabling detection
> there until it's figured out. Device Tree already contains correct
> RAM size.

i.MX8MN has only 16-bit wide bus, which would explain the discrepancy.
v2 incoming..

> 
> Ahmad Fatoum (4):
>   ARM: i.MX8M: esdctl: ignore ADDRMAP8 for non-DDR4
>   ARM: i.MX8MQ: initialize ADDRMAP7
>   ddr: imx8m: workaround old spreadsheets not initializing ADDRMAP7
>   ARM: i.MX8M: imx8mn-evk: disable DDRC memory detection
> 
>  arch/arm/boards/nxp-imx8mn-evk/board.c       |  7 +++++++
>  arch/arm/boards/nxp-imx8mq-evk/ddr_init.c    |  3 ++-
>  arch/arm/boards/phytec-som-imx8mq/ddr_init.c |  1 +
>  arch/arm/boards/zii-imx8mq-dev/ddr_init.c    |  3 ++-
>  arch/arm/mach-imx/esdctl.c                   |  8 +++++++-
>  drivers/ddr/imx8m/ddr_init.c                 | 18 ++++++++++++++++++
>  drivers/ddr/imx8m/helper.c                   |  6 ++++++
>  include/soc/imx8m/ddr.h                      |  1 +
>  8 files changed, 44 insertions(+), 3 deletions(-)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


