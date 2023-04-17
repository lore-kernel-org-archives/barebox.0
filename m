Delivery-date: Mon, 17 Apr 2023 09:02:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIsK-0061e8-53
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 09:02:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIsK-00031o-1X
	for lore@pengutronix.de; Mon, 17 Apr 2023 09:02:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TJeXXsVJf0QyzwAChq6T7YftJp/neb2V2NtN5d/8N/I=; b=BZ3gBuDJzHO/wIMbMkFGJ7gdTp
	qo7cfL/SRV7BnM1aqdq7F1PIrmp4WhT/+N0P5c+7iDGDcE3FxIs91EcncQtVJcMf7a2pE7L9mkz9r
	2nQo4KbBN0McAAKzKbXFvs1yoizI6DmDwold+pSW9rPZYNP3Y/QUZXo8d2c56w9oJ5trLlsl6CFzD
	/ldDSPcTQU+K6yZ7s+e1Rr/flU+SFk+a+UtfjG+Fbf0GjgV6BAzzi9GCd+MqZxwXamVvvuSwu7ZWh
	B2lq6HHCRQB/hBa/j8/yr4RhebEwAJTOHeh1w2VqvvZWLACPQKzXGAqO6b+WjcCYALVfy8IqE0nPn
	zdBZ4row==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIrI-00F7lu-05;
	Mon, 17 Apr 2023 07:01:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIrE-00F7ks-0t
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 07:01:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIrD-0002uA-0U; Mon, 17 Apr 2023 09:00:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIrC-00053E-Ow; Mon, 17 Apr 2023 09:00:58 +0200
Date: Mon, 17 Apr 2023 09:00:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417070058.GI13543@pengutronix.de>
References: <20230414141154.2988598-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414141154.2988598-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_000100_312948_F643498A 
X-CRM114-Status: GOOD (  19.41  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! scripts: gen-dtb-s: reference OF IMD entries
 automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 04:11:54PM +0200, Ahmad Fatoum wrote:
> While the reference is just there, so linker garbage collection doesn't
> remove it, it's still a reference and it will be relocated.
> 
> This means it must be aligned, otherwise we will crash doing an unaligned
> access during relocation if device tree size isn't evenly divisible by
> pointer length...
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/gen-dtb-s | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
> index 6a624e0bd5d0..f6fa1525933e 100755
> --- a/scripts/gen-dtb-s
> +++ b/scripts/gen-dtb-s
> @@ -51,6 +51,7 @@ echo ".incbin \"$dtb\""
>  echo "__dtb_${name}_end:"
>  echo ".global __dtb_${name}_end"
>  if [ "$imd" = "y" ]; then
> +	echo ".balign ASM_SZPTR"
>  	echo "ASM_PTR __barebox_imd_OF_${name}"
>  fi
>  echo ".balign STRUCT_ALIGNMENT"
> @@ -70,6 +71,7 @@ echo ".incbin \"$dtb.z\""
>  echo "__dtb_z_${name}_end:"
>  echo ".global __dtb_z_${name}_end"
>  if [ "$imd" = "y" ]; then
> +	echo ".balign ASM_SZPTR"
>  	echo "ASM_PTR __barebox_imd_OF_${name}"
>  fi
>  echo ".balign STRUCT_ALIGNMENT"
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


