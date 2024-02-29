Delivery-date: Thu, 29 Feb 2024 12:09:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfeIO-00FTRO-34
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 12:09:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfeIO-0001JQ-Cm
	for lore@pengutronix.de; Thu, 29 Feb 2024 12:09:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KD2/lGcjgJlJ9WhjEBIqHQhvGP9mg6hX0D3Ns8KnJ1c=; b=Po9Q1+yYFADyufMB+BfgqPxT4p
	dgjlO912+IyYT3cGWcukoozjdfO49YeCb3c16hS/Q4G0IBOOnlrQr8I5FWJPXkCwhN3Mnj3sgkfzL
	3qsoCDnNfU1nFkVxQIkD3Gw/JQZcmOV3MtO5a2mhNkxKH0GZmlbNS0lkjoE9uhs/6e/POiKcz1X8h
	XmlJnJLH8ke2OJDkuwpA05RfxucSXv9FR1lOdzOdtjvDfySmG2CQ7u6Z2mCsF+UbKO5YnJHJZAgqq
	YctHAML1c0xVz5TnFWH8EITNf8JyJ6lbRzS2eOOh/+5KAVDvbRVTDJNJv4xMVUqGDieV8hK4LyXGC
	dBxBBY1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfeHV-0000000DHym-0veV;
	Thu, 29 Feb 2024 11:08:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfeHR-0000000DHy0-2ZV5
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 11:08:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfeHO-00017K-L0; Thu, 29 Feb 2024 12:08:46 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfeHO-003ZkN-8Z; Thu, 29 Feb 2024 12:08:46 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfeHO-00DYyH-0Y;
	Thu, 29 Feb 2024 12:08:46 +0100
Date: Thu, 29 Feb 2024 12:08:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240229110846.zxumzudpnqqtyezk@pengutronix.de>
References: <20240229094655.2897860-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240229094655.2897860-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_030849_671423_F5D63F5A 
X-CRM114-Status: GOOD (  13.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] optee: check optee_verify_header argument for
 error pointers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-29, Ahmad Fatoum wrote:
> optee_verify_header is called at two places with
> imx_scratch_get_optee_hdr() as argument, which returns an error pointer.
> 
> Check against that to avoid crashing in error cases.
> 
> Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  common/optee.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/optee.c b/common/optee.c
> index a8a43554e757..7fe93e441974 100644
> --- a/common/optee.c
> +++ b/common/optee.c
> @@ -10,7 +10,7 @@ static u64 optee_membase = U64_MAX;
>  
>  int optee_verify_header(const struct optee_header *hdr)
>  {
> -	if (!hdr)
> +	if (IS_ERR_OR_NULL(hdr))
>  		return -EINVAL;
>  
>  	if (hdr->magic != OPTEE_MAGIC) {
> -- 
> 2.39.2
> 
> 


