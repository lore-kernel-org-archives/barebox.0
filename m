Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUvaW-0004PP-Hq
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 13:52:30 +0000
Message-ID: <1499781122.5060.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Jul 2017 15:52:02 +0200
In-Reply-To: <20170706142506.790-1-s.trumtrar@pengutronix.de>
References: <20170706142506.790-1-s.trumtrar@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] scripts: socfpga_get_sequencer: update importer
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 06.07.2017, 16:25 +0200 schrieb Steffen Trumtrar:
> Adjust two header files that where renamed in the meantime.
> While at it, also remove trailing whitespace and cleanup the
> script a little.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks.

> ---
>  scripts/socfpga_get_sequencer | 25 +++++++++----------------
>  1 file changed, 9 insertions(+), 16 deletions(-)
> 
> diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
> index e0f2e6de2abd..36f67498bcbb 100755
> --- a/scripts/socfpga_get_sequencer
> +++ b/scripts/socfpga_get_sequencer
> @@ -41,14 +41,18 @@ copy_source() {
>  	sed -i 's/alt_8/int8_t/g' $tgt
>  	sed -i 's/#include "alt_types.h"//g' $tgt
>  
> -	echo "	Fixing include pathes..."
> +	echo "	Fixing include paths..."
>  	# Fix include pathes
> -	sed -i 's/#include <sdram.h>/#include <mach\/sdram.h>/g' $tgt
> +	sed -i 's/#include <sdram.h>/#include <mach\/cyclone5-sdram.h>/g' $tgt
>  	sed -i 's/#include "sequencer_auto.h"//g' $tgt
> +	sed -i 's/#include "sequencer.h"/#include "cyclone5-sequencer.h"/g' $tgt
>  
>  	echo "	Automated readability fixup..."
>  	indent -npro -kr -i8 -ts8 -sob -l100 -ss -ncs -cp1 -il0 $tgt
>  
> +	echo "  Whitespace cleanup..."
> +	sed -i 's/[ \t]\+$//' $tgt
> +
>  	echo "  Running coccinelle cleanups..."
>  	spatch -sp_file scripts/coccinelle/misc/altera_sequencer.cocci -in_place arch/arm/mach-socfpga/include/mach
>  
> @@ -61,19 +65,10 @@ copy_source() {
>  	sed -i 's/^static void rw_mgr_decr_vfifo_auto(uint32_t grp);$//g' $tgt
>  }
>  
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/sequencer.c
> -sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' arch/arm/mach-socfpga/include/mach/sequencer.c
> -
> -cat <<'EOF' > arch/arm/mach-socfpga/include/mach/sequencer_defines.h
> -#define TINIT_CNTR1_VAL 32
> -#define TINIT_CNTR2_VAL 32
> -#define TINIT_CNTR0_VAL 99
> -#define TRESET_CNTR1_VAL 99
> -#define TRESET_CNTR2_VAL 10
> -#define TRESET_CNTR0_VAL 99
> -EOF
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.c arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
> +sed -i 's/static int sdram_calibration(void)/static int socfpga_mem_calibration(void)/g' arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.c
>  
> -copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h arch/arm/mach-socfpga/include/mach/sequencer.h
> +copy_source ${ubootsrc}/board/altera/socfpga/sdram/sequencer.h arch/arm/mach-socfpga/include/mach/cyclone5-sequencer.h
>  copy_source ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.h arch/arm/mach-socfpga/include/mach/tclrpt.h
>  copy_source ${ubootsrc}/board/altera/socfpga/sdram/sdram_io.h arch/arm/mach-socfpga/include/mach/sdram_io.h
>  cat <<'EOF' >> arch/arm/mach-socfpga/include/mach/sdram_io.h
> @@ -85,7 +80,5 @@ cat <<'EOF' >> arch/arm/mach-socfpga/include/mach/sdram_io.h
>  EOF
>  copy_source ${ubootsrc}/board/altera/socfpga/sdram/system.h arch/arm/mach-socfpga/include/mach/system.h
>  
> -#unifdef -f ${sequencer_defines} ${ubootsrc}/board/altera/socfpga/sdram/tclrpt.c -o arch/arm/mach-socfpga/include/mach/tclrpt.c
> -
>  echo "DONE"
>  



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
