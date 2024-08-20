Delivery-date: Tue, 20 Aug 2024 14:15:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgNlq-00BZze-0X
	for lore@lore.pengutronix.de;
	Tue, 20 Aug 2024 14:15:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sgNlp-0003aZ-Id
	for lore@pengutronix.de; Tue, 20 Aug 2024 14:15:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IpCBOMTvgnydRAOf5AHarvAyjGDN3XcZEu8gE7MC1Ec=; b=gEthRsKW+ctKnUKXa8EkCot9vb
	MMTJiOD3azXXcPAV2pvnLGBZjAXClgDfSNWnh6XuspLOBSrDES4cM2K3V5RGVZpydJmmWcjIofCBG
	bbz+AsMezYubRn8wO51uD/Y/p7kJKeoM9UjaapeiuEYabZFsyEVZJ/2Lq5gco15zQW/dn7jqJISDI
	dy2XGi7pWiLU+bJ5Dl01fgWHOBK0OWen6MTnjP/ZdQ4EwIA2eoRyA8alfNcJS17u6m8fhBGUG16X7
	fXfx8sbhpHgXCUjSbNQj9Y0+oq+j6M0UOxFKE1y99q/d1Lluh84LvbnBHJ4pTrTWIQOTynHzpB2N1
	hheyw00A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNlM-000000059Aa-1liT;
	Tue, 20 Aug 2024 12:15:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNk4-000000058jj-0FlK
	for barebox@lists.infradead.org;
	Tue, 20 Aug 2024 12:13:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sgNk0-0003Pj-Ri; Tue, 20 Aug 2024 14:13:36 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sgNk0-001lh8-EZ; Tue, 20 Aug 2024 14:13:36 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sgNk0-00Ddgf-19;
	Tue, 20 Aug 2024 14:13:36 +0200
Date: Tue, 20 Aug 2024 14:13:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZsSIcEPr4AlQuwxL@pengutronix.de>
References: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_051340_118385_423FF35A 
X-CRM114-Status: GOOD (  21.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 15, 2024 at 01:44:55PM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> Build test on x86 fails due to pointer cast and because of forcing the
> bigger alignment on the flexible array.
> 
> The problematic pointer cast is for the XSDT, which is 64-bit-only, so
> let's fix the cast and return an error if we somehow see an XSDT on
> 32-bit.
> 
> For the flexible array, let's use the size of the pointer for the
> alignment.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2: 
>   - fix CI x86_64 breakage, by keeping the packed/aligned specifiction
>     as is, but changing it to 32-bit on 32-bit systems.
> ---
>  drivers/bus/acpi.c | 6 ++++--
>  include/acpi.h     | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)

I seem to have applied v1 of this patch. Can you send a fixup?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


