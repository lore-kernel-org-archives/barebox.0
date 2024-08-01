Delivery-date: Thu, 01 Aug 2024 12:52:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZTPl-0056WS-1W
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 12:52:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZTPk-0000NM-Su
	for lore@pengutronix.de; Thu, 01 Aug 2024 12:52:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tL0qlXkBauVOsh38KEtP+2CCJKJ2eyvXFfIif6581rg=; b=UT7z3dz5WYPwzGwYAlLvbpl1Qq
	dPiYAg4YG3vR8zagaEeuNZKPRswny2N1MNlNDQT9MqDyqY3xVDxuansaFKbSd6SrvoBduapa40NXa
	VDnXNJFfg31bp8wx5fzWWBx2ObXnVntRtsnS3QhOmHOLXER8DGVcECedURPfoplG86OD3rA4wx4Fz
	pKiLkGkmUWkJL1pZO9YwOK00/0ZiHSDrVG+xPL2u4gd0Q0UG/ZSuEhPdz8GWwgCJt0vZ31u6vCYTy
	n0JjtdkPnbwezUIlP/AmoWS1w6QBzEBjEWWKWlkgBNiBqkh8GrauHhwKZlx6i5f2D3+cAFZcmJUJc
	psrEAEDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTPM-00000004oC1-2TSW;
	Thu, 01 Aug 2024 10:51:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTPJ-00000004oA5-2XVV
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 10:51:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sZTPG-0000JQ-MW; Thu, 01 Aug 2024 12:51:38 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sZTPG-003kVW-9m; Thu, 01 Aug 2024 12:51:38 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sZTPG-00CwaP-0d;
	Thu, 01 Aug 2024 12:51:38 +0200
Date: Thu, 1 Aug 2024 12:51:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZqtoulH-pIHmn54m@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
 <20240731080510.364706-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731080510.364706-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_035141_662329_CBD5C2EA 
X-CRM114-Status: GOOD (  16.01  )
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
Subject: Re: [PATCH v2 01/10] fs: give erase() a new erase_type parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jul 31, 2024 at 10:05:01AM +0200, Ahmad Fatoum wrote:
> diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
> index a41ff22dcebc..208e0cd23c29 100644
> --- a/drivers/usb/gadget/function/dfu.c
> +++ b/drivers/usb/gadget/function/dfu.c
> @@ -208,7 +208,7 @@ static void dfu_do_write(struct dfu_work *dw)
>  
>  	if (prog_erase && (dfu_written + wlen) > dfu_erased) {
>  		size = roundup(wlen, dfu_mtdinfo.erasesize);
> -		ret = erase(dfufd, size, dfu_erased);
> +		ret = erase(dfufd, size, dfu_erased, ERASE_TO_WRITE);
>  		dfu_erased += size;
>  		if (ret && ret != -ENOSYS) {
>  			perror("erase");
> @@ -333,7 +333,7 @@ static void dfu_do_copy(struct dfu_work *dw)
>  		return;
>  	}
>  
> -	ret = erase(fd, ERASE_SIZE_ALL, 0);
> +	ret = erase_flash(fd, ERASE_SIZE_ALL, 0);

Fixed this to:

	ret = erase(fd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);

Or should it be ERASE_TO_CLEAR instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


