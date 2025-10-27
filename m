Delivery-date: Mon, 27 Oct 2025 11:19:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKJu-00CIwY-0D
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:19:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKJt-0003Wt-IA
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:19:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AavJfgddwfI9/SjqKUE7PfR8YwFSNqv0Nv+G8hrh1mg=; b=ONnA0x9I6Cqr7WLJ5xZB/hxAVK
	9OQsxXx4u7eila+B3wEPCKj4scsf8s1TgFj8q7Bj4t1bYNByRPuGBjLjkSOAmuwCZy6W7RerD40eA
	n8kijmqCgzGgEsS2n7evYAuZgJBl7CPDW9lh2Y5uiH+ay9GvRjizTJLHNddJtkDWYNaR9HZlqSpLR
	M45bPKHWiXDKEkcbzMkK3zDDsBttyAmAo4zL1n8WK76IASFLbfdcCAW0V+HYvnqalZYP7t+R7mdxu
	fg7yCLq5Xc65eLnkF6jAo6ytlGp/GPtefET1xITZPzG3l5wKVrzUBW57/1/nYrhJyLJhuS1nrx3nt
	a9aGh0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKJT-0000000Ddto-0mao;
	Mon, 27 Oct 2025 10:18:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKJQ-0000000DdtL-2Dw3
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:18:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKJN-0003Qp-M6; Mon, 27 Oct 2025 11:18:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKJN-005ghf-1X;
	Mon, 27 Oct 2025 11:18:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDKJN-00392D-19;
	Mon, 27 Oct 2025 11:18:49 +0100
Date: Mon, 27 Oct 2025 11:18:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
Message-ID: <aP9HCVEe9dpcFiuD@pengutronix.de>
References: <20251026062251.1131351-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251026062251.1131351-1-chalianis1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_031852_567899_E227C107 
X-CRM114-Status: GOOD (  19.24  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: rkimage: remove twice include of the same file.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sun, Oct 26, 2025 at 02:22:51AM -0400, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  scripts/rkimage.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/scripts/rkimage.c b/scripts/rkimage.c
> index e5b6d61c4a9d..a6dfd2c95736 100644
> --- a/scripts/rkimage.c
> +++ b/scripts/rkimage.c
> @@ -24,7 +24,6 @@
>  #include <openssl/rsa.h>
>  
>  #include "common.h"
> -#include "common.c"

It's not the same file. The .c file is included here intentionally.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


