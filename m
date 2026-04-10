Delivery-date: Fri, 10 Apr 2026 14:07:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBAdb-00AdRv-0c
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 14:07:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wBAda-00039S-FN
	for lore@pengutronix.de; Fri, 10 Apr 2026 14:07:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wT5dY30nDsrNRQOm0EM7kUwDU5t9IwMcomIuJBRCFzQ=; b=uFjXOLYWQdCzRJWcXPEpZZQUCV
	z/YM33JD7K75omoweE2k4OK4MX7ucOhBAsJ1lFVm/YoFYeBkFBDKhzZho+CSqyTEZiNnGWP8NRC6K
	KPg13mIesy/hHrYWrTABmXJVckhjs0TdSrUkQuVEcmqT70Na3x3LglqFqoO9YMhyOLOgeVRdGJY2o
	1OvT9dyBzj6M0nwjddrAtuox7IakAOutMpvaEvsnBpJLEoWiRybloOBkxwZN4+5/jGLaUZuvFvMWH
	pvuCFnC/+XJSaAA/rP9ddlMT/GM30eqa8dBvRRAqNcXKTlZzB2iZfITdqDIQ9WwCHwqDsnPzwidOf
	UuxPk/Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBAdC-0000000C7q8-01IK;
	Fri, 10 Apr 2026 12:06:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBAd9-0000000C7pI-0fz9
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 12:06:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wBAd7-00034o-5s; Fri, 10 Apr 2026 14:06:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wBAd7-004gWD-00;
	Fri, 10 Apr 2026 14:06:33 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wBAd6-00000001Xsy-3nhU;
	Fri, 10 Apr 2026 14:06:32 +0200
Date: Fri, 10 Apr 2026 14:06:32 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <adjnyOYr0g4d-st9@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
 <20260409-socfpga-iossm-v1-v2-4-09effab91bc1@pengutronix.de>
 <39a08f69-3461-48da-a890-0e3b879bb40a@pengutronix.de>
 <adi1fNOS4tRV9WB7@pengutronix.de>
 <f029403e-86c0-4cfa-9c8f-37f90860c0a4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f029403e-86c0-4cfa-9c8f-37f90860c0a4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_050635_199689_F35ACFE2 
