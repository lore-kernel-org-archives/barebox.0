Delivery-date: Fri, 13 Oct 2023 11:18:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrEJh-006tWP-7J
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 11:18:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrEJf-0003nj-KS
	for lore@pengutronix.de; Fri, 13 Oct 2023 11:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=teyxVNvCv78yjEN6ASTudSxmHBp7IsB96T7iad2yg3A=; b=HYQ2ayCDwYhlNyT5XuekCPc10v
	BVaRvKIR4wzhDcfbUbz+jRX1AFJ9xC6mOb4xlsj9iXkVFgABvVupg8mzdoNIcUq0MlbjiPyd/32Wo
	vhYTQ/XtVyHGb5ksgLqz4IwkLmG67ON47zq3B3kBVfLMCKVlej4fhYjXq5gPBT9K3WPPtc3jXvvjO
	NPMVcSi6mSc8YwBaP/F+zsi65r9TRX7oUZuJi37TyHADqeAoknuQZQb4y4yumPWMUt4VJqxWCht4Y
	JDMmwVH99BQwnniNTKIlmQCpeOCaofXN6kHZ6YV2O6z+q16rDhr8g96g7LE9R1lZ/bZHe93XpCJV9
	E/xrRMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrEIT-002vq2-1W;
	Fri, 13 Oct 2023 09:17:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrEIQ-002vpF-22
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 09:17:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEIP-0003ee-EZ; Fri, 13 Oct 2023 11:17:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEIP-001MWm-1V; Fri, 13 Oct 2023 11:17:25 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEIO-00EFUa-VO; Fri, 13 Oct 2023 11:17:24 +0200
Date: Fri, 13 Oct 2023 11:17:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231013091724.GQ3359458@pengutronix.de>
References: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_021726_673638_0EDD59C6 
X-CRM114-Status: GOOD (  17.33  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] lib: ubsan: disable sanitization for UBSAN
 implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 09, 2023 at 01:52:35PM +0200, Ahmad Fatoum wrote:
> As done in Linux, the implementation of ubsan itself should not be
> instrumented by KASAN and stack protector.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/Makefile | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/lib/Makefile b/lib/Makefile
> index 2b577becc444..791080b2d158 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -89,6 +89,8 @@ obj-$(CONFIG_GENERIC_LIB_MULDI3)  += muldi3.o
>  pbl-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
>  
>  UBSAN_SANITIZE_ubsan.o := n
> +KASAN_SANITIZE_ubsan.o := n
> +CFLAGS_ubsan.o := -fno-stack-protector
>  
>  libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
>  	                      fdt_empty_tree.o
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


