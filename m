Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUUn-0007aX-FK
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 15:32:39 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x206so4110037vsx.5
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 08:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAGm1_ktP_E_44J-CuM=Dy7JdLXXturWm9jC9MmYN9aq=ngNvxQ@mail.gmail.com>
 <20200326063614.GO27288@pengutronix.de>
In-Reply-To: <20200326063614.GO27288@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 26 Mar 2020 16:31:47 +0100
Message-ID: <CAGm1_ksknAi_3Srwrzv96y16AQEbmW-7-LOdFFmAnecdwQSG0g@mail.gmail.com>
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
Subject: Re: Cross-compiling target tools
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Mar 26, 2020 at 7:36 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Yegor,
>
> On Wed, Mar 25, 2020 at 11:13:03PM +0100, Yegor Yefremov wrote:
> > How should one compile the target tools like bareboxenv-target etc. I
> > get the following error:
> >
> >  ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make -C debian/build
> > make: Entering directory
> > '/home/user/MyProjects/oss/bootloaders/barebox-upstream/debian/build'
> > make[3]: 'include/generated/mach-types.h' is up to date.
> >   Using /home/user/MyProjects/oss/bootloaders/barebox-upstream as
> > source for kernel
> >   GEN     /home/user/MyProjects/oss/bootloaders/barebox-upstream/debian/build/Makefile
> >   CHK     include/generated/version.h
> >   CHK     include/generated/utsrelease.h
> >   CREATE  include/config.h
> >   CC      scripts/bareboxenv-target
> > /tmp/cc0VGmDE.o: In function `file_action':
> > /home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/../common/environment.c:119:
> > undefined reference to `xzalloc'
> > /tmp/cc0VGmDE.o: In function `concat_path_file':
> > /home/user/MyProjects/oss/bootloaders/barebox-upstream/scripts/bareboxenv.c:79:
>
> bareboxenv.c includes a compiler.h file which has static inline variants
> of xmalloc and xzalloc. I just gave it a test here and it still works as
> expected. Could you verify scripts/compiler.h is included by the
> compiler? If not, what else is included which provides prototypes for
> these functions? If scripts/compiler.h is not included then I would
> expect some undeclared function warnings.

What compiler version do you use? I have gcc 7.4.0 and newer. The
problem seems to be the inline keyword in compiler.h (C99 related).

With these changes I get the tools bareboxenv-target etc. cross-compiled:

diff --git a/scripts/compiler.h b/scripts/compiler.h
index 0891c3bfa..74cd98074 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -113,7 +113,7 @@ typedef uint32_t __u32;
        (void) (&_min1 == &_min2);              \
        _min1 < _min2 ? _min1 : _min2; })

-inline void *xmalloc(size_t size)
+void *xmalloc(size_t size)
 {
        void *p = NULL;

@@ -125,7 +125,7 @@ inline void *xmalloc(size_t size)
        return p;
 }

-inline void *xzalloc(size_t size)
+void *xzalloc(size_t size)
 {
        void *p = xmalloc(size);
        memset(p, 0, size);

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
