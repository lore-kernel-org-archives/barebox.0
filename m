Delivery-date: Thu, 01 Feb 2024 08:48:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVRoH-00FHl0-1N
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 08:48:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVRoI-0007Iy-2Z
	for lore@pengutronix.de; Thu, 01 Feb 2024 08:48:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ki7zy2T62yjaVrEo3isrxk2xKSHXID7kAmPMEr/OC/w=; b=q1bGJ2JEjqdnFTxN26ZdLWtUDx
	5vR2bGh4J9q1Tb3a0BndbOiTK5faD0HU/c1roTqv+eBOwh4qeePV2UYRJxT1De5L0fUZfQkzNcHCC
	vI6f9mo9w5qwjFY9S4babxxNZQJmZNGJwua3544ZgYs93QX59PGjC1ARhF0gm4SDuhJO+ckTfQvuw
	v0F69soSxLiMh7wKXN9Jynf2vyZM9r2wlAyVLk7YbIje+wFgIP1qbOuk1Cu+yet4ZOjkO4CtsCBZT
	+DAkwL7g4Nq9TOoQ9eRNPShT+Rx9LYiDa614afDICVZCqs61ChiIW85guWKGh0gUXEO+50/6TI7G5
	UmYVfavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVRnf-00000006xBL-2Itl;
	Thu, 01 Feb 2024 07:47:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVRnb-00000006xAd-17U6
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 07:47:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rVRnW-0007Es-Kd; Thu, 01 Feb 2024 08:47:46 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rVRnW-003o54-81; Thu, 01 Feb 2024 08:47:46 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rVRnW-002twk-5h; Thu, 01 Feb 2024 08:47:46 +0100
Date: Thu, 1 Feb 2024 08:47:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20240201074746.GH406126@pengutronix.de>
References: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
 <20240131-fix-fdt-memory-safety-v1-2-3d3a2c797eec@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240131-fix-fdt-memory-safety-v1-2-3d3a2c797eec@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_234751_324771_A1E25E8D 
X-CRM114-Status: GOOD (  26.30  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] of: fdt: fix oob writes with large ftd properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


In the subject: s/ftd/fdt/

Sascha

On Wed, Jan 31, 2024 at 05:57:00PM +0100, Stefan Kerkmann wrote:
> OOB writes can be triggered when fdt->dt_size * 2 is still smaller than
> the property for which memory should be allocated. This can happen under
> rare circumstances when editing a fdt with the of_property command and a
> property is larger than 128k in size.
> 
> This happend when editing a FIT image (which is a ftd) with the
> of_property command and the Kernel image was around 8M in size.
> 
> The simplified call chain is the following:
> 
> of_property -> of_flatten_dtb -> create new fdt with 64k in size (this is
> fixed) -> __of_flatten_dtb -> attempt to copy kernel image (8M) ->
> fdt_ensure_space -> allocate only 128k for fdt->dt -> memcopy 8M into fdt->dt
> buffer -> crash
> 
> The fix is to grow fdt->dt to hold at least the new property. The power
> of 2 increment is untouched to keep the same behaviour otherwise.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  drivers/of/fdt.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 4f79a6120f..1f24ed0bbc 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -399,6 +399,10 @@ static int fdt_ensure_space(struct fdt *fdt, int dtsize)
>  		previous = fdt->dt;
>  		new_size = fdt->dt_size * 2;
>  
> +		while (new_size <= dtsize) {
> +			new_size *= 2;
> +		}
> +
>  		if ((fdt->dt = memalign_realloc(previous, fdt->dt_size,
>  						new_size)) == NULL) {
>  			free(previous);
> 
> -- 
> 2.39.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


