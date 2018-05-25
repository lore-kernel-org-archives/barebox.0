Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM8tX-0005y6-Ry
 for barebox@lists.infradead.org; Fri, 25 May 2018 09:20:25 +0000
Received: from vsmx002.vodafonemail.xion.oxcs.net (unknown [192.168.75.192])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTP id 82D48D9B5AA
 for <barebox@lists.infradead.org>; Fri, 25 May 2018 09:19:55 +0000 (UTC)
Received: from null (app-30.app.xion.oxcs.net [10.10.1.30])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 70968199C1C
 for <barebox@lists.infradead.org>; Fri, 25 May 2018 09:19:53 +0000 (UTC)
Date: Fri, 25 May 2018 11:19:53 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <847290015.313235.1527239993231@mail.vodafone.de>
MIME-Version: 1.0
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
Subject: barebox for an i586 board
To: barebox@lists.infradead.org

Hi,

I'm trying to build a barebox image for an i586 (Vortex86) based board.

The config file I'm using was derived from the arch/x86/configs/generic_defconfig

The build error I see is:

...
  LD      defaultenv/built-in.o
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  LD      common/built-in.o
  LD      barebox
ld: section .bootstrapping VMA [0000000000007e00,000000000000826b] overlaps section .bootsector VMA [0000000000007c00,0000000000007fff]
make[1]: *** [/tmp/barebox/Makefile:767: barebox] Error 1
make: *** [Makefile:123: _all] Error 2

First of all: does barebox really support booting such a 'normal PC'
without EFI bios ?

If yes can someone suggest me a direction how to fix this ?

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
