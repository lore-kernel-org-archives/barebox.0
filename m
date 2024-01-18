Delivery-date: Thu, 18 Jan 2024 10:09:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOOQ-0056IK-2c
	for lore@lore.pengutronix.de;
	Thu, 18 Jan 2024 10:09:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQOOR-0001Dr-E8
	for lore@pengutronix.de; Thu, 18 Jan 2024 10:09:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QcZ+0BTNwOzx4YlXL2JfBcaaTEmRO2f7YRwpJlGCc4w=; b=1z6yxgQKtsfarhLrHr5ioZEsC0
	01jo4+8gJm/92b+YZTjfqdVViLJRPmq0+V72kpuV4uZg1TF7xz8VYMWPkQ6bnh2ACkUA4b9BoKNj/
	kziWS0BGkD6vr/hOCHZVtUP4AAT7gSuSq8WoOCI/QY6u3sbkGw+to68utpbuiWvhRSTK0GvH/HBeR
	nJ2Sqq9mCM9sEiDaStVjPQ0LmNB+YR9Wvo6AgUDZ1FjshDXebyrXNdW2UvnvjfSp1/anzMkw3uNFV
	nVZt96tMSmy8LR4B5KyRQ1Q26U8y5b14gFlEmmzTFTbmBTwf6YZLS6n+qtm2thBK3AlH0NX2Rr7Ka
	ndC+zIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQONS-002E88-0d;
	Thu, 18 Jan 2024 09:07:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQONP-002E7Y-1N
	for barebox@lists.infradead.org;
	Thu, 18 Jan 2024 09:07:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQONN-00010a-67; Thu, 18 Jan 2024 10:07:53 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQONM-000eP6-Ph; Thu, 18 Jan 2024 10:07:52 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQONM-000XEm-NR; Thu, 18 Jan 2024 10:07:52 +0100
Date: Thu, 18 Jan 2024 10:07:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240118090752.aj6caiscofe7ocgu@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <20240116170738.209954-6-m.felsch@pengutronix.de>
 <20240117150014.GK4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117150014.GK4700@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_010755_463166_6018C17F 
X-CRM114-Status: GOOD (  25.73  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 05/18] ARM: i.MX8M: scratch: add optee_hdr area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-17, Sascha Hauer wrote:
> On Tue, Jan 16, 2024 at 06:07:25PM +0100, Marco Felsch wrote:
> > Add a new scratch storage slot for possible optee-hdr information which
> > have to passed between barebox-pbl and barebox-proper. Reserve 512 bytes
> > between the bootrom-log and the optee-hdr in case the bootrom-log need
> > more space in the future.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/scratch.c | 29 +++++++++++++++++++++++++++++
> >  include/mach/imx/scratch.h  |  5 +++++
> >  2 files changed, 34 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> > index f4faff835c8c..6ba9b9d55b7d 100644
> > --- a/arch/arm/mach-imx/scratch.c
> > +++ b/arch/arm/mach-imx/scratch.c
> > @@ -8,10 +8,13 @@
> >  #include <mach/imx/esdctl.h>
> >  #include <mach/imx/scratch.h>
> >  #include <memory.h>
> > +#include <tee/optee.h>
> >  #include <pbl.h>
> >  
> >  struct imx_scratch_space {
> >  	u32 bootrom_log[128];
> > +	u32 reserved[128];		/* reserve for bootrom log */
> > +	struct optee_header optee_hdr;
> >  };
> >  
> >  static struct imx_scratch_space *scratch;
> > @@ -53,6 +56,32 @@ const u32 *imx8m_scratch_get_bootrom_log(void)
> >  	return scratch->bootrom_log;
> >  }
> >  
> > +void imx8m_scratch_save_optee_hdr(const struct optee_header *hdr)
> > +{
> > +	size_t sz = sizeof(*hdr);
> > +
> > +	if (!scratch) {
> > +		pr_err("No scratch area initialized, skip saving optee-hdr");
> > +		return;
> > +	}
> > +
> > +	pr_debug("Saving optee-hdr to scratch area 0x%p\n", &scratch->optee_hdr);
> > +
> > +	memcpy(&scratch->optee_hdr, hdr, sz);
> > +}
> > +
> > +const struct optee_header *imx8m_scratch_get_optee_hdr(void)
> > +{
> > +	if (!scratch) {
> > +		if (IN_PBL)
> > +			return ERR_PTR(-EINVAL);
> > +		else
> > +			scratch = (void *)arm_mem_scratch_get();
> > +	}
> > +
> > +	return &scratch->optee_hdr;
> > +}
> 
> These two function do not seem to be i.MX8 specific, I could reuse them
> on i.MX9, so better with imx_ prefix?

Yes, I can do that.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


