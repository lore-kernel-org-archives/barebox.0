Delivery-date: Mon, 23 Aug 2021 15:39:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAAe-0007vR-Oi
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 15:39:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAAa-0007Jd-SC
	for lore@pengutronix.de; Mon, 23 Aug 2021 15:39:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BBo46Ch5ih4/NpAbyijOFQEp4sRKvIXuZdcOA1ayvgY=; b=1fELILMY0kXNT3MCRo5VTiTVsx
	YGFGLgvi7S6+xfBCO3LXVb8ZJ+pn0rsBz3yQNgzqBHjKcNvQq3DRJ1bAf0ceqEUvElW1xWDz69/2f
	iWRLmD+jAmN+H/kAzsQB7W5AN+ortBLCx8fhC9Go3oyeuYFdofeSmIkNBsOyqKLIGUqA+HIdWDXBV
	nQdCz2x0V9VjNxGZdYMVAZV1dxWCqYLLmhMjtrL6mjjCPkB4GFZbiHSXD5XEfeMGzoKW/cZdWSwmk
	jfawJDKe4m8w1MU5rAD2q4+2id275LnXJHMTcyGf0vJQEOm+2sXoEWPMmGtFziUDUIjAPWhrvpkdR
	JALAmXug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIA8g-00H5c2-FV; Mon, 23 Aug 2021 13:37:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIA8O-00H5a9-NA
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 13:37:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIA8A-0007CG-2k; Mon, 23 Aug 2021 15:36:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIA89-0005GV-BL; Mon, 23 Aug 2021 15:36:49 +0200
Date: Mon, 23 Aug 2021 15:36:49 +0200
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210823133649.GG24834@pengutronix.de>
References: <20210810054712.1547433-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810054712.1547433-1-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:36:22 up 186 days, 17:00, 113 users,  load average: 0.13, 0.17,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_063704_795371_5B2633B9 
X-CRM114-Status: GOOD (  19.99  )
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
Subject: Re: [PATCH] hush: fix conditional statements exit code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 10, 2021 at 07:47:12AM +0200, Andrej Picej wrote:
> Fix conditional statements ("if" , "elif", "while" and "until") exit
> code when used in scripts. Before the change, when conditional statement
> evaluated false just before the end of the script, script's exit code
> would have been 1 (instead of 0), which implies error condition. This is
> not expected nor desired behavior, so correct it by handling such cases
> and passing exit code 0 (SUCCESS) instead in such situations.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
> This problem/bug was previously discussed on barebox mailing list.
> Although a simple workaround was found (explicit exit 0 at the end of
> scripts), a decision for fixing Hush was encouraged.
> ---
>  common/hush.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)

Tested and applied, thanks

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

