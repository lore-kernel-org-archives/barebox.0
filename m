Delivery-date: Tue, 25 May 2021 07:00:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPBX-0006uV-7U
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:00:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPBW-00049e-AG
	for lore@pengutronix.de; Tue, 25 May 2021 07:00:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q89fFv29QFxQLMhw6VATCVd7V6WVKzSUVsOzy7KtSnY=; b=Mll4cicT+ASoZbRhZw62SjvPFw
	25TmTdJWmqNVluLRQVZI8PJto/rAp1+GRjhJ0p2iA7iiF0uhgXv+TW1agwSzXDHdrKFfcUNRI+5uS
	ULAZj6DN4w5979wJTQ1y2Y1OO0TuuABwNEsIjWnuoDKApmukN5bqaMI0TV6bbdjSV+cvvo0rDc/GF
	r8Xa0zeubfirwhMAXm6CsFX56JxNSmoaFlx/VIEIC53nwOHGxsQ9fNqOW/sdhuGSa/bLSQ8SqC4Vg
	R3I4QnmIXvheH9MTSD+lcNLFqg1IKL/sfIluk5qE67e+VnLt0BAkxGr5vFrjJ+x/S86IeT5CNBlth
	0NOK3Pyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPAH-003Njh-5m; Tue, 25 May 2021 04:59:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPAC-003NjB-6i
 for barebox@lists.infradead.org; Tue, 25 May 2021 04:59:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPAA-0003r1-Vv; Tue, 25 May 2021 06:59:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPAA-0004VZ-C9; Tue, 25 May 2021 06:59:30 +0200
Date: Tue, 25 May 2021 06:59:30 +0200
To: Trent Piepho <tpiepho@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210525045930.GJ19819@pengutronix.de>
References: <20210519060134.2976676-1-tpiepho@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519060134.2976676-1-tpiepho@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:58:55 up 96 days,  8:22, 75 users,  load average: 0.16, 0.18, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_215932_271141_A6F4FB7D 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: Update env sources documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 18, 2021 at 11:01:34PM -0700, Trent Piepho wrote:
> Add CONFIG_DEFAULT_ENVIRONMENT_PATH to the list in the proper place.
> 
> Update the board env to follow the new pattern for naming and note that,
> unlike the other directories, one must add code to get this directory in
> the environment.
> ---
>  Documentation/user/defaultenv-2.rst | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

