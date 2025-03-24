Delivery-date: Mon, 24 Mar 2025 09:20:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd2l-003Vjq-16
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:20:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd2k-0003hX-6L
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:20:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4gJBjRF6icUz17V1EmajuNZUKV8iVB/FwFvFo6hzaCQ=; b=hymhjT0LrOQVF0IqePlEVGrYme
	REQ1YgGhl9w7rM9UTV31GHw0d8KwpCyvJocmmNhMBGBjtFXf0QpXdRgEicBiz1erMKQ2AFIMGrpYb
	8ogxIsSKbhSS+BqpywkDViIGygjnv51F9RHhCLooLZx8maijNi6GfgQD1TblG5UT2SvJsnb/r4YzD
	1ebaIxP4AzfB7GgkAm0gPxDltMln84IRMaEe91nDOPxAfd5F/qOcXSK/r4hiZQl1kvAUEBdV1lhBa
	0FaTTe+xG1OlKCj8adz8nZAIJ5pdnCgLi/9RWutW1S/a+wNjxdSYAWS4dj65XAli/1qSAhvRZldKn
	wmKjSD0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twd2A-00000002Yty-1sJE;
	Mon, 24 Mar 2025 08:19:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twd26-00000002Yrv-3iVf
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:19:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1twd24-0003as-9R; Mon, 24 Mar 2025 09:19:40 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1twd23-001NTt-2A;
	Mon, 24 Mar 2025 09:19:40 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1twd24-00Ds6Y-00;
	Mon, 24 Mar 2025 09:19:40 +0100
Date: Mon, 24 Mar 2025 09:19:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z-EVm4bn5kCxlaz3@pengutronix.de>
References: <20250324081415.1697333-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324081415.1697333-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_011942_922466_A3E3E0E5 
X-CRM114-Status: GOOD (  24.37  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: Do not access ext_csd on SD cards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 24, 2025 at 09:14:15AM +0100, Sascha Hauer wrote:
> SD cards do not have a ext_csd so accessing it on an SD card results in
> a NULL pointer derefence. Move the production year check to
> mci_mmc_decode_cid() which is executed for MMC devices only. While at
> it do not access ext_csd directly. We have already populated
> mci->version, so use this to check for the MMC versions which need the
> production year adjustment.
> 
> Fixes: a4a78c4f32 ("mci: use struct cid")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c89322f61e..1e49969017 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -2377,6 +2377,12 @@ static int mci_mmc_decode_cid(struct mci *card)
>  		return -EINVAL;
>  	}
>  
> +	if (mci->version >= MMC_VERSION_4_41) {
> +		/* Adjust production date as per JEDEC JESD84-B451 */
> +		if (mci->cid.year < 2010)
> +			mci->cid.year += 16;
> +	}

The variable is named "card" in this function, not "mci". Will fix while
applying.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


