Delivery-date: Tue, 25 May 2021 07:28:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPcX-0007Bk-T9
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:28:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPcW-0006pp-Ti
	for lore@pengutronix.de; Tue, 25 May 2021 07:28:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TEW8sCoNDpTDFt1SWGL7OLTRw6/iHPk5Xu/tUK0xcdY=; b=ElOQ5yOxyM2mkmcDB6zVlhD/gQ
	sygSb++/zkzj66N3DrBmc1fS2TD0FJiGd5p3n2DbgGebzn/LGnj5jEvGFP8m+AULUMM++LqAnKh5G
	D19Lr+TtcE5NoxfBn5e/ZQqYkwvM6rr/rTrjsex3CM0rxK90uhZDtbbaoqTkK3D2kXbDKy7JBo2dQ
	6YPTbvFoDpwBFJPnhhPu/A9wmYoxwXa5xOf7y0Ga0cPKUcw4LdhsXJXpQnj+l19kTwaPOErhfh/Om
	QjzZEyzXjzLVaLzPGgyBnxBJSkBcLQpPQt/t9WLzfgv7KqEr4k99kCFFijubpfR5VtWGy1Mqv/sRd
	svsgGvWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPbP-003Qjt-SF; Tue, 25 May 2021 05:27:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPbJ-003Qid-U5
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:27:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPbI-0006j8-MO; Tue, 25 May 2021 07:27:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPbI-00076W-Co; Tue, 25 May 2021 07:27:32 +0200
Date: Tue, 25 May 2021 07:27:32 +0200
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210525052732.GM19819@pengutronix.de>
References: <20210520154929.25131-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210520154929.25131-1-m.olbrich@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:27:14 up 96 days,  8:51, 77 users,  load average: 0.10, 0.11, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_222734_000049_CCEB3B6D 
X-CRM114-Status: GOOD (  19.00  )
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
Subject: Re: [PATCH] mtd: spi-nor: Add support for gd25q16
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 20, 2021 at 05:49:29PM +0200, Michael Olbrich wrote:
> The entry is imported from Linux v5.12.
> 
> It can befound on new versions of the Boundary Devices i.MX6 Quad
> Nitrogen6x boards.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)

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

