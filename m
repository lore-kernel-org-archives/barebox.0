Delivery-date: Sun, 18 Jan 2026 20:58:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhYvH-002mNv-1w
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 20:58:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhYvG-0002gr-G4
	for lore@pengutronix.de; Sun, 18 Jan 2026 20:58:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PmFZPPVj7m1bDTR6eQNATL5jztwAxTnqx5wa+itR9CA=; b=RosbKoikozK5/b500wmNhbBXAd
	ANm4Oig6HgztaP1MSl/sSbnyRDG09m3Yu1Fe7xaKiEsQpe9jroTLe01+kHxkWpCYCXEURPh0NhfQw
	knl5wxEa4wtuGDMzAfy6LLzxMS3rgPq98XtO4O0bJ3lPJq4iUrrraH+n7ovEVEjN0WJ4MALXxm7SH
	/oaTNaLieKRw6sk1RXjv/Kei4EHnTWs0PSQmefc7MufJ6b/9WDfY4fFVhvWsYjw3MqTcofIVL0zmM
	6MdGhdot8fAWzLhdqonTMdogJ1eTtLmq7ZJqS9o24O7DoU1A6cX2RcgDCikvaBNNTE88VjT72bsYR
	flGfdpdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhYus-00000000rX9-17st;
	Sun, 18 Jan 2026 19:58:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhYuo-00000000rW8-3j2n
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 19:58:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYun-0002cW-1v; Sun, 18 Jan 2026 20:58:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYun-001IEV-1j;
	Sun, 18 Jan 2026 20:58:24 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYum-001cWc-2P;
	Sun, 18 Jan 2026 20:58:24 +0100
Date: Sun, 18 Jan 2026 20:58:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260118195824.5vfg755fnkee4vyu@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-18-8f0625ac5471@pengutronix.de>
 <45729455-5317-40d3-a052-eb62688dfda3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45729455-5317-40d3-a052-eb62688dfda3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_115826_953522_9A325B98 
X-CRM114-Status: GOOD (  29.19  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 18/23] security: optee: add optee_extract_fdto helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-15, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 11/10/25 9:34 PM, Marco Felsch wrote:
> > Add a helper to extract the added OP-TEE FDT overlay fragments from the
> > FDT provided via arg2 during the boot phase into a dedicated buffer.
> > 
> > The dedicated overlay buffer can be used later on by the PBL code to
> > apply the overlay to the barebox runtime DTB and to the kernel DTB.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  include/tee/optee.h |  6 ++++++
> >  security/optee.c    | 44 ++++++++++++++++++++++++++++++++++++++++++++
> >  2 files changed, 50 insertions(+)
> > 
> > diff --git a/include/tee/optee.h b/include/tee/optee.h
> > index 10e829c04f8832c4c04771800f1963e25f425482..679662a6e6944da59d24d6268ebcf5dff19d0980 100644
> > --- a/include/tee/optee.h
> > +++ b/include/tee/optee.h
> > @@ -37,6 +37,7 @@ int optee_verify_header (const struct optee_header *hdr);
> >  
> >  void optee_set_membase(const struct optee_header *hdr);
> >  int optee_get_membase(u64 *membase);
> > +int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz);
> >  
> >  #else
> >  
> > @@ -49,6 +50,11 @@ static inline int optee_get_membase(u64 *membase)
> >  	return -ENOSYS;
> >  }
> >  
> > +static inline int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz)
> > +{
> > +	return 0;
> > +}
> > +
> >  #endif /* CONFIG_HAVE_OPTEE */
> >  
> >  #ifdef __PBL__
> > diff --git a/security/optee.c b/security/optee.c
> > index 422bc1c90924ba8ab266b1aa8d06e52c819d2010..3750bb6f496af990d77f3629b470b174dd7a7c7a 100644
> > --- a/security/optee.c
> > +++ b/security/optee.c
> > @@ -5,7 +5,9 @@
> >  #include <tee/optee.h>
> >  #include <linux/printk.h>
> >  #include <linux/errno.h>
> > +#include <linux/libfdt.h>
> >  #include <linux/limits.h>
> > +#include <pbl.h>
> >  
> >  static u64 optee_membase = U64_MAX;
> >  
> > @@ -60,3 +62,45 @@ void optee_set_membase(const struct optee_header *hdr)
> >  	optee_membase = (u64)hdr->init_load_addr_hi << 32;
> >  	optee_membase |= hdr->init_load_addr_lo;
> >  }
> > +
> > +int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz)
> > +{
> > +	int err;
> > +	int subnode;
> > +
> > +	err = fdt_check_header(fdt);
> > +	if (err) {
> > +		pr_err("Invalid device tree blob: %s\n", fdt_strerror(err));
> > +		return err;
> > +	}
> > +
> > +	err = fdt_create_empty_tree(fdto, fdto_sz);
> > +	if (err) {
> > +		pr_err("Failed to initialize OP-TEE FDTO space: %s\n", fdt_strerror(err));
> > +		return err;
> > +	}
> > +
> > +	fdt_for_each_subnode(subnode, fdt, 0) {
> > +		const char *name;
> > +		int len;
> > +
> > +		name = fdt_get_name(fdt, subnode, &len);
> > +		if (!name) {
> > +			pr_warn("Failed to query FDT node name: %s\n", fdt_strerror(len));
> > +			continue;
> > +		}
> > +
> > +		if (strncmp(name, "fragment@", 9) != 0) {
> > +			pr_debug("Skip node %s\n", name);
> > +			continue;
> > +		}
> > +
> > +		err |= fdt_copy_node(fdt, fdto, "/", name);
> 
> Aren't these sequential error codes? OR'ing them will produce a
> non-sensical error code if there are different error codes returned.

That's true.

> Better change to:
> 
> 	ret = fdt_copy_node(fdt, fdto, "/", name);
> 	if (ret)
> 		err = ret;

Hm, but this would hide previous errors too. Of course we could break
the loop in the error case. I will add this to the v2.

> with err being initialized as zero.

Sure.

Regards,
  Marco

> 
> > +	}
> > +
> > +	/* Clear the FDTO memory to not supply incomplete overlays */
> > +	if (err)
> > +		memset(fdto, 0, fdto_sz);
> > +
> > +	return err;
> > +}
> > 
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


