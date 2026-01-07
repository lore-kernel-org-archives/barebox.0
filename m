Delivery-date: Wed, 07 Jan 2026 11:39:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdQxI-002Dk8-02
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 11:39:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdQxH-0006Mr-F0
	for lore@pengutronix.de; Wed, 07 Jan 2026 11:39:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bMQ0P/rpd/piVcp5G9AL9+zvhNMMXrhLLXyPweUTm/U=; b=Epzh0Juuz5OoHN+5euYOZFE89H
	QtNPy8zbYZGQ8ivBw445sVWr4uHRhQmfdOI1gv148DOKhbvP7PYV/jvSYQzm4lrCcO24t+WBcwQAm
	73noVq4w8jWVpyoBCKsR3Un1HToo1f2/oxD8piZCI1k2peHk6yre81hdIcJgmXPj7zWw7muaT9ztG
	V2oCVa5n056kcd2ow5pacxVQM1TCtNYd5IJhuAkFebFXybtgVDeiEn0EYJSEYmcARdGwTIdERwVxW
	/pf714RHRwBx5GkjMQD2PUStSZN8J7QRbxR0B/xtrDcjRQr2cFPzsW7QpJorp1n9GHkb60uONisNg
	D0Cz5dTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQwj-0000000EjLg-1qqc;
	Wed, 07 Jan 2026 10:39:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdQwg-0000000EjKx-2omA
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 10:39:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vdQwe-0006Hu-VI; Wed, 07 Jan 2026 11:39:17 +0100
Message-ID: <db44b00b-b2a5-4b06-bcbb-c579cef6622b@pengutronix.de>
Date: Wed, 7 Jan 2026 11:39:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_023918_738817_76A15AB7 
X-CRM114-Status: GOOD (  18.91  )
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
Subject: Re: [PATCH 0/6] partitions: GPT: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 12/3/25 4:19 PM, Sascha Hauer wrote:
> This is a continuation of the patch previously sent separately:
> 
> https://lore.kernel.org/all/20251128111929.2463263-1-s.hauer@pengutronix.de/
> 
> Ahmad's comment to this was that we should write the inactive GPT first
> to make sure there's always a valid GPT on the device. This series
> implements just that. I stumbled upon a bug when we restore the primary
> GPT from the alternate GPT, this is fixed in this series.

I thought with this series now applied, we could wipe the first 2
sectors and it would fall back to the alternate GPT, but this is not the
case because partition_table_read() invokes the partition parsers only
when partition_parser_get_by_filetype() detects the magic in the first
two sectors.

Did you consider adapting it?

Thanks,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (6):
>       partitions: gpt: pass epd context pointer to find_valid_gpt()
>       partitions: gpt: only write actual ptes size to device
>       partitions: gpt: factor out a function to write primary/alternate GPT
>       partitions: gpt: write inactive GPT first
>       partitions: gpt: fix GPT restauration from alternate GPT
>       partitions: gpt: refresh partition tables when necessary
> 
>  common/partitions/Kconfig |  14 +++
>  common/partitions/efi.c   | 293 +++++++++++++++++++++++++++++++++++-----------
>  2 files changed, 236 insertions(+), 71 deletions(-)
> ---
> base-commit: 500df27eb054f86ce232c5bb30c3a7ea8f771e61
> change-id: 20251203-efi-partition-refresh-a18d630961bc
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



