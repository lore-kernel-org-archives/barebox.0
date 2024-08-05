Delivery-date: Mon, 05 Aug 2024 11:29:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau26-006Rdn-2D
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:29:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sau26-0000nN-3H
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:29:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zsnyxXgyfscIw0wIZIbM8GUI7KzGRlWu0Am74tuXWzY=; b=KIJmKyJkDxtmmUrX4dWsmKUJYM
	dX+u5Oauf0QTXmKIs4x/7hQfSBkfWH08zc3kglSz1VAWa+4PvIPY0l8iJu9vuyuF/Uw5AfjYaHd/g
	P/LoMM2hZ53FsWmblAvvZ7Zvcy5R1jGwWPakpBebFg7sYxvQ/Gk8xIgkT4dQO0M4zcFbklbW0MpTe
	ibNUwac2aUeEpUGWeyyBdv2RxTKIsq4jeOO/tvkd6NlavWwIKhuCjhFOYlEj1MIja+9kBdhhYSGLv
	NAkV3/kLQOtKLKcUf7Iwk6xpnBJ5vCPYY/9twpdfXY8iNnY9cyflavn/02B3/QdAb8OVdNIziY3P7
	3A/7r36w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau1R-0000000FHrO-180f;
	Mon, 05 Aug 2024 09:28:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sau1N-0000000FHqO-3hFg
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:28:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sau1K-0000dS-38; Mon, 05 Aug 2024 11:28:50 +0200
Message-ID: <b73ab2f3-cfe6-404b-96b5-2c6c432213a6@pengutronix.de>
Date: Mon, 5 Aug 2024 11:28:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-2-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_022853_951794_27846AF3 
X-CRM114-Status: GOOD (  15.26  )
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
Subject: Re: [PATCH v2 01/19] errno: include string for EOPNOTSUPP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> -EOPNOTSUPP is becoming more common in the barebox code, so include the
> error string for it in the image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/misc.c | 1 +

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/misc.c b/common/misc.c
> index 7bc92c0f95..e6e993338c 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -59,6 +59,7 @@ const char *strerror(int errnum)
>  	case	EPROBE_DEFER	: str = "Requested probe deferral"; break;
>  	case	ELOOP		: str = "Too many symbolic links encountered"; break;
>  	case	ENODATA		: str = "No data available"; break;
> +	case	EOPNOTSUPP	: str = "Operation not supported"; break;
>  #if 0 /* These are probably not needed */
>  	case	ENOTBLK		: str = "Block device required"; break;
>  	case	EFBIG		: str = "File too large"; break;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



