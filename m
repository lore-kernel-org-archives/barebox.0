Delivery-date: Tue, 18 Mar 2025 12:33:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVCT-0011Eb-2T
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:33:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVCS-0007iR-KQ
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:33:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhYYDrLMWIgbQ29SF49uElRCuPAk0R+GmOhtLIYmS2w=; b=LtKKaqPW9U0xu27VFOxsMzuxfZ
	JvpeTyw59UEqCTCdr+bnSHJxyuRYub9z7WGA2Mh1VUM8MNCMIryinODBSXO6SDsM4DbZYdyfMEOcm
	gBDBT8TTtliZCj3vHyDApGNvF7SOHy5GI46kjXQu4v4y3HioUsVBkL4YTXWwek6FX1PA3VTMUxBni
	2GbQql3vBJmN1pwGcxvzLT9WZtXq9l7pgrI+NAFw/smBNlLGloIjxT3UTNply7bW2oJU0Q5zBcKO4
	folNlsAXQeoDGvig0yWWNJhEjGsRx8NrxJQnsVtKE9cHhz2c/9/IWs5oznRBhMxcMBlUUatiPm2FM
	Sj24r/sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVC1-00000005jmP-2z2r;
	Tue, 18 Mar 2025 11:33:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVBz-00000005jlA-0s0g
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:33:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tuVBx-0007YX-MU; Tue, 18 Mar 2025 12:33:05 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuVBx-000Pwd-0G;
	Tue, 18 Mar 2025 12:33:05 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tuVBx-0031OX-1K;
	Tue, 18 Mar 2025 12:33:05 +0100
Date: Tue, 18 Mar 2025 12:33:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z9lZ8Q4bhUnuur1X@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
 <20250312-rpmb-v1-4-0f213382a3f3@pengutronix.de>
 <9c66b31b-a79c-4a07-a03f-119c7c3dadc7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c66b31b-a79c-4a07-a03f-119c7c3dadc7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_043307_243749_BA3E7896 
X-CRM114-Status: GOOD (  20.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] mci: add RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 17, 2025 at 04:18:32PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 3/12/25 13:16, Sascha Hauer wrote:
> > +
> > +int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
> > +			  void *rsp, unsigned long rsplen)
> > +{
> > +	/*
> > +	 * Whoever crafted the data supplied to this function knows how to
> > +	 * format the PRMB frames and which response is expected. If
> > +	 * there's some unexpected mismatch it's more helpful to report an
> > +	 * error immediately than trying to guess what was the intention
> > +	 * and possibly just delay an eventual error which will be harder
> > +	 * to track down.
> > +	 */
> > +	void *rpmb_data = NULL;
> > +	int ret;
> > +
> > +	mci_blk_part_switch(mci->rpmb_part);
> > +
> > +	if (!IS_ALIGNED((uintptr_t)req, ARCH_DMA_MINALIGN)) {
> 
> Even if alignment happens to be correct, there is no guarantee that
> there is no other data sharing a cache line.

reqlen is expected to be a single block of 512 bytes, so indeed when req
is aligned then the end is cacheline aligned as well. We could check
reqlen as well, but I actually never ran into this case, so we can just
return an error for now as you suggested.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


