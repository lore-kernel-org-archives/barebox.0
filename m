Delivery-date: Fri, 10 Apr 2026 10:20:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wB760-00AaEC-1V
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 10:20:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wB75z-0008Dp-SH
	for lore@pengutronix.de; Fri, 10 Apr 2026 10:20:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QK+hSwnjfM+zSelISQhdQtdiQV/92J0jCiacOdrMIL0=; b=KDETCjajoofPgwwbv1MmT8q5/T
	5QY+BgydfpKWTVkJynDMu0q1quK+b3Et/lKgQwJ183Cbvpu/KnLCNUTtviQOu3yHXtR3FCy3Hb80J
	wf6neLkKlrlyeSpeYedXaN81RpmV5izPF7SJL4LvMALeQ2MWiDYq4xHs79zjomNeJbJIXFCitxzWo
	INsr0F+DlkSyf1o6DY6sNYwiyezwoyZZhNoLDchXK8Pc/ZOnCCpUqR6wYTsGOEMiifxj9t311qogB
	SHMGqxnMEO6oZ/a+NOfBKryF0huvo4KOp6/JpiENFNUSVSI6Nolirt2rDMat4W/6V0To2gAtsBxpi
	y5/x2IbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB75X-0000000Bphr-08ev;
	Fri, 10 Apr 2026 08:19:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB75U-0000000BphO-2Ut7
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 08:19:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wB75S-00085G-V4; Fri, 10 Apr 2026 10:19:35 +0200
Message-ID: <8cc5320e-6191-4a32-bd73-122724964406@pengutronix.de>
Date: Fri, 10 Apr 2026 10:19:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Tretter <m.tretter@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_011936_637545_CE238037 
X-CRM114-Status: GOOD (  20.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] arm: socfpga: iossm: add support for mailbox v1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/9/26 3:52 PM, Michael Tretter wrote:
> The IOSSM on the Agilex5 may have different mailbox versions depending
> on the Quartus version that was used to generate the SoC configuration.
> Up until now, barebox only supports mailbox version 0, which was
> configured by versions before Quartus 25.3.0. With Quartus 25.3.0 and
> later, the IOSSM provides mailbox version 1, which exposes many
> configuration options as registers instead of mailbox responses.
> 
> Since the IOSSM is used for SDRAM setup, barebox didn't boot on devices
> configured with Quartus 25.3.0 or later.
> 
> Refactor the iossm handling and add the handling of IOSSM mailbox
> version 1.
> 
> While at it, also add inline ECC handling. If the memory interface of
> the Agilex5 is configured for inline ECC (which is the current default)
> the bootloader has to be aware of inline ECC, too.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changes in v2:
> - Patch 4: Change memory_size in io96b_mb_ctrl to phys_size_t to prevent overflow
> - Link to v1: https://patch.msgid.link/20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de
> 
> ---
> Michael Tretter (10):
>       arm: socfpga: iossm: remove uninitialized variable
>       arm: socfpga: iossm: add version check
>       arm: socfpga: iossm: use local mb_ctrl variable
>       arm: socfpga: iossm: store size in bytes
>       arm: socfpga: iossm: refactor io96b_mb_init
>       arm: socfpga: iossm: refactor return value handling
>       arm: socfgpa: iossm: extract poll_bist_mem_init_status
>       arm: socfgpa: iossm: extract initialization of one interface
>       arm: socfpga: iossm: add memory initialization with inline ecc
>       arm: socfpga: iossm: add support for mailbox v1
> 
>  arch/arm/mach-socfpga/agilex5-sdram.c |   9 +-
>  arch/arm/mach-socfpga/iossm_mailbox.c | 359 ++++++++++++++++++++++++----------
>  arch/arm/mach-socfpga/iossm_mailbox.h |   8 +-
>  3 files changed, 272 insertions(+), 104 deletions(-)
> ---
> base-commit: 0933e8f2ebf0d91dfcf177a4e4292b02921a53f1
> change-id: 20260407-socfpga-iossm-v1-59c19e340a2b
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



