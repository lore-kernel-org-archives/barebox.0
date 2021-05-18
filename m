Delivery-date: Tue, 18 May 2021 08:33:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1litIe-0002bj-Nb
	for lore@lore.pengutronix.de; Tue, 18 May 2021 08:33:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1litId-0000Bh-PY
	for lore@pengutronix.de; Tue, 18 May 2021 08:33:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=75tcM6nfeYciubilGnzDiFQ1fdQb4m48F2sVNxP8kQY=; b=SffGls4lzwQJoutD6oT7kvm5V
	OFYyj7nx5b/MQnQT//OBFqXsuDLbp3V8j2WSdsIyXYXLE4uk8bbSKuxjVgTv6n2+utDokrjxwiEI6
	F8aVQKEPrK1Dm2qcCSOqN7Q6e++mzOKuOHblvwCL1ezzrcOojZwFeh1kQvfCTx6XpflAmUEFH0eTM
	NKNodEF4O/owhfg6tX6X5i2rgbsrNLidHTPGjNRAT79tYEYqMBEfT2gwp8KbfixT7KHNVX42ppE2H
	pqqg5gPzm1zeRqGPvj7CKpWD5TRMbqYLZITOw0a9285sIAq6N7cmje5NVLyvM3CaW1w3IiVyG73ng
	RFYtX1ilA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1litHk-00HABb-Rm; Tue, 18 May 2021 06:32:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1litHf-00HAAs-No
 for barebox@desiato.infradead.org; Tue, 18 May 2021 06:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ok1aoGA0yJgj8wt87hODw05Jm3tFbXOlA5Vqdei7ZWM=; b=TbZsH5cih5v9QkCxD1EELdq16V
 a0EWd665L1psLlCr9jZVCdskiZnL6F6kDkTYLXGQfqcEcNEb9dDmTRn7SWwq1mzBltSDrEuzH/qnZ
 5CpZDsvSyf+D2gLPNOt4fnaiKUjHUm9aiGfxDiShVuTUec72FIcO0Q0O5PkztGpcaaQq6mqjBN/3R
 z5JlHhE/ZDXndfvwXayF9KEh7kJozG3d/f7eRJTkK63ho1aG0lmdpeKYoaHF/EU5PcXPyzd2B9yft
 w6e2gatV346woteNOA2Asom1icgcVZ2suVFnNrAQXjtzRrduhOxgijdv0amArDPDg+U1hzoLlQLSB
 szSDFBXg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1litHZ-00EM03-4y
 for barebox@lists.infradead.org; Tue, 18 May 2021 06:32:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1litHX-00005T-G2; Tue, 18 May 2021 08:32:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1litHX-00078F-6t; Tue, 18 May 2021 08:32:43 +0200
Date: Tue, 18 May 2021 08:32:43 +0200
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210518063243.GV19819@pengutronix.de>
References: <20210517114519.28451-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517114519.28451-1-ejo@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:32:35 up 89 days,  9:56, 90 users,  load average: 0.25, 0.19, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_233245_208911_966C4768 
X-CRM114-Status: GOOD (  22.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: do no print error message with dwc2_warn()
 macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 17, 2021 at 01:45:19PM +0200, Enrico Jorns wrote:
> dwc2_warn() is intended for printing 'warning' messages and should thus
> call dev_warn() instead of dev_err().
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/usb/dwc2/core.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index fa9d6ae954..c49672c85a 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -500,7 +500,7 @@ struct dwc2 {
>  #define gadget_to_dwc2(ptr) container_of(ptr, struct dwc2, gadget)
>  
>  #define dwc2_err(d, arg...) dev_err((d)->dev, ## arg)
> -#define dwc2_warn(d, arg...) dev_err((d)->dev, ## arg)
> +#define dwc2_warn(d, arg...) dev_warn((d)->dev, ## arg)
>  #define dwc2_info(d, arg...) dev_info((d)->dev, ## arg)
>  #define dwc2_dbg(d, arg...) dev_dbg((d)->dev, ## arg)
>  #define dwc2_vdbg(d, arg...) dev_vdbg((d)->dev, ## arg)
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

