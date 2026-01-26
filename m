Delivery-date: Mon, 26 Jan 2026 13:03:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkLJz-005X3d-0q
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 13:03:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkLJx-0002nu-Rv
	for lore@pengutronix.de; Mon, 26 Jan 2026 13:03:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+bt42usRSLSNnokijZrSA/WXGTO3UbGmcOUV8X/WELc=; b=k6mRWRI/mPoZr10nZmeUMXkV4V
	HWUMd05WAj/sWUqGedSVuez26dIpcNzOz5q+0arSgesnaKf90sVJqe5zziuUdxB7105Ci38wdC2/N
	LstM3YZUrG9UZGFR2GREZjXq2+QLYQPvgUV1C0NtdWRoPdL6kEz9EQSd/X7ZwblEuYa34S/j862CT
	x8y/Uum7XkVvyDf67MfM8TNBuqdF8X1G6QZ9WJN52VEtkrVQe3Jh+S10HAvIUtjY7PQ7p4DNGtB9F
	z53grruPN5h/lNxl/QOdcd5pcfO9JIx7wapud+NsdKYkL6wQjvoktIswQVCvOlMOQFPJFN/TYnv/J
	Nj/kGWgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLJM-0000000CU4d-37zY;
	Mon, 26 Jan 2026 12:03:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLJK-0000000CU3w-3owo
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 12:03:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vkLJH-0002hd-HR; Mon, 26 Jan 2026 13:03:11 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vkLJH-002ZjO-2z;
	Mon, 26 Jan 2026 13:03:11 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vkLJH-00GXGL-0R;
	Mon, 26 Jan 2026 13:03:11 +0100
Date: Mon, 26 Jan 2026 13:03:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <20260126120311.ozxu7wrmckimlokk@pengutronix.de>
References: <20260126104433.765071-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126104433.765071-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_040314_964183_2E4DDD00 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] FIT: fix double free issue with >1 reference
 count
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-26, Ahmad Fatoum wrote:
> fit_open() was recently changed to be reference counted. When the FIT is
> already open, a handle will be returned with the canonical filename
> being the only allocation incurred.
> 
> fit_close() however unconditionally frees the handle without regards to
> the reference count.
> 
> Fix this and while at it, fix the memory leak for the canonical filename
> as well.
> 
> Reported-by: Claude Sonnet 4.5 <noreply@anthropic.com>
> Fixes: f3aadb274abe ("FIT: add support to cache opened fit images")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


