Delivery-date: Sun, 18 Jan 2026 19:28:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhXVT-002l6f-1S
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 19:28:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhXVS-0003uE-Bi
	for lore@pengutronix.de; Sun, 18 Jan 2026 19:28:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2DT9UQv6ycMfdYsyMA37GbDELzbZKWvaX34+lL7iO4=; b=3SfuzKKfdYou7MMC8lWjU5xUrD
	xVYzB8BIrSqfW0v8a9aPx28qJ60dLkNmnG8Hs5Gko9A+0siT8mGF8p8u5ShXEE1OG9i4jaCk/Hadp
	6O2XPMeEChvZe3TJ/Al5mfwK+5w/oSL0N3Higcu0BqflSpIVWMC/J+slIq2GA9nnL/begfo3ebcVT
	IFW3JLBVDQepzSQLXiqaJlFDea3Ao9hOiktoblNgO8Ph17NYHEIhkLSCqRmnCrtMTdQGHyv4HhlvZ
	F02BVk22lxB3scp1St1e8+VGRLsgI/L9K8GtmKp1lEsCtDxJpWZ72nn5dXet7sPiVXjxmMr9yxS5l
	w9Ym+wCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXV1-00000000j5B-0Hfo;
	Sun, 18 Jan 2026 18:27:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXUx-00000000j3n-3V3H
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 18:27:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhXUw-0003pR-51; Sun, 18 Jan 2026 19:27:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhXUw-001Hix-24;
	Sun, 18 Jan 2026 19:27:37 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhXUv-001bp9-2l;
	Sun, 18 Jan 2026 19:27:37 +0100
Date: Sun, 18 Jan 2026 19:27:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260118182737.bjdtfiqxvwsr3cbc@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-14-8f0625ac5471@pengutronix.de>
 <67f78008-804b-4732-bd94-2b2b7bda5ec8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <67f78008-804b-4732-bd94-2b2b7bda5ec8@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_102739_871856_EB6FD7A1 
X-CRM114-Status: GOOD (  32.53  )
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
Subject: Re: [PATCH 14/23] ARM: i.MX: scratch: add OP-TEE FDTO support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 26-01-15, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 11/10/25 9:34 PM, Marco Felsch wrote:
> > OP-TEE has the support to write DTB overlay fragments if enabled via
> > OP-TEE config switch CFG_EXTERNAL_DTB_OVERLAY.
> > 
> > The overlay fragments are added to the exisiting DTB if OP-TEE was
> > started with a DTB provided via arg2 or written to a stand-alone DTB
> > overlay.
> > 
> > This adds a dedicated storage slot which can be passed to OP-TEE or be
> > used by barebox to extract the added overlay fragment into it.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> 
> 
> > +config SCRATCH_FDTO_SIZE
> > +	hex
> > +	default 0x0
> > +	default 0x4000 if PBL_EARLY_FDT_LOAD
> > +	prompt "Scratch FDTO size"
> > +	help
> > +	  The size of possible FDT overlay areas used by BL3x binaries to store
> > +	  runtime generated overlays. Can be 0x0 if early FDT support is not
> > +	  requied e.g. during BL31 and BL32 stage.
> 
> I understand the need, but I dislike that we add such fine-grained
> Kconfig symbols here. With Sascha's series to make barebox proper an
> ELF, PBL will have more insight about how much space barebox proper
> occupies and I intend to send a series after it to allow easier
> allocation for hand-off data.

Don't get me wrong I don't like it either. To be honest, I really
don't like the current firmware handling since it doesn't scale for
multi-images.

> I will include provisions for passing around the device tree and an
> overlay with that series, so please hold off sending your v2 until then.

This series is on the list since quite a while. Unfortunately I didn't
had the time to ping the ML since I was busy with other projects and
also tried in the mean time to get the missing OP-TEE part mainline.

However, I would like to get this mainline. Not sure how Sascha is going
to pick the patchsets but for the purpose of converting behaviours I
used a generic name like SCRATCH_FDTO_SIZE, instead of going the
Rockchip way which defined a Rockchip specific variable (unfortunately).

However, I would like to get this series mainline ASAP since my customer
is going to rely on the mechanism we implemented here. Furthermore it
improves the situation for i.MX6/i.MX7 by a lot (with Fabians patchset).

Regards,
  Marco


> 
> Thanks,
> Ahmad
> 
> 
> > +
> >  config MALLOC_ALIGNMENT
> >  	hex
> >  	default 8
> > diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
> > index 43bf55de48099f1662cd4331620a93303d4dd710..a9745a95732dd961dcae83ec46c3eaa078d62a16 100644
> > --- a/include/mach/imx/scratch.h
> > +++ b/include/mach/imx/scratch.h
> > @@ -15,6 +15,7 @@ const struct optee_header *imx_scratch_get_optee_hdr(void);
> >  void imx_scratch_save_optee_hdr(const struct optee_header *hdr);
> >  
> >  void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz);
> > +void imx_scratch_get_optee_fdto(void **fdto, unsigned int *fdto_sz);
> >  
> >  #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
> >  #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
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