X-CRM114-Status: GOOD (  30.53  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/10] arm: socfpga: iossm: store size in bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 10 Apr 2026 10:37:09 +0200, Ahmad Fatoum wrote:
> On 4/10/26 10:31 AM, Michael Tretter wrote:
> > On Fri, 10 Apr 2026 10:13:41 +0200, Ahmad Fatoum wrote:
> >> On 4/9/26 3:52 PM, Michael Tretter wrote:
> >>> The mem_width_info is the memory size in gigabits. Convert it to bytes
> >>> before storing it for each bank to have a more convenient format and
> >>> simplify the conversion when reading the value.
> >>>
> >>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> >>> ---
> >>> Changes in v2:
> >>>
> >>> - Change memory_size in io96b_mb_ctrl to phys_size_t to prevent overflow
> >>
> >> Thanks for addressing the concern. I looked it over and there's still a
> >> chance for overflow.
> >>
> >>> diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
> >>> index 9299fee71e0b..042ea4a99e5c 100644
> >>> --- a/arch/arm/mach-socfpga/iossm_mailbox.c
> >>> +++ b/arch/arm/mach-socfpga/iossm_mailbox.c
> >>> @@ -9,6 +9,7 @@
> >>>  #include <common.h>
> >>>  #include <io.h>
> >>>  #include <linux/bitfield.h>
> >>> +#include <linux/sizes.h>
> >>>  #include "iossm_mailbox.h"
> >>>  #include <mach/socfpga/generic.h>
> >>>  #include <mach/socfpga/soc64-regs.h>
> >>> @@ -404,21 +405,25 @@ int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
> >>>  	struct io96b_mb_resp usr_resp;
> >>>  	struct io96b_mb_ctrl *mb_ctrl;
> >>>  	int i, j;
> >>> -	u16 memory_size;
> >>> -	u16 total_memory_size = 0;
> >>> +	phys_size_t memory_size;
> >>> +	u32 mem_width_info;
> >>> +	phys_size_t total_memory_size = 0;
> >>>  
> >>>  	/* Get all memory interface(s) total memory size on all instance(s) */
> >>>  	for (i = 0; i < io96b_ctrl->num_instance; i++) {
> >>>  		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
> >>>  		memory_size = 0;
> >>> +
> >>>  		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
> >>>  			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
> >>>  					      mb_ctrl->ip_type[j],
> >>>  					      mb_ctrl->ip_instance_id[j],
> >>>  					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
> >>> +			mem_width_info = usr_resp.cmd_resp_data[1] & GENMASK(7, 0);
> >>
> >> I assume this is the RAM memory width in bytes, e.g. 2 or 4 bytes, but
> >> the mask  allows it to be up to 255.
> > 
> > mem_width_info is in Giga bits.
> 
> Uh, is memory width here not the number of bits transferred per clock
> cycle..?

Maybe I'm confused, but I understand that it's not the bits transferred
per clock cycle (the memory bus interface width), but information about
the memory geometry under the assumption of a memory depth of 1 Giga
bits. My understanding could be wrong, though.

> 
> > 
> >>
> >>>  
> >>> -			memory_size = memory_size +
> >>> -				(usr_resp.cmd_resp_data[1] & GENMASK(7, 0));
> >>> +			mb_ctrl->memory_size[j] = mem_width_info * (SZ_1G / SZ_8);
> >>
> >> SZ_4G / (SZ_1G / 8) = 32
> >>
> >> So the maximum value permitted in mem_width_info without overflowing is
> >> 31, but the code accepts up to 255. As all types on the left hand side
> >> are 32-bit only.
> > 
> > This driver is only available on Agilex5, which is arm64 and selects
> > PHYS_ADDR_T_64BIT. Thus, phys_size_t has 64 bits and doesn't result in
> > an overflow.
> 
> Sorry, left-right confusion. The right had size is all 32-bit integers,
> so they may wrap around and are truncated before assignment to the
> 64-bit left hand side.

Ah, indeed. I'll add the necessary cast to the right hand side.

> >> Worth a check or adaptation of the mask?

According to the register definition [0], the mask is correct.

[0] https://docs.altera.com/r/docs/817467/25.3/external-memory-interfaces-emif-ip-user-guide-agilextm-5-fpgas-and-socs/agilextm-5-mailbox-structure-and-register-definitions

Michael

> >>> +
> >>> +			memory_size += mb_ctrl->memory_size[j];
> >>>  		}
> >>>  
> >>>  		if (!memory_size) {
> >>> diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
> >>> index bd66621d5f70..0c15c92bb867 100644
> >>> --- a/arch/arm/mach-socfpga/iossm_mailbox.h
> >>> +++ b/arch/arm/mach-socfpga/iossm_mailbox.h
> >>> @@ -79,6 +79,7 @@ struct io96b_mb_ctrl {
> >>>  	u32 num_mem_interface;
> >>>  	u32 ip_type[2];
> >>>  	u32 ip_instance_id[2];
> >>> +	phys_size_t memory_size[2];
> >>>  };
> >>>  
> >>>  /*
> >>> @@ -101,7 +102,7 @@ struct io96b_mb_resp {
> >>>   * @mb_ctrl:		IOSSM mailbox required information
> >>>   */
> >>>  struct io96b_instance {
> >>> -	u16 size;
> >>> +	phys_size_t size;
> >>>  	phys_addr_t io96b_csr_addr;
> >>>  	bool cal_status;
> >>>  	struct io96b_mb_ctrl mb_ctrl;
> >>> @@ -126,7 +127,7 @@ struct io96b_info {
> >>>  	bool			 overall_cal_status;
> >>>  	const char		*ddr_type;
> >>>  	bool			 ecc_status;
> >>> -	u16			 overall_size;
> >>> +	phys_size_t		 overall_size;
> >>>  	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
> >>>  	bool			 ckgen_lock;
> >>>  	u8			 num_port;
> >>>


