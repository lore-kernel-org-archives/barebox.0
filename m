Delivery-date: Mon, 23 Feb 2026 11:13:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSw8-004nJX-2I
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:13:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSw8-00073P-VW
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:13:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VHEajjPxFDyy36Fk0eujH7QAO+SdYn0pAET5nXlQIJA=; b=Om3cjcLJ5h1fj6XRxrpOFRXu0i
	meeRnrWnLBoZvjoNcTG8t5t81Y/Q8hRQxfb/Wi2rqXIA+Ep9OuffL4a+sHdppXsvU7NoIjZRw9Mfb
	0rPEGHMCR3d8gaynpXOTPx3Sv9zg4RUIGmWNoTZLGulIt3cGQN2Eclm5+trWZAo7u3bjkylvlPDxv
	GMgf/xEhvLoW0Nht3m5mP/2QrI3kU8OKfRy0ZpJNOQW+nb3U+kofABko5Hakv28jUfHJO+/ZY8BXn
	nwezaK1XQ92X4B0fNnuKG8sx8iFjNVx2D2/ATbQUd1hUPjdLVNUYZ3RuLsnUtjVBfK6by1OxVr820
	Qd8pEF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSvc-000000001LS-1YDJ;
	Mon, 23 Feb 2026 10:12:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSvZ-000000001Ky-1zBH
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:12:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuSvX-0006zA-Mv; Mon, 23 Feb 2026 11:12:31 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuSvW-002D9g-0W;
	Mon, 23 Feb 2026 11:12:31 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuSvX-000000015qT-1jH7;
	Mon, 23 Feb 2026 11:12:31 +0100
Date: Mon, 23 Feb 2026 11:12:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, "Claude Opus 4.6" <noreply@anthropic.com>
Message-ID: <aZwoD5oRA7A7Gs7K@pengutronix.de>
References: <20260216084253.3547270-1-a.fatoum@pengutronix.de>
 <20260216084253.3547270-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260216084253.3547270-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_021233_539968_CB38B45B 
X-CRM114-Status: GOOD (  23.49  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/12] bootm: android: fix PTR_ERR called after clearing
 error pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 16, 2026 at 09:42:21AM +0100, Ahmad Fatoum wrote:
> Both the kernel and initrd error paths set the pointer to NULL before
> calling PTR_ERR(), which always yields 0 (apparent success) instead of
> the actual error code from aimage_copy_component().
> 
> Swap the order so PTR_ERR() captures the error code before the pointer
> is cleared.

Squashed this and the next one into the original commit adding this
file.

Sascha

> 
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/bootm-android-image.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/bootm-android-image.c b/common/bootm-android-image.c
> index cb86123659ba..828400fef772 100644
> --- a/common/bootm-android-image.c
> +++ b/common/bootm-android-image.c
> @@ -101,8 +101,8 @@ static int do_bootm_aimage(struct image_data *img_data)
>  	if (hdr->kernel.size) {
>  		kernel = aimage_copy_component(fd, ofs, hdr->kernel.size);
>  		if (IS_ERR(kernel)) {
> -			kernel = NULL;
>  			ret = PTR_ERR(kernel);
> +			kernel = NULL;
>  			goto err_close;
>  		}
>  	}
> @@ -112,8 +112,8 @@ static int do_bootm_aimage(struct image_data *img_data)
>  	if (hdr->ramdisk.size) {
>  		initrd = aimage_copy_component(fd, ofs, hdr->ramdisk.size);
>  		if (IS_ERR(initrd)) {
> -			initrd = NULL;
>  			ret = PTR_ERR(initrd);
> +			initrd = NULL;
>  			goto err_close;
>  		}
>  	}
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


