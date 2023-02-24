Delivery-date: Fri, 24 Feb 2023 11:45:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVVZn-000iXM-0w
	for lore@lore.pengutronix.de; Fri, 24 Feb 2023 11:45:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVVZm-0007Js-4n
	for lore@pengutronix.de; Fri, 24 Feb 2023 11:45:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xH6dN5kpHzxbkEPu1L56uu7DC7CBdCcSc5YaAOCa/Ts=; b=Qkp/61J91/EO2i/IOPytpX0kbO
	iFKB36v3T+Lx0Mh44AEiSUTYhUMoocCh0tcXqoeD0/cCaE7TMjlIIscS+oYGLrC2WVthM5+TfnKPu
	f1QjYKmKgJkVupH9Z2LcjAN/LaJqYH37DYN7+NbOXQH/v1ZyKQZ8onnl0FfXS2hmFpeHqwGpqSq/A
	Zxxq94UAfNeS//yR2LStRqwrk44Sm7US2tbyV13endi82+ur+/jfawYm0+HzVEmgGprI5Ddr7Tl1C
	VZ8UntKwTEl/ghYJNreWRihNY5NsTzPTniGMtgdEyw0ogPBjj6nwt2WZtFvV3j2+YL+lwQAB2q/KE
	lQwoPzaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVYO-0026Gc-6e; Fri, 24 Feb 2023 10:43:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVYJ-0026F3-DW
	for barebox@lists.infradead.org; Fri, 24 Feb 2023 10:43:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pVVYD-0007Bt-Hz; Fri, 24 Feb 2023 11:43:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pVVYC-0005vx-Nd; Fri, 24 Feb 2023 11:43:40 +0100
Date: Fri, 24 Feb 2023 11:43:40 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230224104340.GI32097@pengutronix.de>
References: <BL0PR07MB5665F629C595F00D77D51D4FECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB5665F629C595F00D77D51D4FECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_024347_476598_F5C59198 
X-CRM114-Status: GOOD (  19.50  )
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
Subject: Re: Subject: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 23, 2023 at 01:58:46PM +0000, Renaud Barbier wrote:
> diff --git a/arch/arm/lib32/pbl.c b/arch/arm/lib32/pbl.c
> new file mode 100644
> index 0000000000..f4be7b57dc
> --- /dev/null
> +++ b/arch/arm/lib32/pbl.c
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <asm/system.h>
> +#include <clock.h>
> +#include <common.h>
> +
> +void udelay(unsigned long us)
> +{
> +	unsigned long long ticks, cntfrq = get_cntfrq();
> +	unsigned long long start = get_cntpct();
> +
> +	ticks = us * cntfrq + 999999;
> +	do_div(ticks, 1000000);
> +
> +	while ((long)(start + ticks - get_cntpct()) > 0);
> +}
> +
> +void mdelay(unsigned long ms)
> +{
> +	udelay(ms * 1000);
> +}

This will be compiled for every arm32 build, but the architected timer
is not generally available, only a small fraction of CPUs actually have
it. I just tested this on a i.MX6 and it just answers with an illegal
instruction abort when get_cntfrq() is called.

We could name this arm_architected_timer_udelay() or similar.

This change should be in a separate patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


