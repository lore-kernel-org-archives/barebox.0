Delivery-date: Thu, 02 Apr 2026 12:39:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8FSa-007odr-1q
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 12:39:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8FSa-0007rY-0W
	for lore@pengutronix.de; Thu, 02 Apr 2026 12:39:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XTXBU41CbHL/fbTaOxdPiVTABTMzGr0j8Kt5wjGvhq0=; b=qE4/GR2c0zZAXH4UtlyoIJjVKT
	+7YB4fGfMumU68Xf/8DZPzNK0GK2H3V/DXCgOGdVgPIV8o1nFpHEXWipwrCYJ0vwdLNAB8a1NO9if
	XNPBHWJI6IU5k0OWLMOLJrDnkVQLIPZ3bu5p1fcg1Y0Wl5R+brHMmdQDy+w16VptaeUuLKmerD3So
	8llYnE+bU92Pry9ibFjv5Xp/RRV8OQh2rJwY7RhVkfgAexe8GmKNavNK8FgW3stjbCAqdvwuOGKUk
	bX1MVzhHuLAEMjb7m5R8KYwOZtfhjRBLk8yb74yTOk2OvQp8cnkCitjFCYiBTu/dpOVlDgh05Q52L
	A3PTM+tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8FS7-0000000HQ6n-2h9d;
	Thu, 02 Apr 2026 10:39:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8FS4-0000000HQ6C-06JD
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 10:39:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w8FS1-0007kJ-Ti; Thu, 02 Apr 2026 12:39:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w8FS1-003MKC-29;
	Thu, 02 Apr 2026 12:39:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w8FS1-00000003Arp-2M6m;
	Thu, 02 Apr 2026 12:39:01 +0200
Date: Thu, 2 Apr 2026 12:39:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
Message-ID: <ac5HRUnLUdx2oFUy@pengutronix.de>
References: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
 <20260402-net-nfs-buffer-overflows-v1-2-5dc46ef1da81@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260402-net-nfs-buffer-overflows-v1-2-5dc46ef1da81@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_033904_063865_983ABC24 
X-CRM114-Status: GOOD (  21.30  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] fs: nfs: fix NULL dereference in nfs_read_req on
 truncated packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 02, 2026 at 09:55:24AM +0200, Sascha Hauer wrote:
> nfs_read_req() reads the data length (rlen) from the server's READ3res
> response and uses it to extract the payload via nfs_packet_read(). If a
> malicious server sends an rlen larger than the remaining packet data,
> nfs_packet_read() returns NULL. The subsequent kfifo_put() with a NULL
> source pointer causes a NULL pointer dereference.
> 
> Add a NULL check after nfs_packet_read() to catch truncated responses.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>

Fixes: 5be38817bc77 ("fs: nfs: do not read past packets")

Sascha

> ---
>  fs/nfs.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/fs/nfs.c b/fs/nfs.c
> index edc15e0ce6..d42ef6bc86 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -1194,6 +1194,10 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
>  	}
>  
>  	p = nfs_packet_read(nfs_packet, rlen);
> +	if (!p) {
> +		ret = -EINVAL;
> +		goto err_free_packet;
> +	}
>  
>  	kfifo_put(priv->fifo, (char *)p, rlen);
>  
> 
> -- 
> 2.47.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


