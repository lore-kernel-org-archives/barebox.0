Delivery-date: Tue, 10 Jan 2023 15:55:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG2a-007qtx-OT
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:55:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFG2Y-00074c-MP
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:55:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wXlVs2OEfu01Hqh+L21jxIJXaIXLD8l2KwH6kPYcx2o=; b=UC/f5IFER/UCqwNO4xu1cGVJRj
	4LTTVzRsROCgEXIZBRQBYZBiMP69+jHHmQxnI5xFH38guRBvmExclw70VPQlqPlTMSIJK1cduYOoU
	56s07Nw2pyGmu6/Tk/GcGa6Dh017Be5bYSe2MBNVbnZykhrA0mVetp8kJ5uAL79pP2fDQ/BckV4Lu
	V6VCMYZOqG1mgWVuAPVfwXf2D0dFmVWoso5xBMpzBJGb/tEJpmTtP6C5ThrpL6pXPW2WOmeYQRD1W
	YvjikX2RJBIkl1R7ZtE9LJfPDGEFuOBE6j91koZJGOR8g8fDfRuV52uSGp10o5LexuxoHKYQx3rCE
	8cs/m+Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG1S-007Q2J-2z; Tue, 10 Jan 2023 14:54:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG1N-007Q1Z-Tu
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:54:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG1M-0006hb-Kk; Tue, 10 Jan 2023 15:54:36 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG1M-0004vE-DS; Tue, 10 Jan 2023 15:54:36 +0100
Date: Tue, 10 Jan 2023 15:54:36 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110145436.GN28911@pengutronix.de>
References: <20230109152926.2191465-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109152926.2191465-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_065437_977759_BF024E5B 
X-CRM114-Status: GOOD (  22.93  )
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
Subject: Re: [PATCH] driver: add of_match_table as alias to of_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 04:29:26PM +0100, Ahmad Fatoum wrote:
> In order to reduce trivial differences between barebox and Linux to
> simplify driver porting. Add of_match_table as alias to of_compatible
> in struct driver.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/driver.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/driver.h b/include/driver.h
> index ce3eba3152d0..322060acc2a6 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -119,7 +119,10 @@ struct driver {
>  	struct bus_type *bus;
>  
>  	const struct platform_device_id *id_table;
> -	const struct of_device_id *of_compatible;
> +	union {
> +		const struct of_device_id *of_compatible;
> +		const struct of_device_id *of_match_table;
> +	};
>  };
>  
>  /*@}*/	/* do not delete, doxygen relevant */
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


