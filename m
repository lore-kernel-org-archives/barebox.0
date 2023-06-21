Delivery-date: Wed, 21 Jun 2023 11:35:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBuFP-00FUez-A9
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 11:35:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBuFM-0007FM-Q8
	for lore@pengutronix.de; Wed, 21 Jun 2023 11:35:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qBg8klCZsDJlxRVTig/seP95GORfCm9iRksTtx8DjH0=; b=0L/AhXD7YEpd5buT63q2K2dPWd
	r5C7IQE17wlgWsmM84bxsCl18d8MQIwS41N8nOhqXV9HyFS2Bee3ACS25+zn8uq5OJki1riPuMtlK
	ziMce4jan+8uwbaLpM3Jko2Ji3lk10fb9p8eBdt2MEct3gGe+eE3bbiUHBmtf3/yueEtuxMtKU33e
	bLybo/KDDDdIjInd4BaqykgUzWYTyFMSP2nwj09a3ZOJO/Jyji+anFkXDSEHHfGIIHYrG0REXE5Uh
	t94Io4gPbglH9LtZVI0nqpJgyBDQaU7ClnZtJtuyDJUiNDv7qhypHbLoTQE2/hORgMvRqwHbgNtke
	Jxj2UwQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBuEL-00Dse8-0d;
	Wed, 21 Jun 2023 09:34:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBuDy-00DsVr-2N
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 09:34:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBuDx-0006sq-Fz; Wed, 21 Jun 2023 11:34:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBuDx-0000sO-2U; Wed, 21 Jun 2023 11:34:01 +0200
Date: Wed, 21 Jun 2023 11:34:01 +0200
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20230621093401.GG18491@pengutronix.de>
References: <20230615155738.39998-1-abbotti@mev.co.uk>
 <20230616123136.15656-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230616123136.15656-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_023402_775423_AD74C9B4 
X-CRM114-Status: GOOD (  24.91  )
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
Subject: Re: [PATCH v3] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 16, 2023 at 01:31:36PM +0100, Ian Abbott wrote:
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
> ---
> v2: Corrected tabs in echoed output.
> v3: Use dos2unix instead of sed, as suggested by Ahmed Fatoum.  Remove
>     the corresponding echo command because dos2unix is verbose enough
>     already!
> ---
>  scripts/socfpga_import_preloader | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

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


