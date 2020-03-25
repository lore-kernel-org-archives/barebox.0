Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHEHZ-00057H-19
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 22:13:55 +0000
Received: by mail-ua1-x932.google.com with SMTP id g24so1392083uan.10
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2020 15:13:52 -0700 (PDT)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 25 Mar 2020 23:13:03 +0100
Message-ID: <CAGm1_ktP_E_44J-CuM=Dy7JdLXXturWm9jC9MmYN9aq=ngNvxQ@mail.gmail.com>
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
Subject: Cross-compiling target tools
To: barebox <barebox@lists.infradead.org>

How should one compile the target tools like bareboxenv-target etc. I
get the following error:

 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -C debian/build
make: Entering directory
'/home/user/MyProjects/oss/bootloaders/barebox-upstream/debian/build'
make[3]: 'include/generated/mach-types.h' is up to date.
  Using /home/user/MyProjects/oss/bootloaders/barebox-upstream as
source for kernel
  GEN     /home/user/MyProjects/oss/bootloaders/barebox-upstream/debian/build/Makefile
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CREATE  include/config.h
  CC      scripts/bareboxenv-target
/tmp/cc0VGmDE.o: In function `file_action':
/home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/../common/environment.c:119:
undefined reference to `xzalloc'
/tmp/cc0VGmDE.o: In function `concat_path_file':
/home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/bareboxenv.c:79:
undefined reference to `xmalloc'
/tmp/cc0VGmDE.o: In function `envfs_save':
/home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/../common/environment.c:291:
undefined reference to `xzalloc'
/tmp/cc0VGmDE.o: In function `envfs_load':
/home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/../common/environment.c:594:
undefined reference to `xmalloc'
collect2: error: ld returned 1 exit status
/home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/Makefile:58:
recipe for target 'scripts/bareboxenv-target' failed
make[3]: *** [scripts/bareboxenv-target] Error 1
/home/user/MyProjects/oss/bootloaders/barebox-upstream/Makefile:426:
recipe for target 'scripts' failed
make[2]: *** [scripts] Error 2
Makefile:123: recipe for target '_all' failed
make[1]: *** [_all] Error 2
Makefile:24: recipe for target '__sub-make' failed
make: *** [__sub-make] Error 2

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
