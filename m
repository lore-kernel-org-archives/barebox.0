Delivery-date: Mon, 22 May 2023 13:33:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q13n1-009alI-Q6
	for lore@lore.pengutronix.de; Mon, 22 May 2023 13:33:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q13mz-0003CX-Hg
	for lore@pengutronix.de; Mon, 22 May 2023 13:33:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HY3OAWUQNyfOzjDiJ9XGXLFjEyutjPMmo4BT9MYnkic=; b=XoBibEfLfayHntqgWm58byD15D
	468TEuWKeEjkf42JaiWxe2TNu+Rd65xXtLBaoo9BF0xt4ahbI32mQ7Fx40J/uzhamCErwSYCvLB/J
	wksNhqRzh3FsBF7U7Uf/JmjILKc0D+rHQX4abwJHrdZur8j7vJ83LgoeG/A4nJko/ivq+yxZ2zvzU
	UA3iIwPJobiYFqjxnqZB7TDC3RwExsI7jZzzntnYJBxMap+/7ho5WT9qQK7/AAPS6NHnI+9T72OVL
	IhPxt03lZ/TIEpNwEos9fBVghvei0mq8KtH4cQTEFPPFOgSyzMf9QOzVr+FDHy8+CY9TUPj0FYp9t
	bp4UPLgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q13lv-006Gkc-3A;
	Mon, 22 May 2023 11:32:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q13lt-006GjY-0n
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 11:32:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q13lr-00032a-Bh; Mon, 22 May 2023 13:32:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q13lq-0004iC-De; Mon, 22 May 2023 13:32:10 +0200
Date: Mon, 22 May 2023 13:32:10 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230522113210.GA17518@pengutronix.de>
References: <20230522052244.1038364-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230522052244.1038364-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_043213_279111_DE1D0271 
X-CRM114-Status: GOOD (  17.32  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] linux: limits: define INTPTR_MAX/UINTPTR_MAX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 22, 2023 at 07:22:44AM +0200, Ahmad Fatoum wrote:
> For symmetry with other types that have their max value defined, define
> INTPTR_MAX/UINTPTR_MAX as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/limits.h | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/limits.h b/include/linux/limits.h
> index 85bba76f4a37..17375ef5225e 100644
> --- a/include/linux/limits.h
> +++ b/include/linux/limits.h
> @@ -19,6 +19,8 @@
>  #define SIZE_MAX	(~(size_t)0)
>  #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
>  #define SSIZE_MAX	((ssize_t)(SIZE_MAX >> 1))
> +#define INTPTR_MAX	LONG_MAX
> +#define UINTPTR_MAX	ULONG_MAX
>  
>  #define U8_MAX		((u8)~0U)
>  #define S8_MAX		((s8)(U8_MAX >> 1))
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


