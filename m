Delivery-date: Wed, 13 Dec 2023 07:50:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDJ4V-001yaU-0Y
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 07:50:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDJ4V-0005Zx-Dv
	for lore@pengutronix.de; Wed, 13 Dec 2023 07:50:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwnPv+GnQIuMPtiMITzCNjN2RXvhWRzR2okgN//W8BI=; b=0bntgTCpM0ml/IfhrODrvVnEte
	ileGWS1CL1nCdibqyu5/+CdM8100UL91F0209LdThG6nB0o2Y2wMGMhQhErpyH0hxSaxMU4Hq5tss
	BMPOCbs8SO/z95k7zRsYuNrSyh9j1vUdthfTTo5LPWZhQz0rPY3oSPP+YfmB5LyrKLCRlGKxQz6Uq
	32/vt7lRawglJoGa/rqLpOGnaYE0dpTqzpdKmnCBjCvl0mySa20fqRVhaRGSUz67RRHxxFCp10WIJ
	047hhMd+5Paa6vei3drhtbs3GMsZsir0sF3riZnlH5bztdo8D0rz3Yn7Hs1+iGoEkNwfoYLXe1e8g
	5fa46B4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDJ3Z-00DpYx-2Q;
	Wed, 13 Dec 2023 06:49:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDJ3W-00DpYT-1a
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 06:49:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDJ3V-0004ej-9R; Wed, 13 Dec 2023 07:49:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDJ3U-00FVie-TC; Wed, 13 Dec 2023 07:49:16 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDJ3U-006kZH-Qy; Wed, 13 Dec 2023 07:49:16 +0100
Date: Wed, 13 Dec 2023 07:49:16 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de
Message-ID: <20231213064916.GH1318922@pengutronix.de>
References: <20231208140630.1986278-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231208140630.1986278-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_224918_524946_B1F6A1EB 
X-CRM114-Status: GOOD (  22.03  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fastboot: sparse: print descriptive error on overflowing
 destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Dec 08, 2023 at 03:06:30PM +0100, Ahmad Fatoum wrote:
> Fastboot flash of both regular files and barebox update handlers will
> print a message if the file being written doesn't fit the destination:
> 
>   barebox update:  "Image (%zd) is too big for device (%lld)\n"
>   fastboot:        "write: No space left on device\n"
> 
> With sparse images however, not the write will fail, but the lseek to
> the new offset, triggering a cryptic:
> 
>   "writing sparse image: Invalid argument"
> 
> Let's improve upon this a bit by translating lseek -EINVAL to -ENOSPC,
> so we get:
> 
>   "writing sparse image: No space left on device"
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/fastboot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 65d1d30f9092..261283d50a3a 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -598,7 +598,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
>  
>  			pos = lseek(fd, pos, SEEK_SET);
>  			if (pos == -1) {
> -				ret = -errno;
> +				ret = errno == EINVAL ? -ENOSPC : -errno;
>  				goto out;
>  			}
>  
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


