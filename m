Delivery-date: Sun, 18 Jan 2026 20:19:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhYJD-002lvQ-1j
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 20:19:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhYJC-00084E-5X
	for lore@pengutronix.de; Sun, 18 Jan 2026 20:19:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D88SbePCVNnWL/5DooeFrgHi0zql/VzvEEWBaJSonRI=; b=KlUx2RYUWRfB5FFzzhRzxPqQLK
	/0N3pmlbkVzqNRkXVl9oJzt/knNJcgQld93M+0XfK9wHQJPvyDj3MJItvW1TzkVeJ0HTd8ysiLSLA
	dzTPmwCk03Qgck9tEsjz+PQzjurOSRslxy7R5TWZ7FWRDQErdTzT5t6nZIPP2hcdOiia1inafkR9L
	xF4jNmng+ZLh3NAofY97pknRtzLjhzgKNBJLIkpFowB2FJLiAhaky7Q60TcX3v5gMcftrG9P79159
	DRlI0ACPT7xSZRXikFSqIy498EM7e2SAIVq9tpIhYSE5q7O4vXm6aTL0Qabjf7tc0PZuTHnSK9FAK
	Cgea95fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhYIe-00000000nH4-3aiJ;
	Sun, 18 Jan 2026 19:19:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhYIc-00000000nGJ-3D48
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 19:19:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYIb-0007zY-06; Sun, 18 Jan 2026 20:18:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYIb-001I7D-1Y;
	Sun, 18 Jan 2026 20:18:56 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhYIa-001cEw-2F;
	Sun, 18 Jan 2026 20:18:56 +0100
Date: Sun, 18 Jan 2026 20:18:56 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260118191856.56dwjwn62hltbnnb@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-9-8f0625ac5471@pengutronix.de>
 <500efc62-d8d0-4057-9afd-03d8993cdda9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <500efc62-d8d0-4057-9afd-03d8993cdda9@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_111859_006585_0527AA8C 
X-CRM114-Status: GOOD (  34.91  )
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
Subject: Re: [PATCH 09/23] pbl: fdt: add pbl_load_fdt helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 26-01-15, Ahmad Fatoum wrote:
> Hello Marco.
> 
> On 11/10/25 9:34 PM, Marco Felsch wrote:
> > The helper provides a common FDT load mechanism to load the (compressed)
> > DTB to the provided destination address. Early FDTs may required by
> > other BL3x binaries like BL31 (TF-A) and BL32 (OP-TEE).
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/Kconfig  |  3 +++
> >  include/pbl.h |  2 ++
> >  pbl/Kconfig   | 11 +++++++++
> >  pbl/fdt.c     | 75 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 91 insertions(+)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 55618bf896c25f2afa2786706e27fce6ab4b3a39..edd574879b244d3843f1b5a06e1e25c5d4acbc8d 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -62,6 +62,9 @@ config ARCH_DMA_DEFAULT_COHERENT
> >  config ARCH_HAS_DMA_WRITE_COMBINE
> >  	bool
> >  
> > +config ARCH_HAS_EARLY_FDT_SUPPORT
> > +	bool
> > +
> >  config ARCH_HAS_ASAN_FIBER_API
> >  	bool
> >  
> > diff --git a/include/pbl.h b/include/pbl.h
> > index 9db4652e833bf5e82fd42a1cae19e94c4f2f868f..bf0c9e2ba29428361cb16a572295e66f20acdd82 100644
> > --- a/include/pbl.h
> > +++ b/include/pbl.h
> > @@ -31,6 +31,8 @@ fdt_device_get_match_data(const void *fdt, const char *nodepath,
> >  
> >  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
> >  		       const void *hash, unsigned int hash_len);
> > +int pbl_load_fdt(const void *fdt, void *dest, int destsize);
> > +
> >  #endif
> >  
> >  void __noreturn barebox_pbl_entry(ulong, ulong, void *);
> > diff --git a/pbl/Kconfig b/pbl/Kconfig
> > index cab9325d16e8625bcca10125b3281062abffedbc..ea2086f33ea405ecd7b00065eaf9874218152b3a 100644
> > --- a/pbl/Kconfig
> > +++ b/pbl/Kconfig
> > @@ -65,6 +65,17 @@ config PBL_VERIFY_PIGGY
> >  	depends on ARM || MIPS || RISCV
> >  	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
> >  
> > +config PBL_EARLY_FDT_LOAD
> > +	bool "Enable early FDT loading"
> > +	depends on ARCH_HAS_EARLY_FDT_SUPPORT
> > +	select LIBFDT
> > +	help
> > +	  This enables the support to decompress and load the barebox builtin DTB
> > +	  during the pbl (BL2) phase.
> > +
> > +	  This is useful for BL31 and BL32 firmwares which may use the DTB for
> > +	  device configuration.
> 
> There are ARM terms, but this is the generic pbl/Kconfig. I should the

