Delivery-date: Fri, 13 Oct 2023 11:17:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrEIG-006tTb-Pc
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 11:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrEIE-0003d0-9q
	for lore@pengutronix.de; Fri, 13 Oct 2023 11:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qylmMTTpxF+W0edPLexORH8dWe6PfBIcktJ0/XBNbIM=; b=CkAd+fKy/pvN/LP94vGScrD7b5
	7ACHEATDUpUkIVT3+XDK48v43UyYFudg+KmsJFFrCTHSIFZmwh6NIZyukTtLMbw79qV3reXFvc7cD
	NShxjWj25e0l0tExp9m9JVJuNLTi0aMmo0MDZp0pFzzOtNd5MH8G/LAY5uHqRFQd6+c8hgNdY76eY
	NPu+6SWjxNFQeSorwKHZfNIYrXF1TPLuZ0kVjcMoCdZlwaIKvxzFk6pNtx3SnkYTh3jj41cgT0U7h
	Ezfsqd+GA5BE5wHq2Wob89V4OEdwawKodKOKT9zmY4412z4NfwQlTN5Dml528fWrxNOCHOUSArQzy
	kdZTmYhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrEGt-002vcU-10;
	Fri, 13 Oct 2023 09:15:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrEGp-002vam-1z
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 09:15:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEGm-0003Tt-Gm; Fri, 13 Oct 2023 11:15:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEGm-001MWZ-4M; Fri, 13 Oct 2023 11:15:44 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrEGm-00EFTa-27; Fri, 13 Oct 2023 11:15:44 +0200
Date: Fri, 13 Oct 2023 11:15:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231013091544.GP3359458@pengutronix.de>
References: <20231009115201.2210460-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009115201.2210460-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_021547_649645_8F546373 
X-CRM114-Status: GOOD (  18.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] sandbox: add empty <asm/linkage.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 09, 2023 at 01:52:00PM +0200, Ahmad Fatoum wrote:
> Sandbox code including <linux/linkage.h> will trip over this file being
> missing, so add an empty stub.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/include/asm/linkage.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 arch/sandbox/include/asm/linkage.h

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/include/asm/linkage.h b/arch/sandbox/include/asm/linkage.h
> new file mode 100644
> index 000000000000..1d78d9169b6a
> --- /dev/null
> +++ b/arch/sandbox/include/asm/linkage.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_LINKAGE_H
> +#define __ASM_LINKAGE_H
> +
> +/* referenced by <linux/linkage.h> */
> +
> +#endif
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


