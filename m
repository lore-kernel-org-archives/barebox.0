Delivery-date: Wed, 12 Mar 2025 14:07:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnc-00D8EF-1d
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:07:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnb-0002RG-8N
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:07:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UVEN6kjHBjJHH3eRLgT8h/2MLqc2D8zJp7JR+yyENA4=; b=xuQrY1MK+SkVprkh6/Kcm+9f8v
	h0PbB8y2STDdURM2XDSUdiPxK8uOiFP7kndIDhFN2zo18DSfqJoV0IhmAEQo2i2qVwWUD3xJvkrnX
	PzkADjqovC/A9UAYJlhFBroyRjyU4mLGrK8a4vZS2BiEFCJfwikbom/UoRR8YC4/1AEShWtfAF9wi
	3QCQdjb7Qn7QTQYuFpi7wkv2xABesaUFs04K7S+apXhN+5bzYtN7Au6GSGnx3cyGg7md+rKtGQH/i
	z/S6Vywh3jCJzBmgEmdYNm4LweCAeTsEYYLkqApt67Y9ERU52gxVqtmpNsWO+wM241wbvPDQvGDO5
	L21qdt4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLn8-00000008VJP-0BZR;
	Wed, 12 Mar 2025 13:06:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLMP-00000008QPi-2b9v
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:38:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLMO-0006Cb-BD; Wed, 12 Mar 2025 13:38:56 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLMO-005MPG-0W;
	Wed, 12 Mar 2025 13:38:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLMO-009X7y-0B;
	Wed, 12 Mar 2025 13:38:56 +0100
Date: Wed, 12 Mar 2025 13:38:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z9GAYICcORX5RQgU@pengutronix.de>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
 <20250311-pca9450-wdog-v1-1-45120abeae00@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311-pca9450-wdog-v1-1-45120abeae00@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_053857_657493_F4E25214 
X-CRM114-Status: GOOD (  22.90  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mfd: pca9450: configure pmic reset behavior
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 11, 2025 at 11:50:17AM +0100, Jonas Rebmann wrote:
> Currently, boards using the pca9450 pmic driver initialize the
> RESET_CTRL register either in lowlevel.c or board.c explicitly to 0xA1
> to enable the watchdog for Cold Reset with all voltage regulators
> recycled except LDO1/ LDO2 in addition to the default configuration of
> 0x11 where the WDOG_B watchdog input is disabled.
> 
> Instead, enable the watchdog in the driver for Cold Reset with all
> voltage regulators recycled except LDO1/ LDO2. When
> nxp,wdog_b-warm-reset is set, the watchdog is instead enabled for Warm
> Reset.
> 
> This is identical to U-Boot's behaviour since commit 910c7a881f5 and
> Linux's since commit 2364a64d0673f.

Please add the commit description like

910c7a881f5 ("pmic: pca9450: Make warm reset on WDOG_B assertion") and
2364a64d0673f ("regulator: pca9450: Make warm reset on WDOG_B assertion")

> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  drivers/mfd/pca9450.c | 11 +++++++++++
>  include/mfd/pca9450.h |  4 ++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
> index 2511e662c3dfb5dfedbc461357ffa82d1812166f..6d6fb32c36569689b901455b3376c92977eabc37 100644
> --- a/drivers/mfd/pca9450.c
> +++ b/drivers/mfd/pca9450.c
> @@ -3,6 +3,7 @@
>   * Copyright (C) 2023 Holger Assmann, Pengutronix
>   */
>  
> +#include "linux/regmap.h"

Please include files from the include paths with <> rather than "".

In this case you can drop it entirely, because linux/regmap.h is already
included by regmap.h

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


