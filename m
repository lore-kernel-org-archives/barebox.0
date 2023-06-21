Delivery-date: Wed, 21 Jun 2023 09:58:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsjc-00FOqi-Rm
	for lore@lore.pengutronix.de; Wed, 21 Jun 2023 09:58:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBsja-0006W6-DL
	for lore@pengutronix.de; Wed, 21 Jun 2023 09:58:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2okH9cXy6SyKZExDZzTyHIFBEmNFXjt6Z7HBhSRnrOI=; b=wZ0qr/kWp1+hCDLQVUWkyuHryk
	7aaV3EqW6UoiWdmzQbDxCFPvVbO8Wz15yJ8FUOSgi/7cqO7K0s0hwa4rGK4EubdfT2TFdg4Mvvqaq
	3Ndy1k8Ddtj+dfYijuG4TjqrXSEuJhtFESOTSN+J1fLv+XVeK8YajQDj9PGNfRdsnvZlpXCg4/AYO
	xI4ItInXgUf4Upl1H9D7xtmGvp8ED9k7u6FdiYFPhxF0wHSrxWsk0O40U3nbPEfsc0YtLVWV9EIoY
	RlIMwxoAsn3f8BPDkRMQ/uFk5rXS6hthRjnLHqBsfKZpmyDhYFpr/xGcKi27Ptx4fFnItbnCsaWV7
	IzKaLMHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsiT-00Dbzk-1W;
	Wed, 21 Jun 2023 07:57:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsiQ-00Dbyk-11
	for barebox@lists.infradead.org;
	Wed, 21 Jun 2023 07:57:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsiP-0006Mq-36; Wed, 21 Jun 2023 09:57:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsiO-0003kO-Si; Wed, 21 Jun 2023 09:57:20 +0200
Date: Wed, 21 Jun 2023 09:57:20 +0200
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20230621075720.GU18491@pengutronix.de>
References: <20230616155042.37958-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230616155042.37958-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_005722_352145_C7943F15 
X-CRM114-Status: GOOD (  19.70  )
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
Subject: Re: [PATCH] scripts: socfpga_get_sequencer: Update file paths and
 include paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 16, 2023 at 04:50:42PM +0100, Ian Abbott wrote:
> Commit ac1404f77491 ("ARM: socfpga: Move mach header files to
> include/mach/socfpga") moved socfpga specific mach header files to
> "include/mach/socfpga" and changed the `#include` directives in the
> source code accordingly.  Update the `socfpga_get_sequencer` script to
> deal with those changes.
> 
> Fixes: ac1404f77491 ("ARM: socfpga: Move mach header files to include/mach/socfpga")
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  scripts/socfpga_get_sequencer | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
> index 5405bfa6ba..d21791eee9 100755
> --- a/scripts/socfpga_get_sequencer
> +++ b/scripts/socfpga_get_sequencer
> @@ -43,7 +43,7 @@ copy_source() {
>  
>  	echo "	Fixing include paths..."
>  	# Fix include pathes
> -	sed -i 's/#include <sdram.h>/#include <mach\/cyclone5-sdram.h>/g' $tgt
> +	sed -i 's/#include <sdram.h>/#include <mach\/socfpga\/cyclone5-sdram.h>/g' $tgt
>  	sed -i 's/#include "sequencer_auto.h"//g' $tgt
>  	sed -i 's/#include "sequencer.h"/#include "cyclone5-sequencer.h"/g' $tgt
>  
> @@ -54,7 +54,7 @@ copy_source() {
>  	sed -i 's/[ \t]\+$//' $tgt
>  
>  	echo "  Running coccinelle cleanups..."
> -	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place arch/arm/mach-socfpga/include/mach
> +	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place include/mach/socfpga
>  
>  	echo "  Cleanup header..."
>  	sed -i 's/^static void rw_mgr_mem_calibrate_eye_diag_aid(void);$//g' $tgt
> @@ -65,20 +65,20 @@ copy_source() {
>  	sed -i 's/^static void rw_mgr_decr_vfifo_auto(uint32_t grp);$//g' $tgt
>  }
>  
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
> -sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c include/mach/socfpga/cyclone5-sequencer.c
> +sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' include/mach/socfpga/cyclone5-sequencer.c
>  
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.h arch/arm/mach-socfpga/include/mach/tclrpt.h
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/sdram_io.h arch/arm/mach-socfpga/include/mach/sdram_io.h
> -cat <<'EOF' >> arch/arm/mach-socfpga/include/mach/sdram_io.h
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h include/mach/socfpga/cyclone5-sequencer.h
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.h include/mach/socfpga/tclrpt.h
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/sdram_io.h include/mach/socfpga/sdram_io.h
> +cat <<'EOF' >> include/mach/socfpga/sdram_io.h
>  	#define write_register(BASE, OFFSET, DATA) \
>  		writel(DATA, ((BASE) + (OFFSET)))
>  	#define read_register(BASE, OFFSET) \
>  		readl((BASE) + (OFFSET))
>  	#define HPS_SDR_BASE 0xffc20000
>  EOF
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/system.h arch/arm/mach-socfpga/include/mach/system.h
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/system.h include/mach/socfpga/system.h
>  
>  echo "DONE"
>  
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


