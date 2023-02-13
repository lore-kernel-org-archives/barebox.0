Delivery-date: Mon, 13 Feb 2023 10:03:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRUkQ-0062yn-8p
	for lore@lore.pengutronix.de; Mon, 13 Feb 2023 10:03:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRUkN-0003VE-Md
	for lore@pengutronix.de; Mon, 13 Feb 2023 10:03:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=axMdtcarRx0LiCSsXjKtEVnIibm11LTpzsL4q/zWo/I=; b=FG0VLqfsenZWrUG5qG+ig8jwJx
	D2VIf4ZyxlRHNSC7jpGEhHBvqbMGEjD7w8h3VsmHadUn2s3xmPjx3Jl1zOmrFyzcn8hbB5Oq7W6sl
	0+fFZViK+he126MGjpCM88VBmriU+D/IlvNNA9B+ZvNUKeVUrD/WlMB/fqx58C5RrKYLyTHJqDL2E
	+0Fg7HPJL0XS3Bb7RKOM7NVcPqQFDLRTd8gvOLsiu9igLLnd72lPLV4aWaq9E8UQ1HQJqKC2mxQwy
	Cdf9fVH+o6f/Su6YFePDHErttU0a/iYXGo3ffO44ibfkB/V4igvWilRp8J/PYE9lSTnvmiOOM52Tf
	4b/Sz1Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRUj9-00DiQO-9o; Mon, 13 Feb 2023 09:02:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRUj1-00DiO5-Of
	for barebox@lists.infradead.org; Mon, 13 Feb 2023 09:02:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRUj0-00039l-CC; Mon, 13 Feb 2023 10:02:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRUj0-0000dO-4G; Mon, 13 Feb 2023 10:02:14 +0100
Date: Mon, 13 Feb 2023 10:02:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Message-ID: <20230213090214.GH10447@pengutronix.de>
References: <20230210144745.915720-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230210144745.915720-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_010215_930841_8D8626EB 
X-CRM114-Status: GOOD (  13.53  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] MIPS: dma: random fixes and improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 10, 2023 at 05:47:41PM +0300, Denis Orlov wrote:
> Denis Orlov (4):
>   MIPS: dma: fix nullptr handling in dma_free_coherent
>   MIPS: dma: remove unnecessary ifdefs
>   MIPS: dma: add arch-specific dma_alloc() implementation
>   MIPS: dma: simplify source structure
> 
>  arch/mips/include/asm/dma-mapping.h | 40 ---------------------------
>  arch/mips/include/asm/dma.h         | 43 ++++++++++++++++++++++++++++-
>  arch/mips/lib/dma-default.c         |  8 ------
>  3 files changed, 42 insertions(+), 49 deletions(-)
>  delete mode 100644 arch/mips/include/asm/dma-mapping.h

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


