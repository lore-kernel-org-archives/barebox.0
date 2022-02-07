Delivery-date: Mon, 07 Feb 2022 08:57:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuG-0083W3-P6
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:57:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuE-0002b9-IJ
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:57:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oO+//pjxDMtTwisfVEb7OvXSEStvWSY3Dh4fl+X2jZU=; b=MCTmmQDAJE0DN3WkpUgfFvNrUx
	ncQbbmN5AGT5v1QZV3NYGixDYsVK3b+fZNPyXADF16dxJWcWoBvP84/OGEE7eeoxMF+EKzFnxUEtL
	+qD8LvK4D0hDzoR1CX9r1CuEnPqT44GLUydfQYLq92ZgJBqAqGHU8iRgfAf8CwrvBYGzstNOsiMTi
	nvAUTGUqFSLUQndL/vPlgHwhRAuhdHXX8GPAB/79NCaubRIals7pIhqmiICYlKjt5GygIdFidaY8M
	f3Q0ezc6WiCdBCCHvu1aHiFUTq9znHOH99yrNS6zvw7KkhG319JZTp62eD2vrVpVH+HYbsyibXkeR
	TqxX12zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGysb-009GYw-IO; Mon, 07 Feb 2022 07:56:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysW-009GY2-53
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGysQ-00027P-3u; Mon, 07 Feb 2022 08:55:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGysP-000343-R2; Mon, 07 Feb 2022 08:55:57 +0100
Date: Mon, 7 Feb 2022 08:55:57 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220207075557.GN23490@pengutronix.de>
References: <20220202223023.341817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202223023.341817-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:55:43 up 58 days, 16:41, 70 users,  load average: 0.23, 0.16, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235604_214777_3380A84B 
X-CRM114-Status: GOOD (  19.83  )
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
Subject: Re: [PATCH v3 0/4] video: add STM32F429-DISCO video pipeline support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 02, 2022 at 11:30:19PM +0100, Ahmad Fatoum wrote:
> The STM32F429-DISCO has the LCD-TFT display controller connected to a
> parallel panel with MIPI-DBI over SPI for panel control.
> 
> The LTDC driver was originally written for the STM32MP1, but had some
> issues last time I tested it a few years ago. I debugged it into
> submission on the STM32F429 now though, so it might just work on the MP1
> as well.
> 
> v2 -> v3:
>   - fix copy-paste left-over
> 
> v1 -> v2:
>   - removed stray Kconfig hunk for panel support to appropriate patch
>   (Sascha)
>   - fixed Kconfig help text for mipi_dbi helper
> 
> Ahmad Fatoum (4):
>   gpiolib: implement gpiod_set_value
>   video: add driver for STM32 LCD-TFT Display Controller
>   video: add MIPI DBI Type C Option 3 support
>   video: add Ilitek ILI9341 panel support

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

