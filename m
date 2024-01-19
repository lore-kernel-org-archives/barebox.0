Delivery-date: Fri, 19 Jan 2024 16:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqXd-007CS3-0b
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 16:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqXd-0007bA-TS
	for lore@pengutronix.de; Fri, 19 Jan 2024 16:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uTc8yzLbrdr/f+pRKrRL9bDX8PFf+0uqsN/u4mXgBwg=; b=VczBBhi05tUZQNKwpoKtBHVPu3
	shyDnRi2wNUEwB0VpgWarPgFFIYrZFmHQV73p8NeHLKG41G0AvuOC7tvyuyhDrN0u+3jKYjhBOz0G
	H/4D9VkPMRXxfzlw/FeURxjXqdW7lhwbMGcdGL7NX18GfBcvE9WiHPzlzEGwvj7oHF2jKVGnkQyXB
	rN6tpduJWfRpw87Uu5sqdNz+Ck6bN1jRbmtRG1EjBgnNtZetkQh+uucyiRVGf6B/tfNVfcqb4nWiF
	pXDzCKqzRnysT2+6Ca/DjVQSvknS2crX29hxkRpfJuFQNDqbZ+VCDkkk0XtQEceOZXrndEI6Pmvqk
	Z40DRTYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqWj-005y02-2p;
	Fri, 19 Jan 2024 15:11:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqWg-005xzK-20
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 15:11:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqWf-0007TA-FL; Fri, 19 Jan 2024 16:11:21 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqWf-000wqv-2q; Fri, 19 Jan 2024 16:11:21 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqWf-000kGa-0Y; Fri, 19 Jan 2024 16:11:21 +0100
Date: Fri, 19 Jan 2024 16:11:21 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240119151120.eve2bo6fznz7w3kt@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
 <20240119142413.3206832-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119142413.3206832-3-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_071122_656034_FB57044B 
X-CRM114-Status: GOOD (  11.97  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/7] firmware: add missing include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-19, Sascha Hauer wrote:
> include/firmware.h uses _text and as such needs asm/sections.h. Add the
> missing include.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/firmware.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/firmware.h b/include/firmware.h
> index 93c800e11b..361ff2f8ae 100644
> --- a/include/firmware.h
> +++ b/include/firmware.h
> @@ -12,6 +12,7 @@
>  #include <driver.h>
>  #include <debug_ll.h>
>  #include <linux/kernel.h>
> +#include <asm/sections.h>
>  
>  struct firmware {
>  	size_t size;
> -- 
> 2.39.2
> 
> 
> 


