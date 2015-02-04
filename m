Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJ2mN-0006lf-4W
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 16:26:15 +0000
Received: by mail-wi0-f174.google.com with SMTP id n3so33067912wiv.1
 for <barebox@lists.infradead.org>; Wed, 04 Feb 2015 08:25:52 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Feb 2015 01:25:52 +0900
Message-ID: <CAMhH57R8UDZRL8B36RKU4s4eyzTdANmS5TQriRtUYquogw4w7A@mail.gmail.com>
From: Masahiro YAMADA <yamada.m@jp.panasonic.com>
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
Subject: How to build barebox for NIOS2
To: barebox@lists.infradead.org

Hi,


I can't build barebox for NIOS2.


I am using Soucery tool chain which is available at:
http://www.mentor.com/embedded-software/sourcery-tools/sourcery-codebench/editions/lite-edition/


I can build Linux and U-Boot with it,
but I can't for barebox.




$ make ARCH=nios2 generic_defconfig && make ARCH=nios2
CROSS_COMPILE=nios2-linux-gnu-

 [ snip ]

  LD      barebox
common/built-in.o: In function `mem_malloc_start':
(.text+0x0): warning: Unable to reach (null) (at 0xc1fb1188) from the
global pointer (at 0x00000000) because the offset (-1040510584) is out
of the allowed range, -32678 to 32767.



I tried another tool-chain, but I got the same link error.

How can we solve this?



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