Yes, these terms are very ARM specific. I didn't wanted to mention
OP-TEE by name since there are other TEEs as well.

> symbol here should have no prompt and instead should be selected by an
> architecture specific symbol if and only if the functionality will
> actually be used.

I don't know since in the end, this is board-specific decision made by
the system-integrator.

That beeing said, I think it shouldn't be a Kconfig symbol at all,
instead each board has to decide during runtime because this decision
influences the system-boot-time.

ARCH_HAS_EARLY_FDT_SUPPORT - is independt, this should be set by the
Platform/Arch for sure.

Regards,
  Marco


> Thanks,
> Ahmad
> 
> > +
> >  config PBL_CLOCKSOURCE
> >  	bool
> >  
> > diff --git a/pbl/fdt.c b/pbl/fdt.c
> > index ac377446caeafb1beaeb211aa8bdec8767ae21fe..0cd9f5a0f11723e9f9b6848e8553da481b92f2be 100644
> > --- a/pbl/fdt.c
> > +++ b/pbl/fdt.c
> > @@ -1,8 +1,10 @@
> >  // SPDX-License-Identifier: GPL-2.0
> > +#include <compressed-dtb.h>
> >  #include <linux/libfdt.h>
> >  #include <pbl.h>
> >  #include <linux/printk.h>
> >  #include <stdio.h>
> > +#include <uncompress.h>
> >  
> >  static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
> >  				   uint64_t *val)
> > @@ -185,3 +187,76 @@ const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
> >  
> >  	return NULL;
> >  }
> > +
> > +static int pbl_open_dtbz_into(const void *fdt, void *buf, int bufsize)
> > +{
> > +	const struct barebox_boarddata_compressed_dtb *compressed_dtb;
> > +	int ret;
> > +
> > +	if (!fdt_blob_can_be_decompressed(fdt)) {
> > +		pr_warn("DTB can't be decompressed\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	compressed_dtb = fdt;
> > +
> > +	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_NONE)) {
> > +		ret = fdt_open_into(compressed_dtb->data, buf, bufsize);
> > +		if (ret)
> > +			pr_warn("Failed to open uncompressed DTB with %s\n",
> > +				fdt_strerror(ret));
> > +		return ret ? -EINVAL : 0;
> > +	}
> > +
> > +	if (bufsize < compressed_dtb->datalen_uncompressed) {
> > +		pr_warn("FDT buffer to small, min. %u bytes required\n",
> > +			compressed_dtb->datalen_uncompressed);
> > +		return -EINVAL;
> > +	}
> > +
> > +	ret = pbl_dtbz_uncompress(buf, (void *)compressed_dtb->data,
> > +				  compressed_dtb->datalen);
> > +	if (ret) {
> > +		pr_warn("Failed to uncompress DTB err=%d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	if (!blob_is_fdt(buf)) {
> > +		pr_warn("Failed to determine FDT type for uncompressed DTB\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Required to setup size data structures to allow runtime adaptions */
> > +	ret = fdt_open_into(buf, buf, bufsize);
> > +	if (ret)
> > +		pr_warn("Failed to open decompressed DTB with %s\n", fdt_strerror(ret));
> > +
> > +	return ret ? -EINVAL : 0;
> > +}
> > +
> > +int pbl_load_fdt(const void *fdt, void *dest, int destsize)
> > +{
> > +	int ret;
> > +
> > +	if (!IS_ENABLED(CONFIG_PBL_EARLY_FDT_LOAD))
> > +		return -ENOTSUPP;
> > +
> > +	if (destsize == 0) {
> > +		pr_warn("Skip early FDT load due to dest buffer size of 0-bytes\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (blob_is_fdt(fdt)) {
> > +		ret = fdt_open_into(fdt, dest, destsize);
> > +		if (ret)
> > +			pr_warn("Failed to uncompressed DTB with %s\n",
> > +				fdt_strerror(ret));
> > +		return ret ? -EINVAL : 0;
> > +	} else if (blob_is_compressed_fdt(fdt)) {
> > +		return pbl_open_dtbz_into(fdt, dest, destsize);
> > +	}
> > +
> > +	pr_warn("FDT detection failed\n");
> > +
> > +	return -EINVAL;
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


