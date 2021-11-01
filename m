Delivery-date: Mon, 01 Nov 2021 11:31:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUb8-0001AE-V8
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 11:31:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUb8-00009C-3H
	for lore@pengutronix.de; Mon, 01 Nov 2021 11:31:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y4drSbYFFR6nruQVOcKaeFFvD1DAj9IM5qrP0hVWiUg=; b=g2wXylPJoGv0RybCooo/4FXtjb
	gQr5trbAadxdff0dZN+Yj4/KClGsHc3RxaoOjw6Gw9LL2IvZWg4GB4+36nBVmj41F2+BAT3MnUp1m
	5UR2nTDgmXvPPeLCRcmGJBPYonPnjiKaMnVMVnnFHf8e0jy1dVR07gt2Zhllet+U90133D0aF95eW
	F65gu5ehN6/5pPEV/tuWtYw5qslZJjDELu0uKDZT436bmfPDcFGQEIOlimHrjBrR72mj7MJUUfTsE
	rOSpDVFaWwB8BhA6pmiGb32CVu5SWJqgKtDZsEeeQ6SjlCzKa42cIPHd23yma/wxMnW38XB6cuSIc
	6rTiKZMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhUZx-00Fx4t-N2; Mon, 01 Nov 2021 10:30:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhUZs-00Fx3i-Rr
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 10:30:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhUZr-0008FU-KT; Mon, 01 Nov 2021 11:30:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhUZr-0006Oq-A0; Mon, 01 Nov 2021 11:30:07 +0100
Date: Mon, 1 Nov 2021 11:30:07 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101103007.GU25698@pengutronix.de>
References: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211030175632.2276077-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:29:58 up 256 days, 13:53, 138 users,  load average: 0.16, 0.18,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_033008_929385_5D34FDCC 
X-CRM114-Status: GOOD (  27.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] drivers: caam: remove license text covered by
 SPDX-License-Identifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 07:56:29PM +0200, Ahmad Fatoum wrote:
> There is already a SPDX-License-Identifier, so drop the boilerplate.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/crypto/caam/rng_self_test.h | 10 ----------
>  1 file changed, 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/crypto/caam/rng_self_test.h b/drivers/crypto/caam/rng_self_test.h
> index 1f5bf32628bf..ba688f7e39c1 100644
> --- a/drivers/crypto/caam/rng_self_test.h
> +++ b/drivers/crypto/caam/rng_self_test.h
> @@ -4,16 +4,6 @@
>   * Copyright (C) 2018 Pengutronix, Roland Hieber <r.hieber@pengutronix.de>
>   *
>   * SPDX-License-Identifier: GPL-2.0-or-later
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License
> - * as published by the Free Software Foundation; either version 2
> - * of the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
>   */
>  
>  #ifndef RNG_SELF_TEST_H
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

