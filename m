Delivery-date: Thu, 04 Nov 2021 20:48:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miij0-0000Gx-VC
	for lore@lore.pengutronix.de; Thu, 04 Nov 2021 20:48:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miij0-0001zx-3m
	for lore@pengutronix.de; Thu, 04 Nov 2021 20:48:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bo20P98gnXfloZN6DgRs92DItYRxTxLIqKpIlBnM8C0=; b=sQGlqQk02MJ9vyDR2WxBfHPQyv
	7vWFeUZjlBk4YJmltDlOtGXwIfLPBFfZpOrMnrXV/oku4mTd9FC06maun2sdmw2ehM+eQMoBNJxBj
	46RWp91FPVLsHYeknJ5bLQyOP0vQmvBxIPn5VavyEhc9T1slISWa4h2wC04FAc1R7Bk3ee0lkYZds
	TwM82xObmsaTREkb0PAM9zYUhR+Aucuty6po7YKj7DcYlxixJOyy+WH1lyUOlCRmqSmRR2ENXsBMG
	F4Q+vDStf55urRVUrLPFYv7y/mttcQcPa57/NPYqbr+zLVL5GEnQH9K+0nFXrUUwwW2VRbT+Iwof+
	q7frN4OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miihE-009tb9-VW; Thu, 04 Nov 2021 19:46:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miih9-009taB-6v
 for barebox@lists.infradead.org; Thu, 04 Nov 2021 19:46:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1miih3-0001wS-TG; Thu, 04 Nov 2021 20:46:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1miih3-0005a5-3l; Thu, 04 Nov 2021 20:46:37 +0100
Date: Thu, 4 Nov 2021 20:46:37 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20211104194637.GC25698@pengutronix.de>
References: <20211102132247.24080-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211102132247.24080-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:46:18 up 259 days, 23:10, 119 users,  load average: 0.10, 0.12,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_124643_297543_8A8C4545 
X-CRM114-Status: GOOD (  19.98  )
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
Subject: Re: [PATCH] memory commands: Improve command documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 02, 2021 at 02:22:47PM +0100, Jules Maselbas wrote:
> The quad write flags was missing from memory command usage.
> Make the -s/-d options expecting an argument more clean from the usage line.
> Reword some command help to make them more easier to use. For instance the
> memcpy command help was a bit misleading on the uses for SRC/DEST with a
> source/dest file. Some users were being confused by SRC/DEST being offsets.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  commands/md.c     | 4 ++--
>  commands/memcmp.c | 2 +-
>  commands/memcpy.c | 6 ++++--
>  commands/memset.c | 2 +-
>  commands/mm.c     | 2 +-
>  commands/mw.c     | 7 ++++++-
>  6 files changed, 15 insertions(+), 8 deletions(-)

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

