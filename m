Delivery-date: Wed, 12 Apr 2023 12:59:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmYCX-0011Ii-Vg
	for lore@lore.pengutronix.de; Wed, 12 Apr 2023 12:59:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmYCX-0003ub-Cc
	for lore@pengutronix.de; Wed, 12 Apr 2023 12:59:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yvGqkWuBjvmZSbcVktPFwLHjNxOFKdM/+lSgFEklC2k=; b=i1eaVnF4Np5C49XqFPk5gqL+JL
	yWEDU07vxFiWnDFlcK/ACwcwAPybrsM457yc9JSgfKi3wdTVxjTii7+5sxnTud3DR1cUQCdVltszw
	GFUsD8HxYZ9zOHlUFNgNTjnfxzE1lVReeB6AB/1N+fX9fCw2f+PDyp4wFYTog/48aUPN6ugVSg0Cy
	SFESLMVTmYhWHbW46CDLDpZA7XMJ7nADLTsOiIJgQfyRDtf+yfIRB5seI50uxGeGD+o8lY0Ik3cOn
	m9X61/UO4ahVWekt8xkiXRMRy07pZ2I6fpQkW6Vd+EM8lADD+sOR0nMT5zAkVElze8NvqxOeFCJab
	nMT5huCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYB8-002j6H-1x;
	Wed, 12 Apr 2023 10:58:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYB5-002j4J-1G
	for barebox@lists.infradead.org;
	Wed, 12 Apr 2023 10:58:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmYB1-0003lE-4q; Wed, 12 Apr 2023 12:58:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmYB0-0005Wo-Tc; Wed, 12 Apr 2023 12:58:10 +0200
Date: Wed, 12 Apr 2023 12:58:10 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230412105810.GK15436@pengutronix.de>
References: <20230404101706.2237453-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404101706.2237453-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_035815_426565_A7FEECD4 
X-CRM114-Status: GOOD (  22.79  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] scripts: gen-dtb-s: reference OF IMD entries
 automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 04, 2023 at 12:17:05PM +0200, Ahmad Fatoum wrote:
> We currently require IMD_OF_USED to get the DT compatible into the
> barebox image data meta section. As the PBL is already referencing the
> DT to pass it along to barebox proper, let's add a reference from the DT
> to the image data section to make IMD_OF_USED unnecessary.
> 
> Suggested-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> --
> v1 -> v2:
>   - use dword, to fix build for 64-bit (Sascha)

Indeed it fixes it for 64-bit, but now breaks it for 32-bit. Do we have
to #ifdef this or is there something clever we can do about this?

Sascha

>   - place IMD reference before STRUCT_ALIGNMENT
> ---
>  scripts/gen-dtb-s | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
> index c5c46a4d8675..6309a814a483 100755
> --- a/scripts/gen-dtb-s
> +++ b/scripts/gen-dtb-s
> @@ -49,6 +49,9 @@ echo "__dtb_${name}_start:"
>  echo ".incbin \"$dtb\""
>  echo "__dtb_${name}_end:"
>  echo ".global __dtb_${name}_end"
> +if [ "$imd" = "y" ]; then
> +	echo ".dword __barebox_imd_OF_${name}"
> +fi
>  echo ".balign STRUCT_ALIGNMENT"
>  
>  compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.z)
> @@ -65,5 +68,8 @@ printf ".int 0x%08x\n"  $uncompressed
>  echo ".incbin \"$dtb.z\""
>  echo "__dtb_z_${name}_end:"
>  echo ".global __dtb_z_${name}_end"
> +if [ "$imd" = "y" ]; then
> +	echo ".dword __barebox_imd_OF_${name}"
> +fi
>  echo ".balign STRUCT_ALIGNMENT"
>  echo "#endif"
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


