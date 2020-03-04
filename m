Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092255067.outbound.protection.outlook.com
 ([40.92.255.67] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9L4i-0001To-Fs
 for barebox@lists.infradead.org; Wed, 04 Mar 2020 03:52:02 +0000
From: zhou qi <atmgnd@outlook.com>
Date: Wed, 4 Mar 2020 03:51:52 +0000
Message-ID: <HK0PR02MB3716EB73F0D1E1FE54E843FDC9E50@HK0PR02MB3716.apcprd02.prod.outlook.com>
Content-Language: zh-CN
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
Subject: can not compile on ubuntu 18.04 lts for x86
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I compile the lastest code : https://github.com/saschahauer/barebox.git using the following commands:

export ARCH=x86
make menuconfig # change to bios boot
make

then errors:

  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CREATE  include/config.h
  CHK     include/generated/compile.h
  ENV     defaultenv/barebox_default_env
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      common/version.o
  LD      common/built-in.o
  LD      barebox
arch/x86/lib/barebox.lds:147: nonconstant expression for load base
Makefile:785: recipe for target 'barebox' failed
make: *** [barebox] Error 1


thanks.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
