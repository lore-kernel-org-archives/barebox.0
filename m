Delivery-date: Tue, 05 Aug 2025 07:07:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uj9tA-007BAJ-0n
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 07:07:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uj9t9-0001Os-Mp
	for lore@pengutronix.de; Tue, 05 Aug 2025 07:07:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DRFXR+1UcwaoCVJGiR/xHtZ8wCkn8+lAMXMjkStXK4A=; b=zYhPrdmyumvQYbn6uROvXgAKOf
	pHAnLDCyxirvWDJxYtpeu8tzvLQV6/EzDsSX8nLS648dlEpgRcqSEv5ug41gw0b6PUXTX9RSqrThg
	70G+r+75azb4xktRy7c0eS+HY8AqJ4WADVJdDXmFggsBn4MkBG2hYkOC9XtXqkGL51bHs04L9i7XV
	ml1SE8RRCLtxp1nOixsR4aa+ZG4d3FiyHpi/mMCJgnd/l8KifWYGx8f7ZbZuEm+gov+tb4QIGWk7v
	UBvj1dmbYMcG7164MGUEC3q3YStPIXIPPeZ+znuT/yy+gkd0rzg3GYbxoG3cWDxni08ntINqoYB6K
	9nXwFDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj9sk-0000000BnR4-2fjN;
	Tue, 05 Aug 2025 05:06:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uj9sg-0000000BnQI-3NjQ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 05:06:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uj9se-0001KI-5g; Tue, 05 Aug 2025 07:06:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uj9sd-00BzMq-3B;
	Tue, 05 Aug 2025 07:06:32 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uj9sd-00A5ad-2k;
	Tue, 05 Aug 2025 07:06:31 +0200
Date: Tue, 5 Aug 2025 07:06:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aJGRVxKTPGNN-aba@pengutronix.de>
References: <20250731-rkimage-cleanup-v1-0-967037e5d67a@pengutronix.de>
 <20250731-rkimage-cleanup-v1-2-967037e5d67a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250731-rkimage-cleanup-v1-2-967037e5d67a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_220634_840084_E85BE197 
X-CRM114-Status: GOOD (  22.21  )
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
Subject: Re: [PATCH 2/5] scripts: rockchip: add helper for updating hash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On Thu, Jul 31, 2025 at 12:48:22PM +0200, Michael Tretter wrote:
> The idb contains a flag for the used hash type. Use the flag to
> determine the used hash function and update the hash accordingly.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  scripts/rkimage.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/rkimage.c b/scripts/rkimage.c
> index ba89f32d9376d0153692baa3ddde1c793c1e4cc2..fd97bd1dd9f5967762d0a8bf9d186594a05a2a9f 100644
> --- a/scripts/rkimage.c
> +++ b/scripts/rkimage.c
> @@ -42,6 +42,17 @@ static void sha512(const void *buf, int len, void *out)
>  	EVP_MD_CTX_free(md_ctx);
>  }
>  
> +static void idb_hash(struct newidb *idb)
> +{
> +	unsigned char *idbu8 = (void *)idb;
> +	size_t size = 1536;
> +
> +	if (!!(idb->flags & NEWIDB_FLAGS_SHA256))
> +		sha256(idbu8, size, idbu8 + size);
> +	else if (!!(idb->flags & NEWIDB_FLAGS_SHA512))
> +		sha512(idbu8, size, idbu8 + size);
> +}

Drop these double negations.

NEWIDB_FLAGS_* are defined in the next patch, should be here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


