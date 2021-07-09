Delivery-date: Fri, 09 Jul 2021 22:56:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1xXc-0006L9-Jv
	for lore@lore.pengutronix.de; Fri, 09 Jul 2021 22:56:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1xXb-0001xF-P3
	for lore@pengutronix.de; Fri, 09 Jul 2021 22:56:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wri0XA44XZD8qMalz1c9RQARHqApRPf6cq/1A7CRa30=; b=EIm5Q5Q2KClnXuK/fj1BLDW/vR
	M+q4UirygEHiFRBXA4AeENt1tTq1j7JIMTGaDlURtTsiWnQrm+lFPgawZCKA8qn2kvZhHNjOklvQe
	Gj5UeON99CICCByGeWrHyUl3TT1V08aVs3dVyjRK7iCSK/YMnbBBXGqgK+7T5FgxpHL6glvtqKkMF
	97P4keM++ctwhEJTBOvX5C+INU4RMerdcCOIQK8AngpN3vCvJpP0gKy+iInph9kAnOC3dEHPeAqn6
	VnpmNyWf8Nc+Yu17EeWJ4LRBuxPvrt5ds49l/R4y2WvwEXcSrMXyZfNsjo3JKeXuSnkqCtsIWi44Y
	UHbinQ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1xVs-002Tkx-3U; Fri, 09 Jul 2021 20:54:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1xVm-002Tkc-NN
 for barebox@lists.infradead.org; Fri, 09 Jul 2021 20:54:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m1xVh-0001Ym-L9; Fri, 09 Jul 2021 22:54:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m1xVf-0005uc-Ok; Fri, 09 Jul 2021 22:54:07 +0200
Date: Fri, 9 Jul 2021 22:54:07 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Xogium <contact@xogium.me>
Message-ID: <20210709205407.GC9782@pengutronix.de>
References: <20210707065251.760827-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210707065251.760827-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:53:44 up 142 days, 17 min, 118 users, load average: 0.04, 0.14, 
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_135414_807358_E1EBB02A 
X-CRM114-Status: GOOD (  17.79  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2] fs: fix NULL pointer dereference of
 fsdrv->truncate for read-only FS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 07, 2021 at 08:52:51AM +0200, Ahmad Fatoum wrote:
> fsdrv->truncate is dereferenced at times without checking for NULL before,
> leading to crashes, e.g. doing:
> 
>   edit -o /mnt/myext4/FILE some text
> 
> on ext4 crashes. Fix this by returning -EROFS when truncate is unimplemented.
> 
> Reported-by: Xogium <contact@xogium.me>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - use dev parameter instead of going through &f->fsdev->dev.
>     No functional change, but makes diff easier to verify.
> ---
>  fs/fs.c | 16 ++++++++++------
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

