Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAwgv-0002wG-Dt
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:19:11 +0000
Date: Tue, 13 Jan 2015 17:16:12 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20150113080258.GX23940@pengutronix.de>
References: <20150113165447.CACE.AA925319@jp.panasonic.com>
 <20150113080258.GX23940@pengutronix.de>
Message-Id: <20150113171612.6AC6.AA925319@jp.panasonic.com>
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
Subject: Re: [PATCH] kbuild: add KBUILD_DEFCONFIG
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Tue, 13 Jan 2015 09:02:58 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Jan 13, 2015 at 04:54:47PM +0900, Masahiro Yamada wrote:
> > Hi Jean-Christophe,
> > 
> > On Tue, 13 Jan 2015 14:53:19 +0800
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > 
> > > 
> > > > On Jan 13, 2015, at 2:46 PM, Masahiro Yamada <yamada.m@jp.panasonic.com> wrote:
> > > > 
> > > > This allows "make ARCH=... defconfig".
> > > > 
> > > > Fox example, you can type "make defconfig" instead of
> > > > "make sandbox_defconfig".
> > > > 
> > > > Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> > > > ---
> > > > 
> > > > arch/arm/Makefile      | 1 +
> > > > arch/blackfin/Makefile | 1 +
> > > > arch/efi/Makefile      | 2 ++
> > > > arch/nios2/Makefile    | 2 ++
> > > > arch/openrisc/Makefile | 2 ++
> > > > arch/sandbox/Makefile  | 1 +
> > > > arch/x86/Makefile      | 2 ++
> > > > 7 files changed, 11 insertions(+)
> > > > 
> > > > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > > > index f06e2a0..9dd983b 100644
> > > > --- a/arch/arm/Makefile
> > > > +++ b/arch/arm/Makefile
> > > > @@ -1,3 +1,4 @@
> > > > +KBUILD_DEFCONFIG := versatilepb_defconfig
> > > 
> > > no sure we need a default config on arm and some other
> > > 
> > > I known we use them on the kernel but here it could result in a broken board
> > > if use not carefully
> > > 
> > > for arch that only have 1 defconfig and will only have one maybe
> > > 
> > 
> > Why could it result in a broken board?  (It seems harmless to me.)
> > 
> > I think it is useful at least for Sandbox and some other arches that
> > have only "generic_defconfig".
> > 
> > It is true that KBUILD_DEFCONFIG is not so useful for ARM.
> > If it is not desired for ARM (and Blackfin), we can drop it, of course.
> 
> I think it makes sense on EFI, x86 and sandbox. On the other
> architectures one must know which board to build, so let's do not
> get others the impression that the generic defconfig produces something
> useful. This also includes nios2 and openrisc. For these two only
> one defconfig exists but I think this is more because these
> architectures have very limited usage.
> 

OK, I have posted v2 where only EFI, x86 and sandbox is changed.

Best Regards
Masahiro Yamada



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
