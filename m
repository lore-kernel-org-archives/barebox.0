Delivery-date: Wed, 21 Jun 2023 09:58:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsjH-00FOpS-6C
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 09:58:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsjE-0006TQ-Lf
	for lore@pengutronix.de; Wed, 21 Jun 2023 09:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V1gMVUSvQxKBfE88kWILixo4S3whdYGqmqvrTaiJoD8=; b=S3ChbcnT2ILe1ZyZBgy3bEKVRL
	SUAZCXwuHdD9/MC//LNN2Kna6wrRtO5D53fzuLUmeeRPLooPuv+3fQ8GuNET97M6U8dmB6sNUGPpz
	bscYNXG/LtViXP9a06CLqGXa+vWuW/5XDIUVL/vexKs76IFvsEO62Lv3ASiyzmrCihIw0gUiGb6Ux
	Iwa8yGUmQmLrf5p3oNM2Ms0AGww1k9/IPBxdnVpSiNliHKGbBa6mGLs5ov9mM09sJkoJaMSqKE0ou
	SsyU6HPgWRvKPClczkImyIkJGUrhm1eEpr5TSw/W3fKgqwDWbSmEAB4jGwu8LNaZ8bkcVv26iAvdq
	X/f5o/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsiC-00DbvW-13;
	Wed, 21 Jun 2023 07:57:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsi9-00Dbue-0S
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 07:57:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsi7-0006Kq-Nu; Wed, 21 Jun 2023 09:57:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsi7-0003kC-0G; Wed, 21 Jun 2023 09:57:03 +0200
Date: Wed, 21 Jun 2023 09:57:02 +0200
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20230621075702.GT18491@pengutronix.de>
References: <20230616140211.31250-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230616140211.31250-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_005705_180150_DF961092 
X-CRM114-Status: GOOD (  21.89  )
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
Subject: Re: [PATCH] scripts: socfpga_import_preloader: Update include paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 16, 2023 at 03:02:11PM +0100, Ian Abbott wrote:
> Commit ac1404f77491 ("ARM: socfpga: Move mach header files to
> include/mach/socfpga") moved socfpga specific mach header files to
> "include/mach/socfpga" and changed the `#include` directives in the
> source code accordingly.  However, the files imported by the
> `socfpga_import_preloader` script are still being fixed up with the old
> `#include` directives.  Update the fixing up of the include paths in
> the scripts `copy_source()` function to use the new `#include`
> directives.
> 
> Fixes: ac1404f77491 ("ARM: socfpga: Move mach header files to include/mach/socfpga")
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  scripts/socfpga_import_preloader | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
> index bd54e1b913..4f45a51bab 100755
> --- a/scripts/socfpga_import_preloader
> +++ b/scripts/socfpga_import_preloader
> @@ -101,7 +101,7 @@ copy_source() {
>  
>  	echo "	Fixing include pathes..."
>  	# Fix include pathes
> -	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/cyclone5-scan-manager.h>/g' $tgt
> +	sed -i 's/#include <iocsr_config_cyclone5.h>/#include <mach\/socfpga\/cyclone5-scan-manager.h>/g' $tgt
>  	sed -i 's/#include <pinmux_config.h>/#include <common.h>/g' $tgt
>  	sed -i 's/#include "sequencer_auto.h"//g' $tgt
>  	sed -i 's/#include "sequencer_defines.h"//g' $tgt
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


