Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22d.google.com ([2607:f8b0:4002:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwTkp-0003SV-HC
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 11:39:56 +0000
Received: by ykba77 with SMTP id a77so43524232ykb.2
 for <barebox@lists.infradead.org>; Wed, 11 Nov 2015 03:39:34 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 11 Nov 2015 12:39:14 +0100
Message-ID: <CAGm1_ktg_gmMN41X0v5h_ShO8FpYPFE_NHvhx=on8tZ8G-HtMA@mail.gmail.com>
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
Subject: Re: [RFC 0/4] FIT Support
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 12, 2015 at 3:39 PM, Jan Luebbe <jlu@pengutronix.de> wrote:
> Hi,
>
> this is the current work-in-progress state of my FIT support patches.
> The FIT loading code has basically been rewritten from scratch, as the
> original U-Boot code uses libfdt and barebox's DT support works on an
> in-memory tree.
>
> These patches apply on v2015.03.0.
> The two patches from Sascha are required for the basic RSA support.
> The third patch adds FIT support.
> The fourth patch contains some test data to use in the sandbox.
>
> $ ./barebox -i key.dtb -i sign-configs.itb
> add file key.dtb()
> add file sign-configs.itb()
>
> barebox 2015.03.0-00005-g574d35e191f7-dirty #81 Thu Mar 12 14:57:13 CET 2015
>
> Board: barebox sandbox
> ...
> Hit any key to stop autoboot:  3
> barebox@barebox sandbox:/ oftree -l /dev/fd0
> barebox@barebox sandbox:/ bootm /dev/fd1
>
> Loading open firmware Device Tree flattened Binary '/dev/fd1'
> FIT '/dev/fd1': 'Chrome OS kernel image with one or more FDT blobs'
> FIT configuration 'conf@1' (no description)
> sig OK
> FIT image 'kernel@1' (no description)
> hash OK
> FIT image 'fdt@1': 'snow'
> hash OK
>
> Jan Luebbe (2):
>   FIT: add FIT image support
>   FIT: add test config and data [do not merge]
>
> Sascha Hauer (2):
>   digest: Make filename arguments const
>   Add rsa support
>
>  arch/arm/lib/bootm.c                   |  74 +++++
>  arch/sandbox/configs/sandbox_defconfig |  33 +-
>  commands/Kconfig                       |   8 +
>  common/Kconfig                         |   7 +
>  common/Makefile                        |   1 +
>  common/digest.c                        |   8 +-
>  common/image-fit.c                     | 585 +++++++++++++++++++++++++++++++++
>  crypto/Kconfig                         |   3 +
>  crypto/Makefile                        |   1 +
>  crypto/rsa.c                           | 411 +++++++++++++++++++++++
>  include/asm-generic/errno.h            |   5 +
>  include/digest.h                       |   8 +-
>  include/image-fit.h                    |  42 +++
>  include/rsa.h                          |  54 +++
>  key.dtb                                | Bin 0 -> 1023 bytes
>  key.dts                                |  27 ++
>  sign-configs.itb                       | Bin 0 -> 2453 bytes
>  17 files changed, 1247 insertions(+), 20 deletions(-)
>  create mode 100644 common/image-fit.c
>  create mode 100644 crypto/rsa.c
>  create mode 100644 include/image-fit.h
>  create mode 100644 include/rsa.h
>  create mode 100644 key.dtb
>  create mode 100644 key.dts
>  create mode 100644 sign-configs.itb
>
> --
> 2.1.4

What the state of FIT support in Barebox?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
