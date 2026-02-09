Delivery-date: Mon, 09 Feb 2026 21:18:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpXiS-00AkFM-1c
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 21:18:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpXiQ-00082p-Ig
	for lore@pengutronix.de; Mon, 09 Feb 2026 21:18:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KcwIla0nt6rn7WhNuB1ceEBQhqXAvbbIzOVdejY/5rc=; b=fEKys+o6mlST63YNGhiHK9NFtM
	1eYwtDl/PTVqOb4hFwsczCDn1eA5irJNAHO8d8IOYsMXa+0FDCe4HSg+GMJmO70qwhPb2YDVU/z1G
	69gDQiIjvgbcUnM0ImeV82uI+NK5QdGF2TlAvOUxuNIBnmAprn8yph+a8LFAm8nELGAcLeOArOckg
	yvxcQlilaHGDqccnqBeIzD80c096lcJiISEmqsJvGjM1dAjLdnfx2NuwL2GLftUushRiPPItaQ2Pw
	QwJuLbxk8NItyeKh6hU+7sQZ9bZ1MdfQ1uxpVFO0yRbisIUsl8UGVeWYPM+cV1po6DXUjt6YafIeG
	Ih8scwzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpXi2-0000000FxtP-0c3k;
	Mon, 09 Feb 2026 20:18:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpXhx-0000000FxsD-3moh
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 20:18:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpXhw-0007vv-7b; Mon, 09 Feb 2026 21:18:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpXhw-0050uU-2G;
	Mon, 09 Feb 2026 21:18:08 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpXhv-0089tk-33;
	Mon, 09 Feb 2026 21:18:07 +0100
Date: Mon, 9 Feb 2026 21:18:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260209201807.vjwkzpm3mdzhnbso@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-11-da075e6818e0@pengutronix.de>
 <4ca020c8-d430-4c6a-96ad-bfb93970297a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ca020c8-d430-4c6a-96ad-bfb93970297a@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_121812_370864_9689E741 
X-CRM114-Status: GOOD (  21.04  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 11/15] security: optee: add optee_handoff_overlay
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-06, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/4/26 9:01 PM, Marco Felsch wrote:
> > Add a helper to pass the OP-TEE provided overlay to barebox via the
> > handoff mechanism. This can be useful to generalize the reserved-memory
> > node handling since OP-TEE can provide this information via the overlay
> > if configured in OP-TEE.
> > 
> > While on it sort the include headers in alphabetical order.
> 
> With below omission fixed:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  include/tee/optee.h |  5 +++++
> >  security/Kconfig    |  9 +++++++++
> >  security/optee.c    | 15 ++++++++++++++-
> >  3 files changed, 28 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/tee/optee.h b/include/tee/optee.h
> > index 10e829c04f8832c4c04771800f1963e25f425482..7126e3c6e24bbf0f37aee7827dc3b4d9619d3bc3 100644
> > --- a/include/tee/optee.h
> > +++ b/include/tee/optee.h
> > @@ -37,6 +37,7 @@ int optee_verify_header (const struct optee_header *hdr);
> >  
> >  void optee_set_membase(const struct optee_header *hdr);
> >  int optee_get_membase(u64 *membase);
> > +void optee_handoff_overlay(void *ovl, unsigned int ovl_sz);
> >  
> >  #else
> >  
> > @@ -49,6 +50,10 @@ static inline int optee_get_membase(u64 *membase)
> >  	return -ENOSYS;
> >  }
> >  
> > +void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
> > +{
> > +}
> 
> static inline missing

Sure!

Thanks,
  Marco

> 
> Cheers,
> Ahmad
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


