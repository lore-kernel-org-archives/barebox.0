Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x243.google.com ([2607:f8b0:400d:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK6eE-0002Fh-UO
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:50:49 +0000
Received: by mail-qk0-x243.google.com with SMTP id e124so16046967qkc.3
 for <barebox@lists.infradead.org>; Fri, 15 Jan 2016 07:50:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
References: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 15 Jan 2016 16:50:05 +0100
Message-ID: <CAGm1_kutQh+y8joUAzwqtdXzzdbX=hC55ZKx+fmK09HGJ6gwKQ@mail.gmail.com>
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
Subject: Re: [PATCH v3] FIT support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 15, 2016 at 4:07 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> This is the third version of the FIT image support. Changes
> to last series include:
>
> - Integrate FIT support more deeply into bootm remove complexity
>   from the architecture handlers
> - Cleanup bootm support
> - Add support for configuration names as suggested by Yegor Yefremov
> - Allow to boot unsigned FIT images
>
> It's time for a weekend now, so I send out what I have now. This series
> could use some more testing before it gets merged, so I'll do that next
> week before merging it. In the meantime everyone else is invited for
> testing aswell ;)
>
> Sascha
>
> ----------------------------------------------------------------
> Jan Luebbe (1):
>       bootm: add initial FIT support
>
> Sascha Hauer (12):
>       ARM: zImage: add missing free() in appended device tree code
>       bootm: Do not call uimage_close twice
>       bootm: introduce bootm_get_os_size
>       bootm: use names instead of numbers for image parts
>       ARM: bootm: Use kernel handler to start barebox image
>       bootm: Push dryrun to handlers
>       bootm: move initrd code together
>       bootm: move oftree code together
>       bootm: Initialize bootm_data defaults in single place
>       crypto: add digest_alloc_by_algo()
>       crypto: add RSA support
>       bootm: make verifying/hashing configurable
>
>  arch/arm/crypto/sha1_glue.c        |   1 +
>  arch/arm/crypto/sha256_glue.c      |   2 +
>  arch/arm/lib/bootm.c               |  52 ++--
>  arch/arm/mach-omap/omap_generic.c  |   5 +
>  arch/blackfin/lib/blackfin_linux.c |   3 +
>  arch/efi/efi/efi-image.c           |   9 +-
>  arch/mips/lib/bootm.c              |   5 +
>  arch/nios2/lib/bootm.c             |   3 +
>  arch/ppc/lib/ppclinux.c            |   3 +
>  commands/Kconfig                   |  22 ++
>  commands/boot.c                    |  14 +-
>  commands/bootm.c                   |  46 +--
>  common/Kconfig                     |   9 +
>  common/Makefile                    |   1 +
>  common/bootm.c                     | 469 +++++++++++++++++-------------
>  common/image-fit.c                 | 581 +++++++++++++++++++++++++++++++++++++
>  crypto/Kconfig                     |   3 +
>  crypto/Makefile                    |   1 +
>  crypto/digest.c                    |  43 ++-
>  crypto/md5.c                       |   1 +
>  crypto/rsa.c                       | 420 +++++++++++++++++++++++++++
>  crypto/sha1.c                      |   1 +
>  crypto/sha2.c                      |   2 +
>  crypto/sha4.c                      |   2 +
>  include/asm-generic/errno.h        |   5 +
>  include/boot.h                     |  28 +-
>  include/digest.h                   |  23 ++
>  include/image-fit.h                |  45 +++
>  include/rsa.h                      |  54 ++++
>  29 files changed, 1575 insertions(+), 278 deletions(-)
>  create mode 100644 common/image-fit.c
>  create mode 100644 crypto/rsa.c
>  create mode 100644 include/image-fit.h
>  create mode 100644 include/rsa.h

Have tested on a am335x machine without signature verification.

Tested-by: Yegor Yefremov <yegorslists@googlemail.com>

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
