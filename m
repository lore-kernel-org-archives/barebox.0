Delivery-date: Thu, 02 Feb 2023 08:41:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUDd-00B7Ex-3W
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 08:41:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUDa-0006hA-5X
	for lore@pengutronix.de; Thu, 02 Feb 2023 08:41:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hsfDl5CrsJ0eD8giKwJFnJnyuUuLk13qFrMBj8/K1qY=; b=hiYRE7oaVQM/Bd2WubUMkFWeYf
	0ibIsBx5aX7hLf+rbQlQfX84VY9a6xAzaYNh7fMK19fthuypZEI3jOLCk/7LgzlbH6aA1ztTuC5pI
	BCgZa4KHjS5H3h5h/M37UkU+eJr1gynVRl88PgejSJEFvq1AQzZPloj68AU2omdyk4Bc2RqLIrX6x
	iT071lrB4dKDNhqSBu+FnocZijmd1kjWNVSn36xZP8g/oz88SeolhEHyNJD41SIkJiz8gIvtEroqn
	w4WguE1kZXJCj0Wec2908lrhsQOEhdLWnEeaMg3pjQM1HLVUwR/ibXLdndm7m5SnirPSNwxo9/Xcj
	sFMBkBOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUCI-00EgTy-Kv; Thu, 02 Feb 2023 07:39:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUCE-00EgTE-Hd
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:39:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNUCD-0006LL-7C; Thu, 02 Feb 2023 08:39:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNUCC-0002iN-Lh; Thu, 02 Feb 2023 08:39:48 +0100
Date: Thu, 2 Feb 2023 08:39:48 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230202073948.GL13319@pengutronix.de>
References: <20230201223404.1467998-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230201223404.1467998-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_233950_606183_5972E8B1 
X-CRM114-Status: GOOD (  24.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 09:34:04AM +1100, John Watts wrote:
> If a server doesn't provide a service the port lookup will return 0.
> Check for this and return an appropriate error code.
> 
> This was tested by running NFS with UDP disabled, which seems to be
> the default in Arch at least.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  fs/nfs.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 446d0f7946..696630684e 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -571,6 +571,9 @@ static int rpc_lookup_req(struct nfs_priv *npriv, uint32_t prog, uint32_t ver)
>  
>  	nfs_free_packet(nfs_packet);
>  
> +	if (port == 0)
> +		return -ENOENT;
> +

When this happens do we see a meaningful error message on the barebox
side? From a feeling I would say -ECONNREFUSED might be a better error
code, but I don't know if that's suitable for UDP connections.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


