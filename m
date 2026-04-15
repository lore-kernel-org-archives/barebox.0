Delivery-date: Wed, 15 Apr 2026 12:31:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCxX6-00CNj7-1H
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 12:31:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCxX5-0000aU-Qu
	for lore@pengutronix.de; Wed, 15 Apr 2026 12:31:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iXM4XC/kJJrwifMHUx8ZPZSk9oUgTvFuAtwh5DuVyRc=; b=ixCjMOhVxJFtDDDiYceHGVccWL
	EsoJSv/7Hsw0+4E6e9UM8ASgqus5589lnjECJ9w4q0FBsqwrirLqT/Rg2frU3582Ac2SRjEoj3rVn
	glv9in9Rf8VaJLuhlSVnxzS7KFQGz6DkB0bw+3kwasPhWXptBmquEqhoHMp9T0atq+pYGVxoAPMVl
	gjRG1YCt8/tKuQGKYKqILyaxzr0mcOmBHue2aD0Dzo4V2jYK/DPyHM3WFGq/EAIJYQqlGAqkpgSp0
	kZ50fYr62GFc1leNCWHWSvINgC4Il4jLnj2PrPkwPG6bYudixc8kOlRqhFaUGfgScY4OWmFB+aHi9
	Dwa6CipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxWS-00000000y2r-3jA1;
	Wed, 15 Apr 2026 10:31:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCxWQ-00000000y2I-1PCS
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 10:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCxWO-0000RB-LV; Wed, 15 Apr 2026 12:31:00 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCxWO-005Uo9-1X;
	Wed, 15 Apr 2026 12:31:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCxWO-0000000BWzE-1Xx9;
	Wed, 15 Apr 2026 12:31:00 +0200
Date: Wed, 15 Apr 2026 12:31:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <ad9o5HBwJw0je5UL@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
 <20260409-socfpga-iossm-v1-v2-8-09effab91bc1@pengutronix.de>
 <ad8sU26WfEooMBj7@pengutronix.de>
 <ad9Mhb5l0x4SbXic@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad9Mhb5l0x4SbXic@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_033102_399228_1AF5EA82 
X-CRM114-Status: GOOD (  27.17  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/10] arm: socfgpa: iossm: extract initialization of
 one interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 15, 2026 at 10:29:57AM +0200, Michael Tretter wrote:
> Hi Sascha,
> 
> On Wed, 15 Apr 2026 08:12:35 +0200, Sascha Hauer wrote:
> > This patch causes imtermediate compile breakage.
> > 
> > On Thu, Apr 09, 2026 at 03:52:48PM +0200, Michael Tretter wrote:
> > > +	pr_debug("%s: Start memory initialization BIST on full memory address",
> > > +		 __func__);
> > > +	mem_exp = 0x40;
> > > +
> > > +	ret = io96b_mb_req(io96b_csr_addr,
> > > +			   mb_ctrl->ip_type[interface],
> > > +			   mb_ctrl->ip_instance_id[interface],
> > > +			   CMD_TRIG_CONTROLLER_OP, BIST_MEM_INIT_START,
> > > +			   FIELD_PREP(GENMASK(5, 0), mem_exp),
> > 
> > 0x40 doesn't fit into GENMASK(5, 0).
> > 
> > This is detected here because 0x40 is a constant. In a following patch
> > you add some equations to mem_exp, so it's no longer constant for the
> > compiler and it compiles fine. Nevertheless the 0x40 is still present
> > with this series applied and either that or the mask seem wrong. Can
> > you have a look?
> 
> The mask for mem_exp is correct. The 0x40 case for initializing the full
> memory should explicitly set bit 6 in the parameter instead of being a
> special value of mem_exp.

Does this bit 6 have a name?

> 
> Should I send a patch on top of the series or send a v3 with a fix for
> the patch that causes the intermediate compile breakage?

A patch on top of this series is enough. I'll integrate it into this
series then.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


