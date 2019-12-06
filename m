Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idBpA-0007f8-Mt
 for barebox@lists.infradead.org; Fri, 06 Dec 2019 11:31:06 +0000
Date: Fri, 6 Dec 2019 12:31:00 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20191206113100.yeop7bqjvolfujl2@pengutronix.de>
References: <20191203091202.cuamocvdyxtr5b6u@pengutronix.de>
 <20191205214550.21212-1-flokli@flokli.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205214550.21212-1-flokli@flokli.de>
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
Subject: Re: [PATCH v2 1/4] scripts: use #!/usr/bin/env bash shebang instead
 of #!/bin/bash
To: Florian Klink <flokli@flokli.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 05, 2019 at 10:45:47PM +0100, Florian Klink wrote:
> Some distributions might not have bash in /bin, but in $PATH.
> 
> Using #!/usr/bin/env bash solves this, and is consistent with how the
> perl and python shebangs look like in the tree.

Your Signed-off-by tag is missing on all patches. Please add it to
certify that your changes are distributable under the respective project
license (i.e. GPL-2.0-only). See <https://developercertificate.org/> and
./COPYING in the barebox tree for more info.

 - Roland

> ---
>  scripts/canon-a1100-image        | 4 +++-
>  scripts/check_size               | 2 +-
>  scripts/dfuboot.sh               | 2 +-
>  scripts/extract_symbol_offset    | 2 +-
>  scripts/gen-dtb-s                | 2 +-
>  scripts/genenv                   | 2 +-
>  scripts/socfpga_get_sequencer    | 2 +-
>  scripts/socfpga_import_preloader | 2 +-
>  scripts/socfpga_xml_to_config.sh | 2 +-
>  9 files changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/canon-a1100-image b/scripts/canon-a1100-image
> index 6c08d7493..17fd47373 100755
> --- a/scripts/canon-a1100-image
> +++ b/scripts/canon-a1100-image
> @@ -1,4 +1,6 @@
> -#!/bin/bash -e
> +#!/usr/bin/env bash
> +
> +set -e
>  
>  IFILE=$1
>  OFILE=$2
> diff --git a/scripts/check_size b/scripts/check_size
> index 8530435d3..76608eccc 100755
> --- a/scripts/check_size
> +++ b/scripts/check_size
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  symbol="$1"
>  file="$2"
> diff --git a/scripts/dfuboot.sh b/scripts/dfuboot.sh
> index 524113b61..9847579ce 100755
> --- a/scripts/dfuboot.sh
> +++ b/scripts/dfuboot.sh
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  DEVICETREE=
>  KERNEL=
> diff --git a/scripts/extract_symbol_offset b/scripts/extract_symbol_offset
> index 78b866830..d0ea22434 100755
> --- a/scripts/extract_symbol_offset
> +++ b/scripts/extract_symbol_offset
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  symbol="$1"
>  file="$2"
> diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
> index b2dd253c2..0649247f9 100755
> --- a/scripts/gen-dtb-s
> +++ b/scripts/gen-dtb-s
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  name=$1
>  dtb=$2
> diff --git a/scripts/genenv b/scripts/genenv
> index 5ebe69963..454f2327b 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  # Generate the default environment file from a list of directories
>  # usage: genenv <basedir> <objdir> <target> <dir>...
> diff --git a/scripts/socfpga_get_sequencer b/scripts/socfpga_get_sequencer
> index 36f67498b..5405bfa6b 100755
> --- a/scripts/socfpga_get_sequencer
> +++ b/scripts/socfpga_get_sequencer
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  if [ "$#" -lt "2" ]
>  then
> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
> index 6c748fadb..23e3c380d 100755
> --- a/scripts/socfpga_import_preloader
> +++ b/scripts/socfpga_import_preloader
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  if [ "$#" -lt "2" ]
>  then
> diff --git a/scripts/socfpga_xml_to_config.sh b/scripts/socfpga_xml_to_config.sh
> index 7e22ebb9e..3bb0dd283 100755
> --- a/scripts/socfpga_xml_to_config.sh
> +++ b/scripts/socfpga_xml_to_config.sh
> @@ -1,4 +1,4 @@
> -#!/bin/bash
> +#!/usr/bin/env bash
>  
>  ## TODO:
>  ## - read in mpuclk and nocclk, must be calculated by hand at the moment
> -- 
> 2.24.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
