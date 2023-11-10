Delivery-date: Fri, 10 Nov 2023 14:31:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RbL-005tpf-0D
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:31:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RbK-0003n4-I9
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:31:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nHB9+chBurc5mgR4i7044CWEwrUAMJ+Iyu3gu0485PQ=; b=NkHymp8KcdjizhrwCXyO7IVyi7
	HFvx05bIKZ9w0LrW0dlIj5kHL8fZ95yqkhSUswODPOtzKfTeFgw1XDztBT/xCDMIZnCCcrXm9FR83
	h38rvR+evEfk1q7yOLo5Gt+GY7mFBIjeKkGT7xIN7nG/2deQNnU+ZVOElJW41OEoyKKoQ95dCiGbb
	TMwbugfUuWciCQvi0xlAU4HQ9Ca/k+WWy69V8v45l+eI4kTpwi657OxvgGzmWTD4mgvfAYnqf6RTP
	wYcxkMLTsNOSKVgpjAEq+YE2NXDVOv7lT0adqozGXZ9+/3/NzJypTIpWLxHuDX95xONlhUHrU2BGZ
	8FFzxfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RaC-008qv5-1Y;
	Fri, 10 Nov 2023 13:30:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Ra9-008quf-2Q
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:29:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Ra8-0003YN-Gg; Fri, 10 Nov 2023 14:29:56 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Ra8-00825W-4D; Fri, 10 Nov 2023 14:29:56 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Ra8-001Li3-1o; Fri, 10 Nov 2023 14:29:56 +0100
Date: Fri, 10 Nov 2023 14:29:56 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110132956.GI3359458@pengutronix.de>
References: <20231109152946.2299755-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109152946.2299755-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_052957_793783_EAF18D7B 
X-CRM114-Status: GOOD (  25.95  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] test: self: mmu: skip false positive test fail when no
 RAM at address 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 04:29:46PM +0100, Ahmad Fatoum wrote:
> Testing zero_page_access only makes sense if we actually have RAM at
> address 0 that we may read from. If it happens to I/O memory, the SoC
> may hang or a data abort may be raised, which would make the test fail.
> 
> Avoid this by explicitly checking for that case and skipping the test
> without running.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/mmu.c | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/test/self/mmu.c b/test/self/mmu.c
> index ca58d718ffb3..58961daaab95 100644
> --- a/test/self/mmu.c
> +++ b/test/self/mmu.c
> @@ -9,6 +9,7 @@
>  #include <abort.h>
>  #include <zero_page.h>
>  #include <linux/sizes.h>
> +#include <memory.h>
>  
>  #define TEST_BUFFER_SIZE		SZ_1M
>  #define TEST_BUFFER_ALIGN		SZ_4K
> @@ -171,6 +172,34 @@ static void test_remap(void)
>  	free(mirror);
>  }
>  
> +static bool zero_page_access_ok(void)
> +{
> +	struct memory_bank *bank;
> +	const char *reason;
> +	struct resource null_res = {
> +		.name = "null",
> +		.flags = IORESOURCE_MEM,
> +		.start = 0,
> +		.end = sizeof(int) - 1,
> +	};
> +
> +	if (!IS_ENABLED(CONFIG_ARCH_HAS_ZERO_PAGE)) {
> +		reason = "CONFIG_ARCH_HAS_ZERO_PAGE=n";
> +		goto not_ok;
> +	}
> +
> +	for_each_memory_bank(bank) {
> +		if (resource_contains(bank->res, &null_res))
> +			return true;
> +	}
> +
> +	reason = "no memory at address zero";
> +
> +not_ok:
> +	pr_info("skipping rest of zero page tests because %s\n", reason);
> +	return false;
> +}
> +
>  static void test_zero_page(void)
>  {
>  	void __iomem *null = NULL;
> @@ -197,9 +226,7 @@ static void test_zero_page(void)
>  		failed_tests++;
>  	}
>  
> -	if (!IS_ENABLED(CONFIG_ARCH_HAS_ZERO_PAGE)) {
> -		pr_info("skipping %s because %s=n\n",
> -			"CONFIG_ARCH_HAS_ZERO_PAGE", __func__);
> +	if (!zero_page_access_ok()) {
>  		skipped_tests += 2;
>  		return;
>  	}
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


