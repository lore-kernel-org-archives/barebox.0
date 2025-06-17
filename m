Delivery-date: Tue, 17 Jun 2025 09:57:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRCe-008CSo-3B
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 09:57:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRRCe-0001F4-DD
	for lore@pengutronix.de; Tue, 17 Jun 2025 09:57:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e/pfm51W5rxuPz5+x9UkCSf+p4dKO4VI/cXMGlWVU2k=; b=OSpXF3DzeZv3TJqWFdKCPLuZpt
	xpsJ3O/Ip2bpsNg8x4SLuvKKjIIgK98afIUrRd6qwwifyoj7HzWopiYJTaegMq9df/lCa2aLSZe/A
	CRA6xHGVFPn5GWmQpzudU9iU2ncuovtF65hS97/ldCqaDG3gxJVRea7a/01jgvnCW4pKqr+tc8zM1
	FW3db0p5eC5ASxwmCJvT0GFVVw9K0ETpfmMF01lCVVDRUcBldccaQtU1HFFVpRf5fdNcPJHmaIcu7
	8ivoWJw3Tj35uPTRx+hctGdF3L1c3NRVeA0yOx596k8WkD/LhQCaI/y62fFz+8Sbc062zVRW46zg1
	XWxs/+CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRBx-00000006W5R-3wDt;
	Tue, 17 Jun 2025 07:57:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRBS-00000006W4P-3gAY
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 07:56:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRBR-0007w4-KS; Tue, 17 Jun 2025 09:56:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRBR-003wCQ-1R;
	Tue, 17 Jun 2025 09:56:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRBR-001NRL-16;
	Tue, 17 Jun 2025 09:56:41 +0200
Date: Tue, 17 Jun 2025 09:56:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFEfuaLIvT8cMLLA@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
 <20250612065812.2025665-9-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250612065812.2025665-9-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_005642_919423_C83A02E2 
X-CRM114-Status: GOOD (  24.21  )
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
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 8/9] fs: Report errors for out-of-bounds protect
 operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 12, 2025 at 08:58:11AM +0200, Oleksij Rempel wrote:
> The protect() function previously masked errors for out-of-bounds
> requests. It would either return success for offsets already beyond
> file/partition size or clamp the count for ranges extending beyond the
> boundary. This behavior was introduced by commit 6815e0d05480 ("fs:
> limit flash erase and protect to the partiton boundary") to address SPI
> flash wrap-around issues.
> 
> This masking prevented shell commands from reporting failures for
> invalid ranges, which could mislead users and scripts. For example,
> underlying driver errors like -EINVAL from NVMEM were not propagated.
> 
> This patch modifies protect() to return appropriate error codes (-ENXIO
> or -EINVAL) for such out-of-bounds conditions, instead of silently
> succeeding or clamping.
> 
> Fixes: 6815e0d05480 ("fs: limit flash erase and protect to the partiton boundary")
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  fs/fs.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 7bc94d7b9e6c..dd6af3cef874 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -652,9 +652,9 @@ int protect(int fd, size_t count, loff_t offset, int prot)
>  	if (IS_ERR(f))
>  		return -errno;
>  	if (offset >= f->f_size)
> -		return 0;
> -	if (count > f->f_size - offset)
> -		count = f->f_size - offset;
> +		return errno_set(-ENXIO);
> +	if (!count  || count > f->f_size - offset)
> +		return errno_set(-EINVAL);

This breaks the saveenv command which does a

	ret = protect(envfd, ~0, 0, 0);

to unprotect the environment sector. Try on a board with environment in
SPI flash.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


