Delivery-date: Fri, 17 Apr 2026 11:11:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfEq-00D8Ka-2q
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:11:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfEq-0003uc-8G
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:11:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFlfw+wdD+yT6Qbeg0sNoBHXPQTXgZ3liN9zZopAByY=; b=acV1uevvc7VdXTxK/AN8pfewjH
	/om/FOJA4Zomvho9tsXPGJ3WWqbYYVLAbzcBUIot9IY+2lhpaw52fw0wJOGgGAmcActSXCNbT9+Zb
	nFKKVnf0lLO7bLkg+x/+gU4lHoH5ZHVPlwoHYLiikKHmmo2zdc28feJH1o7v+54rURq+HZTcHxCck
	eMaHS/RcaWWEi61ff0ufk7uF0+r+G93td0t0JERwMR9pQcILoeOmzDVl26trARIyz9b2ZC+trxQHt
	6r7lkt4zz0ER00P6igyupFLuhS6UZ4WWW+m/UKg1nRlJPHGetio67yIqMnrTC3c/KKS2fuvmC5cG2
	bk15ZDBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfEU-00000003jiU-21Ix;
	Fri, 17 Apr 2026 09:11:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfER-00000003ji8-11d7
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:11:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfEP-0003lt-Lr; Fri, 17 Apr 2026 11:11:21 +0200
Message-ID: <c24b43da-d418-491b-b84c-fab228d95f9b@pengutronix.de>
Date: Fri, 17 Apr 2026 11:11:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
 <20260402-net-nfs-buffer-overflows-v1-1-5dc46ef1da81@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-nfs-buffer-overflows-v1-1-5dc46ef1da81@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_021123_974424_931317D7 
X-CRM114-Status: GOOD (  20.47  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: nfs: fix stack and packet buffer overflows from
 long NFS paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/2/26 9:55 AM, Sascha Hauer wrote:
> nfs_mount_req() and nfs_umount_req() copy the NFS mount path into a
> stack-allocated uint32_t data[1024] buffer (4096 bytes) with only ~40
> bytes of RPC header overhead. A mount path longer than ~4056 characters
> overflows the stack array.
> 
> Additionally, rpc_req() copies the data array into the PKTSIZE (1536)
> packet buffer with only 1494 bytes available for UDP payload. After the
> 28-byte RPC call header, paths longer than ~1424 characters overflow
> the packet buffer.
> 
> Fix by:
> - Adding a path length check in nfs_mount_req() and nfs_umount_req()
>   against the stack buffer capacity before constructing the request
> - Adding a payload size check in rpc_req() before the memcpy to the
>   packet buffer, protecting all RPC callers from overflows
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I haven't checked if 11 * sizeof(uint32_t) are the correct cutoff, but
looks good to me otherwise.

> ---
>  fs/nfs.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 0b40c56ff3..edc15e0ce6 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -534,6 +534,13 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
>  		pkt.vers = hton32(3);
>  	}
>  
> +	if (sizeof(pkt) + datalen * sizeof(uint32_t) >
> +	    PKTSIZE - ETHER_HDR_SIZE - sizeof(struct iphdr) - sizeof(struct udphdr)) {
> +		dev_err(dev, "RPC request too large (%zu bytes)\n",
> +			sizeof(pkt) + datalen * sizeof(uint32_t));
> +		return ERR_PTR(-EMSGSIZE);
> +	}
> +
>  	memcpy(payload, &pkt, sizeof(pkt));
>  	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
>  
> @@ -786,6 +793,11 @@ static int nfs_mount_req(struct nfs_priv *npriv)
>  
>  	pathlen = strlen(npriv->path);
>  
> +	if (pathlen > sizeof(data) - 11 * sizeof(uint32_t)) {
> +		dev_err(dev, "path too long (%d bytes)\n", pathlen);
> +		return -ENAMETOOLONG;
> +	}
> +
>  	dev_dbg(dev, "%s: %s\n", __func__, npriv->path);
>  
>  	p = &(data[0]);
> @@ -862,6 +874,8 @@ static void nfs_umount_req(struct nfs_priv *npriv)
>  	struct packet *nfs_packet;
>  
>  	pathlen = strlen(npriv->path);
> +	if (pathlen > sizeof(data) - 11 * sizeof(uint32_t))
> +		return;
>  
>  	p = &(data[0]);
>  	p = rpc_add_credentials(p);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



