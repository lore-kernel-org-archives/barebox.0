Delivery-date: Tue, 07 Oct 2025 15:43:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v67ye-005GW9-0j
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 15:43:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v67yd-0004Xx-Js
	for lore@pengutronix.de; Tue, 07 Oct 2025 15:43:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z0Od8+oxdLu2lVijfbx+XKGqiI+VIrfiFhZta4YbLA4=; b=reP5/gJpWVMglPYheNDltSBEkW
	b/QkiOmVtdOkXAQuN8387LUQnxYkdQZ2QSzqP4iG9aUElgCc/b7Gf13OnzRMGtYeRWmQ9cyeTOB4G
	tfaq2QauqpVf145h5W89DMPVH8GRTmZpgu7kokr76MVksZExDTm3nzlhBT9JiQvxeBOtweJ0Pt/vm
	P4Dhukuni0GWnZheeSj/aNbqrBIzLVn3qNr/55lSGSISXmK3WNRVH6hbT1/PTboNg0534v3czu34c
	YvKlK+lpx5+gWSoK/nrXPGYXImA0YSVVqjTqOjiRL3dFnLZPqIa5WwTA+9XMNGqTPap1QLXUSWI2D
	oUEqy1MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v67y1-000000025jo-32pl;
	Tue, 07 Oct 2025 13:43:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v67xz-000000025jL-1oi3
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 13:43:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v67xx-0004Pl-Im; Tue, 07 Oct 2025 15:42:57 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v67xx-002PaX-1G;
	Tue, 07 Oct 2025 15:42:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v67xx-000NFR-0x;
	Tue, 07 Oct 2025 15:42:57 +0200
Date: Tue, 7 Oct 2025 15:42:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <aOUY4c06GbpbTSyt@pengutronix.de>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
 <20251007005955.1427990-3-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007005955.1427990-3-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_064259_473221_8435B042 
X-CRM114-Status: GOOD (  28.11  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 03/10] tlsf: support on-demand requesting memory from
 external store
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 06, 2025 at 08:59:48PM -0400, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> barebox running under an operating system (or nearly one like UEFI) does
> not have control over all the memory and should not hog too much memory
> upfront as that can interfere with other applications, e.g. EFI drivers
> or the EFI firmware itself.
> 
> To accommodate this use case, allow TLSF to dynamically request more
> memory from an external store via tlsf_register_store().
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  common/tlsf.c  | 29 ++++++++++++++++++++++++++++-
>  include/tlsf.h |  1 +
>  2 files changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/common/tlsf.c b/common/tlsf.c
> index 4ee53a9b2f20..636b57b1c642 100644
> --- a/common/tlsf.c
> +++ b/common/tlsf.c
> @@ -159,6 +159,9 @@ typedef struct control_t
>  	/* Empty lists point at this block to indicate they are free. */
>  	block_header_t block_null;
>  
> +	void (*request_store)(tlsf_t, size_t);
> +
> +

This breaks compilation on 32bit platforms.

The reason is we have this directly under the definition of control_t:

tlsf_static_assert(sizeof(control_t) % ALIGN_SIZE == 0);

I fixed it up as follows.

It looks odd to me that we have to manually align the struct size each
time we add a field to this struct. Isn't there something better?

Sascha

---------------------------8<------------------------------
>From 11fcc69bbc41954d5e28a3b082dc39171bd6cdc0 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 7 Oct 2025 15:39:38 +0200
Subject: [PATCH] fixup! tlsf: support on-demand requesting memory from
 external store

---
 common/tlsf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 636b57b1c6..c4ba8259b2 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -161,11 +161,9 @@ typedef struct control_t
 
 	void (*request_store)(tlsf_t, size_t);
 
-
 	/* Bitmaps for free lists. */
 	unsigned int fl_bitmap;
 	unsigned int sl_bitmap[FL_INDEX_COUNT];
-	u32 : BYTES_TO_BITS(ALIGN_SIZE - sizeof(size_t));
 
 	/* Head of free lists. */
 	block_header_t* blocks[FL_INDEX_COUNT][SL_INDEX_COUNT];
-- 
2.47.3


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


