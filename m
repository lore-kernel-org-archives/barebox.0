Delivery-date: Tue, 02 Jan 2024 11:54:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcQ3-000UCY-1v
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 11:54:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcQ2-0001Ji-E8
	for lore@pengutronix.de; Tue, 02 Jan 2024 11:54:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7HbS6w5vARfE+zltjjd4KnLfOvS1LEAXthZTAePL9zY=; b=KI3CSPBhqYuTmL08y8pG1IFRWk
	YJmZy+7eytJrsCrDkOVjvqNQ2vT5kIXkKcrT3UqcbKIe0okSowSWMEKy75rXWZjY8T65dp2OUwPjN
	1u34YpRZSjiMlr8nkdKUQFpCL+jin3vocJBLMHNAnzuMeQ9chLXbrN0uRe6TgAV6B+XUxQirTNBKa
	aiRHI4hHaqtYZOab+uIbvWCtIiiC2HeZks2IYp/x8OOwcYiU+GofkEZdOs/jSWFPxndVMyPpAMZDQ
	CZrSwhhixDMfems2s/d6jgaRJ1zrcDF3IC6eLqvPQyeXUCrC1I5atiXervAYMdbbr/jUCz62XzrHf
	mjnoAiIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcOu-007eGh-0D;
	Tue, 02 Jan 2024 10:53:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcOq-007eGE-2r
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 10:53:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcOp-00019k-Fq; Tue, 02 Jan 2024 11:53:31 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcOn-003A3O-VS; Tue, 02 Jan 2024 11:53:31 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcOo-009twu-W7; Tue, 02 Jan 2024 11:53:31 +0100
Date: Tue, 2 Jan 2024 11:53:30 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org, michiel.schelfhout@protonic.nl
Message-ID: <20240102105330.GA1318922@pengutronix.de>
References: <20231220082908.360302-1-robin@protonic.nl>
 <20240102103143.GZ1318922@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102103143.GZ1318922@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_025332_947532_E70BCDF6 
X-CRM114-Status: GOOD (  20.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 02, 2024 at 11:31:43AM +0100, Sascha Hauer wrote:
> On Wed, Dec 20, 2023 at 09:29:08AM +0100, Robin van der Gracht wrote:
> > We should add 1 to the max_register index since counting is zero based.
> > 
> > i.e. the stm32mp151 bsec has registers 0 - 95 with reg_stride 4.
> > Size should be (95 + 1) * 4 = 384 bytes otherwise we can't access bsec
> > register 95 (last one).
> > 
> > regmap_size_bytes() does take the +1 into account so we can use that.
> > 
> > Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > ---
> > 
> > v2: Fix the size calculation in nvmem_regmap_read() as well.
> > 
> >  drivers/nvmem/regmap.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Applied, thanks

And un-applied again, see Ahmads patch

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


