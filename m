Delivery-date: Wed, 14 Sep 2022 11:43:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYOvo-004eUD-0Y
	for lore@lore.pengutronix.de; Wed, 14 Sep 2022 11:43:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYOvm-0001sm-9J
	for lore@pengutronix.de; Wed, 14 Sep 2022 11:43:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K/MODbeu646rrYDwMpFuWsBSAWgcm3ukjhI5XX5xGWY=; b=z0cP+iY8pb79+WR8qINHRAi9GX
	3WIJWu4Vx8NofaSpX8ORjUGV4JG4fkzVLRtJn3dQus2kWoTWZNrSDvXeKhrM2sWhY0jRUnGg13pIu
	8lwJjgVT+Dw5qOmCoYujQk1QaCu6/Pia73F9A2JjEMznEIoX6QqZLwXOYwpvchDTUplQLzyxueFqp
	wtVtxFnP4cVJ8UtzAt/Qx0GGxx3apHy6Q2d4DVZaImmMsFTM/4aiKg2W3c99678zeM0gmfq/YwA2G
	Xfxka3PAK+dIq+KFzJMAkkPnSpBWKl1CiNsegZ7PC9L9K/MyU6ITKe2GEh1l9BhAJKapDwthWrJL6
	23eS18yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYOtm-00EOFo-NC; Wed, 14 Sep 2022 09:41:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYOnS-00EJDf-UH
	for barebox@lists.infradead.org; Wed, 14 Sep 2022 09:35:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oYOnN-0000TZ-TG; Wed, 14 Sep 2022 11:35:01 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oYOnN-0005fk-Km; Wed, 14 Sep 2022 11:35:01 +0200
Date: Wed, 14 Sep 2022 11:35:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220914093501.bd6j6sbvdfp4xoak@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
 <20220913124954.1346533-5-m.felsch@pengutronix.de>
 <20220914083325.GJ12909@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220914083325.GJ12909@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_023506_996708_861F4AB2 
X-CRM114-Status: GOOD (  18.74  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] RISC-V: use m/sscratch registers for
 barebox_riscv_pbl_flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-09-14, Sascha Hauer wrote:
> On Tue, Sep 13, 2022 at 02:49:52PM +0200, Marco Felsch wrote:
> > Use the dedicated scratch register for setting the pbl flags. Each mode
> > has it's own scratch register so we are not conflicting with M-mode
> > running firmware e.g. OpenSBI. Using the scratch register has two main
> > advantages:
> >  1st) It can be used in PBL and non-PBL use-case.
> >  2nd) It is not affected by the relocation code.
> > 
> > This commit prepares barebox to add support for the special cache ops
> > used by several T-Head CPUs.
> > 
> > +static inline void riscv_set_flags(unsigned flags)
> > +{
> > +	switch (flags & RISCV_MODE_MASK) {
> > +	case RISCV_S_MODE:
> > +		__asm__ volatile("csrw sscratch, %0" : : "r"(flags));
> > +		break;
> > +	case RISCV_M_MODE:
> > +		__asm__ volatile("csrw mscratch, %0" : : "r"(flags));
> > +		break;
> > +	default:
> > +		/* Other modes are not implemented yet */
> > +	}
> 
> Compilation ends in an error here:
> 
> arch/riscv/include/asm/system.h:27:2: error: label at end of compound statement

Arg.. I used GCC11 they introduced the support for by commit 8b7a9a249a6
("C Parser: Implement mixing of labels and code."). Do we need to add
warning like: -Wc11-c2x-compat? So at least the developer gets informed?

Regards,
  Marco


