Delivery-date: Tue, 10 Jun 2025 08:31:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOsWP-005hl6-37
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 08:31:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOsWP-0004ye-EI
	for lore@pengutronix.de; Tue, 10 Jun 2025 08:31:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tDNHgHQ2bpUaErvyNW9gT6UWulC+vuFjdkYKuOkOYFo=; b=X/nt3ZceeZx94VacvmNp44AHJs
	4w7zamf8pXIbK9m2WhHSJ1zLMUKxi065Bqx4QggbHSKs1ZwI7oXDeP0rfHtin7yq3JHCiyk/hhkal
	wPmwugFpxb4OWAmeLG+NIyTM6vSrbeqj7NSNu/DuUJvc0Iwn68F1VSG9MZH5X2IjrYAg0rjd52kH5
	23nCIPTd87KoT/FgBoLJPVFFX9tj44RW/RZpUh198nlFNAEmcsvvl/AItH+6QDcyLUGx/v4qCF8l2
	zczj7B9SpOUOQAcFfgROc219Db4aPtfTYHAsCxAeeShfLuzHphdmq/YrKOgiwRvOq9s7Nw0FXHjgN
	csUPCNwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsVp-00000005w0C-31V7;
	Tue, 10 Jun 2025 06:31:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsVn-00000005vzo-153u
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 06:31:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uOsVk-0004fX-Cv; Tue, 10 Jun 2025 08:31:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOsVk-002j4y-0Z;
	Tue, 10 Jun 2025 08:31:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOsVk-004jFK-09;
	Tue, 10 Jun 2025 08:31:04 +0200
Date: Tue, 10 Jun 2025 08:31:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aEfRKL3id-cjl_2m@pengutronix.de>
References: <20250609063127.3165440-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250609063127.3165440-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_233107_295615_2777FE12 
X-CRM114-Status: GOOD (  16.89  )
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
Subject: Re: [PATCH] clk: make use of %pC format specifier for printing name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 09, 2025 at 08:31:27AM +0200, Ahmad Fatoum wrote:
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index ba87f6c210d2..b2eeb2702f3d 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -16,6 +16,7 @@
>  #include <linux/string.h>
>  #include <linux/ctype.h>
>  #include <linux/math64.h>
> +#include <linux/clk.h>
>  #include <malloc.h>
>  #include <kallsyms.h>
>  #include <wchar.h>
> @@ -310,7 +311,7 @@ char *ip4_addr_string(char *buf, const char *end, const u8 *addr, int field_widt
>  }
>  
>  static
> -char *error_string(char *buf, const char *end, const u8 *errptr, int field_width,
> +char *error_string(char *buf, const char *end, const void *errptr, int field_width,
>  		   int precision, int flags, const char *fmt)
>  {
>      if (!IS_ERR(errptr))
> @@ -477,6 +478,16 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
>  		      precision, flags);
>  }
>  
> +static noinline_for_stack
> +char *clock(char *buf, const char *end, const struct clk *clk,
> +	    int field_width, int precision, int flags, const char *fmt)
> +{
> +	if (IS_ERR_OR_NULL(clk))
> +		return error_string(buf, end, clk, field_width, precision, flags, fmt);
> +
> +	return string(buf, end, clk->name, field_width, precision, flags);
> +}

struct clk is declared inside #ifdef CONFIG_COMMON_CLK. Without some
ifdef here you'll likely hit compile errors.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


