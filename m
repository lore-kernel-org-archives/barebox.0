Delivery-date: Mon, 17 Jun 2024 13:12:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAHm-007YGd-03
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:12:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAHl-0004zz-DT
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:12:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H5Z0BsYEAD0V3CgdSZ1Zn+9vyrd3Iyj4ZNyj8sn6mZs=; b=3TgrVnaWRv3sPTTiXfounkXg3l
	2O1UQ7rvSycz9Zvju/MWhPAw1EmnHin/eJ6t+q8PI/gbR88Ae8u9d0es3FxjENifSZ9YtkX0zV82s
	iAI7ZgiGRE9poC5i242q5x+GXUrJK+8L9GrziKp9uW4zFz/rW/FT6HVJnryY8T3y0rLo4Pjy3D/Xi
	at8Lji7l+5MOTTNCMdqdI4XhY680xMIPZIeabhaPVELBjk5MAZbLcQWtNBZURdDu73Dobkv02VvN/
	apxpToN2fUNPQqSzDzogWjRGkVQlKJ7D+Ci0gi5MMo0Li2xYUzgyYhoLmp1YKygTwPY+ElUx+Lzsd
	PyF52iQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAHH-0000000AQOg-2nRD;
	Mon, 17 Jun 2024 11:11:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAHD-0000000AQO7-1Lmj
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sJAHB-0004wJ-Uw; Mon, 17 Jun 2024 13:11:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sJAHB-002xcH-IC; Mon, 17 Jun 2024 13:11:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sJAHB-00G8eB-1V;
	Mon, 17 Jun 2024 13:11:53 +0200
Date: Mon, 17 Jun 2024 13:11:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZnAZ-YlV83TZOUcZ@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
 <20240613125818.30499-12-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613125818.30499-12-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_041155_402341_584521F7 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 11/11] FIT: add support to cache opened fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 02:58:18PM +0200, Marco Felsch wrote:
> Cache the FIT image fit_open() calls to avoid loading the same FIT image
> twice. This is very useful if the same FIT image is used to provide the
> base devicetree, kernel and initrd as well as devicetree overlays.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/image-fit.c  | 38 +++++++++++++++++++++++++++++++++++++-
>  include/image-fit.h |  4 ++++
>  2 files changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index c5c88ebe4c1e..061825f5f22c 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -18,6 +18,8 @@
>  #include <fnmatch.h>
>  #include <malloc.h>
>  #include <linux/ctype.h>
> +#include <linux/minmax.h>
> +#include <linux/refcount.h>
>  #include <asm/byteorder.h>
>  #include <errno.h>
>  #include <linux/err.h>
> @@ -34,6 +36,8 @@
>  #define CHECK_LEVEL_SIG 2
>  #define CHECK_LEVEL_MAX 3
>  
> +LIST_HEAD(open_fits);

Should be static

> +
>  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
>  {
>  	dt += size;
> @@ -861,6 +865,22 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name)
>  	return conf_node;
>  }
>  
> +static struct fit_handle *fit_get_handle(const char *filename)
> +{
> +	size_t query_len = strlen(filename);
> +	struct fit_handle *handle;
> +
> +	list_for_each_entry(handle, &open_fits, entry) {
> +		size_t len = strlen(handle->filename);
> +
> +		len = min(len, query_len);
> +		if (!strncmp(filename, handle->filename, len))
> +			return handle;

Why not plain strcmp() here?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


