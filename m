Delivery-date: Fri, 11 Jun 2021 13:16:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrf9e-00058D-KD
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 13:16:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrf9d-0007Jo-MF
	for lore@pengutronix.de; Fri, 11 Jun 2021 13:16:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=owplk3wIbUmFWOQkDR+MIq+3S/3oYPYawCSxRwFGg3c=; b=VYoGD+7IuX95UbpYI2v6uwOlDA
	rhxwEp0r1WCV/54zmX3Ajbk/LUBQVZieyaZfHYnnoMwQXdL+tLQHqlVtERXGiSJXyGgOwrv2Q/0xT
	Ivx46/DwxlrplW3jLS6Tb5lXOrDZ2W6rS/ZOn0yDYNDAM4lwJVajcVJG+Q0QzWmeahDZqgE6xmlN9
	QC2SQmYKzFucRRvczxTrCrbBqtcRsje+Y+kPMgY3gw1dbIhzc9eBO18tGBf/PT3ksS1KPn/QwZ9Y6
	c/8EX+CFOVnhWY1Q2gGD0pNML+A5CXOrZ/4t1PjRWxC89o9Mqg8xTJNhGPfq+ljkxReVR09iNGVdR
	f0eI+CGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrf8D-004xab-Bd; Fri, 11 Jun 2021 11:15:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrf6t-004x9Q-MB
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 11:14:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrf6r-0006eq-VF; Fri, 11 Jun 2021 13:13:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrf6r-00050B-Md; Fri, 11 Jun 2021 13:13:57 +0200
Date: Fri, 11 Jun 2021 13:13:57 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210611111357.GG22904@pengutronix.de>
References: <20210611071351.1445370-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611071351.1445370-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:13:44 up 113 days, 14:37, 122 users,  load average: 0.08, 0.17,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_041359_767860_46A13E9E 
X-CRM114-Status: GOOD (  20.32  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] fs: nfs: Start earlier to resend requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 11, 2021 at 09:13:51AM +0200, Uwe Kleine-K=F6nig wrote:
> On a customer site we're experience a bit over 1% UDP packet loss. When
> wiresharking an NFS transfer of a kernel image (with the goal to boot
> via NFS) I saw 64 of 2555 RPC calls staying unanswered. With the current
> timeout setting each of them introduces a delay of 2 seconds and the
> whole transfer takes 137s. With the timeout reduced to 0.1s the transfer
> time is not optimal (going down to approx 15 seconds) but at least it
> becomes bearable.
> =

> To still cope with a slow network (in contrast to an unreliable as
> pictured above) increase NFS_MAX_RESEND to keep NFS_TIMEOUT *
> NFS_MAX_RESEND (which defines the overall timeout before aborting the
> transfer) constant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/nfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

