Delivery-date: Mon, 28 Jun 2021 14:46:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqel-0007la-TP
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 14:46:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqek-0004gu-Sq
	for lore@pengutronix.de; Mon, 28 Jun 2021 14:46:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N8HUr1a6bGdyxnMgjgAyOl5CLaaTA8Wt3S5uNIWs+Fo=; b=bvnWR9ejtMSPLo5ZSXHT/26tVg
	lKL39kpivA+xfsCIuuvf7wNmZ4zke0PDZor2R4dGhMU2U/WGn5y7GdNLLMcu5e+3/y0v31Ht3VXjB
	jxL+J/rYmDE6Op7lVhIGsxUD6YCdnmgQXEMKGkhKb1UbPmWHD+hGrAKV7T/0nfmI80Z0SACaBBqXK
	+i2EDgPcahVtp8+CD1qmfNm+8PL5dNaGLT91CFwKSnP6m1vK6NUM5yIdvF3Ftt+kbzBDxYHaQmgk3
	ZVE7X0bGGvrevPgvtUocaQJySs9vju64jIw2AWG1wuk7Nn7RWBYkr9DPbrIGBPXEvjeNKzwfUyCzB
	/YmTwkow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqde-0082W3-G3; Mon, 28 Jun 2021 12:45:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqdZ-0082Va-OJ
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 12:45:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqdY-0004Pe-Ge; Mon, 28 Jun 2021 14:45:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqdY-0000yN-73; Mon, 28 Jun 2021 14:45:16 +0200
Date: Mon, 28 Jun 2021 14:45:16 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210628124516.GK9782@pengutronix.de>
References: <20210628070732.16812-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628070732.16812-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:44:34 up 130 days, 16:08, 120 users,  load average: 0.05, 0.13,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_054517_836699_D384D25F 
X-CRM114-Status: GOOD (  21.30  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] bthread: remove thread exit codes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 28, 2021 at 09:07:30AM +0200, Ahmad Fatoum wrote:
> Follow-up commit will replace blocking bthread_stop with non-blocking
> bthread_cancel. Prepare for this by dropping exit codes. This is not
> much of a loss, because most users of bthreads will only call
> bthread_stop at cleanup time. bthread command is an exception, so have
> it take manual care of passing around exit codes.
> 
> As we touch the bthread_stop prototype anyway, rename it to
> __bthread_stop. This will make it clearer in the future, that it's not
> meant for driver use.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/bthread.c                  | 48 ++++++++++++++++++-----------
>  common/bthread.c                    | 20 ++++++------
>  drivers/usb/gadget/f_mass_storage.c | 12 +++-----
>  include/bthread.h                   |  5 +--
>  4 files changed, 47 insertions(+), 38 deletions(-)

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

