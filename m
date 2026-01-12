Delivery-date: Mon, 12 Jan 2026 14:05:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHbt-000Wyg-0h
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:05:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHbs-0003pR-7P
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:05:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Igt6GYSRRaydHYr4pj1f93wrblVwK357zY2LDDrOV5A=; b=dmJ5GvcqPkKn5jLfWPQU3iBP7f
	0HJNgqOsrLq/WVjDr2G4QRFzXBZLHxYn0M4bddlzpjGcw28nl55XwSFfRXaOOqosyBVb47G1VTYQI
	GGNUbGbD34tcxXdIPABtTlmDPlOaMW37ObyUjUu+delIQwq1OLhf+Ts3H1+h0L/LHI5nzjFwBcEin
	Lva13uQd8Zn1ftx2Y9q9234HY32nFOEF/8T7HkPdsNzMh4A3JBg5TjI9NzD3YxNz6SXalV0Tx/9oi
	DF5fRyl/65SsZRSOJtxvZkrnuSq4HGzcHWnF0Ei3DZ3CmSaz8hYePmG6Nch1Awt9xwloz+icIYBeX
	RufogjWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHbI-00000005NCC-0S71;
	Mon, 12 Jan 2026 13:04:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHbF-00000005NBr-0sfD
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:04:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHbB-0003jx-Mu; Mon, 12 Jan 2026 14:04:45 +0100
Message-ID: <0802d607-8cd1-4ba5-9032-3c04fa43ff12@pengutronix.de>
Date: Mon, 12 Jan 2026 14:04:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-8-e28c931fc179@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260108-pbl-load-elf-v3-8-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_050449_252769_5552E01D 
X-CRM114-Status: GOOD (  16.74  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 08/23] elf: implement elf_load_inplace()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> +	/*
> +	 * Calculate relocation offset for the in-place binary.
> +	 * For ET_DYN, we need to find the first PT_LOAD segment
> +	 * and use it as the relocation base.
> +	 */
> +	if (elf->type == ET_DYN) {
> +		u64 text_vaddr = 0;
> +		u64 text_offset = 0;
> +		bool found_text = false;
> +
> +		/* Find first PT_LOAD segment */
> +		phdr = buf + elf_hdr_e_phoff(elf, buf);
> +		for (i = 0; i < elf_hdr_e_phnum(elf, buf); i++) {
> +			if (elf_phdr_p_type(elf, phdr) == PT_LOAD) {
> +				text_vaddr = elf_phdr_p_vaddr(elf, phdr);
> +				text_offset = elf_phdr_p_offset(elf, phdr);
> +				found_text = true;
> +				break;
> +			}
> +			phdr += elf_size_of_phdr(elf);
> +		}
> +
> +		if (!found_text) {
> +			pr_err("No PT_LOAD segment found\n");

A bit confusing to call it found_text and check if it's PT_LOAD.
As mentioned before, I am unsure if text indeed is always the
first segment in iteration order.

Would it not be more correct to factor out the initial loop in
elf_compute_load_offset to a helper function and use that here
to determine the lowest loadable segment and use that instead of
the first? Should reduce the diff too.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



