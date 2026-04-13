Delivery-date: Mon, 13 Apr 2026 09:28:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBig-00Bdax-1j
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:28:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBif-0004rz-Ri
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:28:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B3kNiXMUqgpepaE+IA7kSXfYXEQqNPr7mGqg+PD3Eag=; b=x8ZEa+VdAtCSloK+WiKgY6taXo
	BsGWXSU2KAgTo8hWGTrk6YwlxGWlUyBpxXzOabWckBeB5YfT3S49W/ely4Bbjae+s4hgBtGW0yTlq
	StOb6w2q1WlkfCbMQlMq7nAr9dKdKKwLeGurFG8wWkPyamYrl9jY/I6yUltyHSFWKofzK1J8RHCBz
	Csa81s/tCV+SnwgVtXVs+stfOHo3dOsR4y3EpGuxaS40Xp9cyLtXvAtzHstl5+uL9IawHNqyaCcqd
	9hLK3N/vbyZ1qxn7nqUa/lOA9NRo9qT8FPr+HflLRljZBZwY0T6UQovhhLO+LsDb9CUSgBtRkHXje
	vlAhIqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBiE-0000000F9Ga-2CQM;
	Mon, 13 Apr 2026 07:28:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBiD-0000000F9Fo-0AxR
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:28:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=B3kNiXMUqgpepaE+IA7kSXfYXEQqNPr7mGqg+PD3Eag=; b=RYu8gS/jH6Gc9MuFMm84egn6CO
	2JBQZhotYOXcvnWgtGU4diO2keEdQYauMXo25JO4LQ+c9EqtQBFkdZjihLCWEhIEMLLLepMFC3fWC
	/YFVAQOVloCMOIwy3Z5YcehlyWd7upkqbMB9iwyKbZDOF1dhCz5fhwJI64W5ujQRKu3QOCvHoMxvU
	4+/xiKiXX56a5aMubS4o2xrlP7VvrrajzP97uAd9F2nrIVyIOVkM7V4uK8ei5su9zs2YtQWbsxxMJ
	VoFt+il7V3IcadWpEepaLwEb1EuRSFMC7BILhb3sNH23EwF53Vhq78gWREEzCEgTVXJfW19hgLwYC
	sDEc+lbg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBi4-0000000GHFb-2YLK
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:27:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCBi0-0004iI-Qw; Mon, 13 Apr 2026 09:27:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCBi0-0058Cd-24;
	Mon, 13 Apr 2026 09:27:48 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCBi0-00000007Q7e-2Hot;
	Mon, 13 Apr 2026 09:27:48 +0200
Date: Mon, 13 Apr 2026 09:27:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <adya9HnyJ7sYlJdr@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
 <20260409-socfpga-iossm-v1-v2-4-09effab91bc1@pengutronix.de>
 <39a08f69-3461-48da-a890-0e3b879bb40a@pengutronix.de>
 <adi1fNOS4tRV9WB7@pengutronix.de>
 <f029403e-86c0-4cfa-9c8f-37f90860c0a4@pengutronix.de>
 <adjnyOYr0g4d-st9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <adjnyOYr0g4d-st9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_082757_400337_EB5A35F0 
