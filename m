Delivery-date: Wed, 04 Jan 2023 11:59:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1UR-001NDl-F5
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 11:59:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1UP-00087a-94
	for lore@pengutronix.de; Wed, 04 Jan 2023 11:59:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1VZx+BND7yl0EFvqhQpZLYrsoHZvCPLa3e8KQ3/0VCE=; b=R+7yY0PaKtEgnps65hqqg/C9e1
	zhBBFMzAoWscqqboU9h8qWKpRxToOnRaD1NvxgON3g88jWswoyP4Rse8qJhaI7/p6+LrDnw9O2Vbo
	JwOx8o/HMdyN5nuqBuy57yIuublcDm2wy7xWPx3WHpgGWd0r/dGYkZWNX6dcEbrJLufvkm9r4vvV1
	dfH22RdMo1AdWzQ9iK37onFOrq2AjVnYg76r5NBgpdrMi2JRpnktjnur1MlF29iMB6g64jIoU4hZP
	d8uxCdb2CG0FWwMj5qoLmiMWgr0JKqHFHCq1AFwMcFw7MnnIN3UljZ7fW4b3liHy+AKkOX9DBrMpD
	11jH1S5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1T8-008apw-Ro; Wed, 04 Jan 2023 10:58:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1Nv-008Z43-Ps
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 10:52:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD1Nu-0007Pz-GT; Wed, 04 Jan 2023 11:52:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD1Nu-00086T-9G; Wed, 04 Jan 2023 11:52:38 +0100
Date: Wed, 4 Jan 2023 11:52:38 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230104105238.GS11668@pengutronix.de>
References: <20221222115759.855209-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222115759.855209-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_025239_890114_ACB88DE8 
X-CRM114-Status: GOOD (  20.45  )
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
Subject: Re: [PATCH] video: vpl: don't print only skipped vpl endpoints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 22, 2022 at 12:57:59PM +0100, Ahmad Fatoum wrote:
> The remote_vpl->ioctl is within a loop and every time an iteration is
> skipped, a debug line is printed, but no debug line is printed when the
> loop actually finds a remote_vpl to call its ioctl callback.
> 
> Make this debugging code more useful by adding a debug print in the
> latter case.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/vpl.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
> index f94bd4a3e2f3..6d6786168114 100644
> --- a/drivers/video/vpl.c
> +++ b/drivers/video/vpl.c
> @@ -93,6 +93,7 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
>  			continue;
>  		}
>  
> +		pr_debug("%s: looked up %s: %pS\n", __func__, remote->full_name, remote_vpl->ioctl);
>  		ret = remote_vpl->ioctl(remote_vpl, remote_port_id, cmd, ptr);
>  		if (ret)
>  			return ret;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


