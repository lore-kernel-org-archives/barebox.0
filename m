Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7YQa-0003Vn-DD
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 23:16:00 +0000
Received: by mail-wi0-f182.google.com with SMTP id d1so2149542wiv.9
 for <barebox@lists.infradead.org>; Wed, 16 Jul 2014 16:15:38 -0700 (PDT)
Message-ID: <53C70795.5050308@gmail.com>
Date: Thu, 17 Jul 2014 01:15:33 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Update/include some functions from the Kernel
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 07/15/2014 03:49 PM, Sascha Hauer wrote:
> This adds/updates some lowlevel bitmap/bitop stuff from the
> Kernel. Needed by upcoming USB updates.

Sascha,

just curious what "USB updates" there are?

I am about to bring up PCIe attached xHCI on Mirabox. Not that
I am eagerly implementing SS but HS first.

When done, I will clean the mess up and see what could be done
to USB, too.

Sebastian

> ----------------------------------------------------------------
> Sascha Hauer (5):
>       include: Add DECLARE_BITMAP from kernel
>       include: Add round_up/round_down macros from kernel
>       include: Add foreign endianess adding functions from kernel
>       lib: Add bitmap functions from kernel
>       include: update bitop functions from kernel
> 
>  include/asm-generic/bitops/hweight.h |  15 +
>  include/linux/bitmap.h               | 285 ++++++++++++
>  include/linux/bitops.h               | 214 ++++++++-
>  include/linux/byteorder/generic.h    |  29 ++
>  include/linux/kernel.h               |  13 +
>  include/linux/types.h                |   3 +
>  lib/Makefile                         |   1 +
>  lib/bitmap.c                         | 839 +++++++++++++++++++++++++++++++++++
>  8 files changed, 1398 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/bitmap.h
>  create mode 100644 lib/bitmap.c
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