X-CRM114-Status: GOOD (  36.40  )
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
Subject: Re: [PATCH v2 04/10] arm: socfpga: iossm: store size in bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 10, 2026 at 02:06:32PM +0200, Michael Tretter wrote:
> On Fri, 10 Apr 2026 10:37:09 +0200, Ahmad Fatoum wrote:
> > On 4/10/26 10:31 AM, Michael Tretter wrote:
> > > On Fri, 10 Apr 2026 10:13:41 +0200, Ahmad Fatoum wrote:
> > >> On 4/9/26 3:52 PM, Michael Tretter wrote:
> > >>> The mem_width_info is the memory size in gigabits. Convert it to bytes
> > >>> before storing it for each bank to have a more convenient format and
> > >>> simplify the conversion when reading the value.
> > >>>
> > >>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > >>> ---
> > >>> Changes in v2:
> > >>>
> > >>> - Change memory_size in io96b_mb_ctrl to phys_size_t to prevent overflow
> > >>
> > >> Thanks for addressing the concern. I looked it over and there's still a
> > >> chance for overflow.
> > >>
> > >>> diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
> > >>> index 9299fee71e0b..042ea4a99e5c 100644
> > >>> --- a/arch/arm/mach-socfpga/iossm_mailbox.c
> > >>> +++ b/arch/arm/mach-socfpga/iossm_mailbox.c
> > >>> @@ -9,6 +9,7 @@
> > >>>  #include <common.h>
> > >>>  #include <io.h>
> > >>>  #include <linux/bitfield.h>
> > >>> +#include <linux/sizes.h>
> > >>>  #include "iossm_mailbox.h"
> > >>>  #include <mach/socfpga/generic.h>
> > >>>  #include <mach/socfpga/soc64-regs.h>
> > >>> @@ -404,21 +405,25 @@ int io96b_get_mem_width_info(struct io96b_info *io96b_ctrl)
> > >>>  	struct io96b_mb_resp usr_resp;
> > >>>  	struct io96b_mb_ctrl *mb_ctrl;
> > >>>  	int i, j;
> > >>> -	u16 memory_size;
> > >>> -	u16 total_memory_size = 0;
> > >>> +	phys_size_t memory_size;
> > >>> +	u32 mem_width_info;
> > >>> +	phys_size_t total_memory_size = 0;
> > >>>  
> > >>>  	/* Get all memory interface(s) total memory size on all instance(s) */
> > >>>  	for (i = 0; i < io96b_ctrl->num_instance; i++) {
> > >>>  		mb_ctrl = &io96b_ctrl->io96b[i].mb_ctrl;
> > >>>  		memory_size = 0;
> > >>> +
> > >>>  		for (j = 0; j < mb_ctrl->num_mem_interface; j++) {
> > >>>  			io96b_mb_req_no_param(io96b_ctrl->io96b[i].io96b_csr_addr,
> > >>>  					      mb_ctrl->ip_type[j],
> > >>>  					      mb_ctrl->ip_instance_id[j],
> > >>>  					      CMD_GET_MEM_INFO, GET_MEM_WIDTH_INFO, &usr_resp);
> > >>> +			mem_width_info = usr_resp.cmd_resp_data[1] & GENMASK(7, 0);
> > >>
> > >> I assume this is the RAM memory width in bytes, e.g. 2 or 4 bytes, but
> > >> the mask  allows it to be up to 255.
> > > 
> > > mem_width_info is in Giga bits.
> > 
> > Uh, is memory width here not the number of bits transferred per clock
> > cycle..?
> 
> Maybe I'm confused, but I understand that it's not the bits transferred
> per clock cycle (the memory bus interface width), but information about
> the memory geometry under the assumption of a memory depth of 1 Giga
> bits. My understanding could be wrong, though.
> 
> > 
> > > 
> > >>
> > >>>  
> > >>> -			memory_size = memory_size +
> > >>> -				(usr_resp.cmd_resp_data[1] & GENMASK(7, 0));
> > >>> +			mb_ctrl->memory_size[j] = mem_width_info * (SZ_1G / SZ_8);
> > >>
> > >> SZ_4G / (SZ_1G / 8) = 32
> > >>
> > >> So the maximum value permitted in mem_width_info without overflowing is
> > >> 31, but the code accepts up to 255. As all types on the left hand side
> > >> are 32-bit only.
> > > 
> > > This driver is only available on Agilex5, which is arm64 and selects
> > > PHYS_ADDR_T_64BIT. Thus, phys_size_t has 64 bits and doesn't result in
> > > an overflow.
> > 
> > Sorry, left-right confusion. The right had size is all 32-bit integers,
> > so they may wrap around and are truncated before assignment to the
> > 64-bit left hand side.
> 
> Ah, indeed. I'll add the necessary cast to the right hand side.

Added a cast to phys_size_t to the right hand side while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


