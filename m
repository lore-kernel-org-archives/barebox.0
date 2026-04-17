Delivery-date: Fri, 17 Apr 2026 11:12:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfFo-00D8Q9-2m
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:12:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfFo-0004Oc-94
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:12:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AtFsuIKWNgdAUe6F+eMS8uGnz6UYAtOmVjkGgHylbvs=; b=Pb1QfgaoDTGiyoXrtLWAzIaDYI
	EO1BXnxAcs7etuzjuNRzd6cSXTzSrK12WB48nui6L77lXQO/Rjc678IjvLmzS5BRctzwd0KUmg5GP
	/xsTWx/Mu1v1et489GWyhlb/TjnxmnGL0N2y0DvOu5hfrCJSUHhK/0YznXO7PyIUk5yTYRxMgkTgt
	oxtWd21SH15VRB+pvl61vVZk+Y6RbyS8zULuPEVvxEiS0ciRNNFxUpNAzMzpCv5fsYY9Sp9ynf9gI
	N2WQXaFx6eHQ9/sEAP6uuPOoKYfNtDjYBOUQDoquaDe9S+Q1CL5BYP04d9V0DLs0+iKFgctLCW0W2
	Wvjd7xzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfFS-00000003joT-3Rg7;
	Fri, 17 Apr 2026 09:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfFQ-00000003jo0-2Fgh
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:12:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfFP-0004Fc-29; Fri, 17 Apr 2026 11:12:23 +0200
Message-ID: <7adbb673-d7be-4671-ac01-9b996e1ed533@pengutronix.de>
Date: Fri, 17 Apr 2026 11:12:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>
References: <20260402-net-nfs-buffer-overflows-v1-0-5dc46ef1da81@pengutronix.de>
 <20260402-net-nfs-buffer-overflows-v1-2-5dc46ef1da81@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402-net-nfs-buffer-overflows-v1-2-5dc46ef1da81@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_021224_601710_E1F9ADEC 
X-CRM114-Status: GOOD (  17.34  )
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
Subject: Re: [PATCH 2/2] fs: nfs: fix NULL dereference in nfs_read_req on
 truncated packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 9:55 AM, Sascha Hauer wrote:
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

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

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

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



