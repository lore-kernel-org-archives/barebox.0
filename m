Delivery-date: Thu, 13 Oct 2022 08:36:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oirpM-0072yU-Ia
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 08:36:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oirpK-0000xi-HP
	for lore@pengutronix.de; Thu, 13 Oct 2022 08:36:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U6QJjdITtTKntnfVl8pbfMRSwmgCHnknvBK/TSPxSxs=; b=v9gFJrgA2rbZdW5r/p6/ehy+ud
	/d/ipT3GFzuUlS81oitmgObMAWaJ/Gk+UYtEEnZor7pBO4Ieg6wkZD1Uv3HgE+PHoSDn88YNj6Y2R
	58EQIqn9q8vIDSLRGOfNnECSxr2WqTeO4Wa2f4fHmDeuBpSdPzMZsu/0PSWvmYxjRaxJuU5FGVOtT
	Ws3FTDHzV1mqwLSd4HwSGfvs9OnIQxWxo77d2q0CfmPlwse5pwRrN44GfCSPaY9UNV6F9v5tom5nO
	1tm1+ODP58eibrLh0AHzmPRoDnMpN/sTDZnw/kKmgVBJ3vColYAJrYzwvMA0ZMLi1gQ+FeCe9SpbJ
	/MCqtdbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oirn6-00Arji-BQ; Thu, 13 Oct 2022 06:34:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oirn2-00AriL-68
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 06:33:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oirmv-0000UV-Mr; Thu, 13 Oct 2022 08:33:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oirmv-0001i6-FB; Thu, 13 Oct 2022 08:33:49 +0200
Date: Thu, 13 Oct 2022 08:33:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221013063349.GC6702@pengutronix.de>
References: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010060842.2083550-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_233356_247454_03DDA464 
X-CRM114-Status: GOOD (  20.26  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] efi: retire efi_bool_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:08:38AM +0200, Ahmad Fatoum wrote:
> GCC defaults to a one-byte bool on all its platform, except for IBM RS/6000,
> which will most likely never support. Thus just drop the efi_bool type
> we only use at a single place and use bool directly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/efi.h           | 1 -
>  include/efi/efi-stdio.h | 2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/efi.h b/include/efi.h
> index a1b22f2d8f88..691e3d5493fc 100644
> --- a/include/efi.h
> +++ b/include/efi.h
> @@ -62,7 +62,6 @@ struct efi_device_path;
>  #define EFI_ERROR(a)	(((signed long) a) < 0)
>  
>  typedef unsigned long efi_status_t;
> -typedef u8 efi_bool_t;
>  typedef u16 efi_char16_t;		/* UNICODE character */
>  typedef u64 efi_physical_addr_t;
>  typedef void *efi_handle_t;
> diff --git a/include/efi/efi-stdio.h b/include/efi/efi-stdio.h
> index 66fb0afc36b3..e8af244bfcf6 100644
> --- a/include/efi/efi-stdio.h
> +++ b/include/efi/efi-stdio.h
> @@ -8,7 +8,7 @@ struct efi_simple_text_input_ex_protocol;
>  
>  typedef efi_status_t (EFIAPI *efi_input_reset_ex)(
>  	struct efi_simple_text_input_ex_protocol *this,
> -	efi_bool_t extended_verification
> +	bool extended_verification
>  );
>  
>  struct efi_key_state {
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


