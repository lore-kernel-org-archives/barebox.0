Delivery-date: Thu, 12 Jan 2023 16:21:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFzOc-009tJB-3t
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 16:21:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFzOa-0008Jw-1d
	for lore@pengutronix.de; Thu, 12 Jan 2023 16:21:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sVXRKXp/d4L3Zc6RWtuNptndo3YJsmWHGjCe6XkPTlQ=; b=ZaVV3vb8LVRlIKK5DT5UDM2iJn
	fu9gCrPOdcUDy/91l+rT8NgzEQP4x1s9ZWdb3tPlBUt1wmqJY0+JSvaDAQnJybMcgqJoEsVV1TymV
	aCzmHlt8KejYDV/3DHA4Bv+oaEzZ+yugq5kmcZquo+tP7ANP5iu6uHZ4n9B0XHaaX7py3PlaWzJsY
	l5O5Jcyo2/HszxgY/ws1lvtxLGRyLheIDQ4jEEmknSFL0xRGZUh0FfQIKAkHNdr+Ib9e8z0UkotJn
	jqtgd12zflQIebwrTlZbbvCylB5zULWT5OifpI8Se4ywRNDNrbZr1AILrOYlwbwW7cjXqaSh90KLE
	Fq3Q2ciQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzN1-00Fagt-R8; Thu, 12 Jan 2023 15:20:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzKo-00FZST-QL
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 15:17:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzKn-0007As-DB; Thu, 12 Jan 2023 16:17:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzKn-0005tF-4d; Thu, 12 Jan 2023 16:17:41 +0100
Date: Thu, 12 Jan 2023 16:17:41 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230112151741.GA24755@pengutronix.de>
References: <20230111120002.1104864-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111120002.1104864-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_071742_885382_72177F69 
X-CRM114-Status: GOOD (  19.60  )
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
Subject: Re: [PATCH] driver: drop no longer used RW_SIZE/_MASK macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 01:00:02PM +0100, Ahmad Fatoum wrote:
> O_RWSIZE_MASK is what's now used and it's passed as argument to open.
> There remain no users of either RW_SIZE or RW_SIZE_MASK. Remove to avoid
> confusion.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/driver.h | 3 ---
>  1 file changed, 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/driver.h b/include/driver.h
> index e1b1ebde5b5f..957b23dff79a 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -128,9 +128,6 @@ struct driver {
>  #define device_d device
>  #define driver_d driver
>  
> -#define RW_SIZE(x)      (x)
> -#define RW_SIZE_MASK    0x7
> -
>  /* dynamically assign the next free id */
>  #define DEVICE_ID_DYNAMIC	-2
>  /* do not use an id (only one device available */
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


