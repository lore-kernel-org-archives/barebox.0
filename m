Delivery-date: Fri, 16 Jun 2023 14:37:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8hX-0090XF-Iq
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 14:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8hV-0007Ft-5V
	for lore@pengutronix.de; Fri, 16 Jun 2023 14:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QrK+9OAcvzHZG4lIdNYinFM5CHWV0QzrPvti3PcfeHY=; b=i8bMG6XSdeiTO9flh0DJgyMUM8
	M8RG2yOaNG1rMDSOKX6DRfGhFN0CJvwMnuIMU3TJG3zXNw77b3KAxTdXe7xWjBAmJjEwv0BV/UNbv
	IDNQ6YZ5i3yyIWuKlzn/xvX8UEdz7E8Irv3+uU3uSzB9PI7wvqNBEQzFUAl2+KQuB4lyJR29NP2bD
	3+RJd3FKbvHWomR0BHm6BAtqaCHG+R1UoFvE0P7+fMvgvTcf+qfarFji78OqznnP7WBVqVc91G53+
	iXWCv2ZqfQBUNE/xf74/S42sCCubeXLnVs1X4s5pGnKFjTFY7kqmanl0zhqPMOxf0ho4CtPAAoKsq
	BwlMO8ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA8gK-000a3G-08;
	Fri, 16 Jun 2023 12:36:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA8gH-000a2e-0S
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 12:35:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qA8gE-00071l-Ms; Fri, 16 Jun 2023 14:35:54 +0200
Message-ID: <145af754-f48e-d200-741b-11a9c80ce928@pengutronix.de>
Date: Fri, 16 Jun 2023 14:35:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org
References: <20230615155738.39998-1-abbotti@mev.co.uk>
 <20230616123136.15656-1-abbotti@mev.co.uk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230616123136.15656-1-abbotti@mev.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_053557_181601_64D80B40 
X-CRM114-Status: GOOD (  22.63  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 16.06.23 14:31, Ian Abbott wrote:
> If the handoff files were generated on a Windows system, they will have
> DOS line endings (CRLF).  The `indent` program (with the options used by
> the script) does a lousy job tidying up those files, leaving ASCII CR
> characters embedded in the lines.  This is particularly bad for array
> initializers that have one value per line, because they all end up on a
> single line with embedded ASCII CR characters between each value.
> 
> Add an initial `dos2unix` command to `copy_source()` to change the DOS
> line endings (CRLF) to Unix line endings (LF).
> 
> Also output a message before running `unifdef` and fix the spelling of
> "paths" in one of the other messages.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
> v2: Corrected tabs in echoed output.
> v3: Use dos2unix instead of sed, as suggested by Ahmed Fatoum.  Remove
>     the corresponding echo command because dos2unix is verbose enough
>     already!
> ---
>  scripts/socfpga_import_preloader | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
> index bd54e1b913..fb8270f5d3 100755
> --- a/scripts/socfpga_import_preloader
> +++ b/scripts/socfpga_import_preloader
> @@ -79,6 +79,9 @@ copy_source() {
>  
>  	cp $src $tgt
>  
> +	dos2unix $tgt
> +
> +	echo "	Fixing conditional compilation..."
>  	unifdef -D HCX_COMPAT_MODE=1 -D ENABLE_INST_ROM_WRITE=1 $tgt -o $tgt
>  
>  	echo "	Fixing extern/static keywords..."
> @@ -99,7 +102,7 @@ copy_source() {
>  	sed -i 's/alt_8/int8_t/g' $tgt
>  	sed -i 's/#include "alt_types.h"//g' $tgt
>  
> -	echo "	Fixing include pathes..."
> +	echo "	Fixing include paths..."
>  	# Fix include pathes
>  	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/cyclone5-scan-manager.h>/g' $tgt
>  	sed -i 's/#include <pinmux_config.h>/#include <common.h>/g' $tgt

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



