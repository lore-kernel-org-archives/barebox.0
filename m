Delivery-date: Wed, 08 Apr 2026 09:13:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAN67-009qtK-0w
	for lore@lore.pengutronix.de;
	Wed, 08 Apr 2026 09:13:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAN66-0000Ht-It
	for lore@pengutronix.de; Wed, 08 Apr 2026 09:13:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=91GrEM9gSaiL6tzooBNiY7/5xZJOrgHaJQutsIJ6Mpc=; b=aLxxvEVOLnmXUhgIA4stRWI7jA
	ezS2Uxb7hHngVXt8EnDUjMl2JyTHPS+Rl/NY+zblaLXn4bW4LI9VEG3keIH3g+MPqCHW0GkBViR81
	1hxHkzs0KCN9M8L9bb5tBHCSnW18rXkQ4TBaulBg3akrTCkasLDtbhRsvANo1xhvlY2FNko1ifQVt
	UvOTxT900qbq/ieGwTbtGcf7XbzUznsZ6MKzxmxSVDkqFOB9SeYftpBwJSSKqJioLt45e+tsYyf6a
	IcHQdm4850CEhp4880OV5QCiF2xnzVP/QpHmX8XRvbJDmsutrpEBr4H1pkz9NO+V5WfbicJYN/8Ow
	W1PcSweg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAN5a-00000008P1m-1D4O;
	Wed, 08 Apr 2026 07:12:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAN5X-00000008P0d-2UXI
	for barebox@lists.infradead.org;
	Wed, 08 Apr 2026 07:12:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wAN5V-000097-7X; Wed, 08 Apr 2026 09:12:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wAN5V-004JGZ-09;
	Wed, 08 Apr 2026 09:12:33 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wAN5U-0000000EvSj-3xdk;
	Wed, 08 Apr 2026 09:12:32 +0200
Date: Wed, 8 Apr 2026 09:12:32 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <adX_4NMJOObMDzq1@pengutronix.de>
References: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
 <20260407-socfpga-iossm-v1-v1-4-6440a5337eff@pengutronix.de>
 <11c7cdd4-9bf4-4325-a408-87421d5d0db2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <11c7cdd4-9bf4-4325-a408-87421d5d0db2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_001235_635141_6095C22F 
X-CRM114-Status: GOOD (  24.31  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/10] arm: socfpga: iossm: store size in bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 07 Apr 2026 19:43:19 +0200, Ahmad Fatoum wrote:
> On 4/7/26 7:09 PM, Michael Tretter wrote:
> > The mem_width_info is the memory size in gigabits. Convert it to bytes
> > before storing it for each bank to have a more convenient format and
> > simplify the conversion when reading the value.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/mach-socfpga/agilex5-sdram.c |  7 +++----
> >  arch/arm/mach-socfpga/iossm_mailbox.c | 13 +++++++++----
> >  arch/arm/mach-socfpga/iossm_mailbox.h |  5 +++--
> >  3 files changed, 15 insertions(+), 10 deletions(-)
> > 
> > diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
> > index 96b2b425315f..5fb59d413e8f 100644
> > --- a/arch/arm/mach-socfpga/agilex5-sdram.c
> > +++ b/arch/arm/mach-socfpga/agilex5-sdram.c
> > @@ -299,10 +299,6 @@ int agilex5_ddr_init_full(void)
> >  		return ret;
> >  	}
> >  
> > -	hw_size = (phys_size_t)io96b_ctrl.overall_size * SZ_1G / SZ_8;
> > -
> > -	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size >> 20);
> > -
> >  	ret = io96b_ecc_enable_status(&io96b_ctrl);
> >  	if (ret) {
> >  		pr_debug("DDR: Failed to get DDR ECC status\n");
> > @@ -326,6 +322,9 @@ int agilex5_ddr_init_full(void)
> >  		pr_debug("SDRAM-ECC: Initialized success\n");
> >  	}
> >  
> > +	hw_size = io96b_ctrl.overall_size;
> > +	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size / SZ_1M);
> > +
> >  	sdram_set_firewall(hw_size);
> >  
> >  	/* Firewall setting for MPFE CSR */
> > diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
> > index 9299fee71e0b..042ea4a99e5c 100644
> > --- a/arch/arm/mach-socfpga/iossm_mailbox.c
> > +++ b/arch/arm/mach-socfpga/iossm_mailbox.c
> > @@ -9,6 +9,7 @@
> >  #include <common.h>
> >  #include <io.h>
> >  #include <linux/bitfield.h>
> > +#include <linux/sizes.h>
> >  #include "iossm_mailbox.h"
> >  #include <mach/socfpga/generic.h>
> >  #include <mach/socfpga/soc64-regs.h>
> > @@ -404,21 +405,25 @@ int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
> >  	struct io96b_mb_resp usr_resp;
> >  	struct io96b_mb_ctrl *mb_ctrl;
> >  	int i, j;
> > -	u16 memory_size;
> > -	u16 total_memory_size = 0;
> > +	phys_size_t memory_size;
> > +	u32 mem_width_info;
> > +	phys_size_t total_memory_size = 0;
> >  
> >  	/* Get all memory interface(s) total memory size on all instance(s) */
> >  	for (i = 0; i < io96b_ctrl->num_instance; i++) {
> >  		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
> >  		memory_size = 0;
> > +
> >  		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
> >  			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
> >  					      mb_ctrl->ip_type[j],
> >  					      mb_ctrl->ip_instance_id[j],
> >  					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
> > +			mem_width_info = usr_resp.cmd_resp_data[1] & GENMASK(7, 0);
> >  
> > -			memory_size = memory_size +
> > -				(usr_resp.cmd_resp_data[1] & GENMASK(7, 0));
> > +			mb_ctrl->memory_size[j] = mem_width_info * (SZ_1G / SZ_8);
> > +
> > +			memory_size += mb_ctrl->memory_size[j];
> >  		}
> >  
> >  		if (!memory_size) {
> > diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
> > index bd66621d5f70..1b1bb1c7a19a 100644
> > --- a/arch/arm/mach-socfpga/iossm_mailbox.h
> > +++ b/arch/arm/mach-socfpga/iossm_mailbox.h
> > @@ -79,6 +79,7 @@ struct io96b_mb_ctrl {
> >  	u32 num_mem_interface;
> >  	u32 ip_type[2];
> >  	u32 ip_instance_id[2];
> > +	u32 memory_size[2];
> 
> This overflows for >= SZ_8G memory. That looks odd.

That should have been phys_size_t like the other uses, too. Thanks! I'll
send a v2.

Michael

> 
> Thanks,
> Ahmad
> 
> >  };
> >  
> >  /*
> > @@ -101,7 +102,7 @@ struct io96b_mb_resp {
> >   * @mb_ctrl:		IOSSM mailbox required information
> >   */
> >  struct io96b_instance {
> > -	u16 size;
> > +	phys_size_t size;
> >  	phys_addr_t io96b_csr_addr;
> >  	bool cal_status;
> >  	struct io96b_mb_ctrl mb_ctrl;
> > @@ -126,7 +127,7 @@ struct io96b_info {
> >  	bool			 overall_cal_status;
> >  	const char		*ddr_type;
> >  	bool			 ecc_status;
> > -	u16			 overall_size;
> > +	phys_size_t		 overall_size;
> >  	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
> >  	bool			 ckgen_lock;
> >  	u8			 num_port;
> > 


