Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlj0T-0007DB-Mp
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 14:53:14 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 48CDDFFC872
	for <barebox@lists.infradead.org>;
	Tue, 26 Jul 2011 16:53:56 +0200 (CEST)
Date: Tue, 26 Jul 2011 16:35:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110726143548.GH10037@game.jcrosoft.org>
References: <4E2EC796.7070408@googlemail.com> <4E2ECD3A.1060509@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E2ECD3A.1060509@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox compilation with gcc 4.5.2 and ptxdist
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Tue 26 Jul     , Marc Kleine-Budde wrote:
> On 07/26/2011 03:56 PM, Andre Naujoks wrote:
> > Hello.
> > 
> > We are currently trying to compile a barebox with the git version of
> > ptxdist and the git version of the OSELAS generic Toolchain for powerpc.
> > 
> > Also the current 2011.07.0 release of barebox.
> > 
> > We are having some problems during the build, which I think are a result
> > of some changes in gcc's optimizations (since 4.4.something). GCC uses
> > some functions on the ppc platform to optimze the size of the resulting
> > binary, which are only present in the libgcc.a.
> > 
> > The compile stage works fine up tp the last linker step:
> > 
> >   CC      arch/ppc/lib/time.o
> >   AS      arch/ppc/lib/misc.o
> >   CC      arch/ppc/lib/ppclinux.o
> >   CC      arch/ppc/lib/board_data.o
> >   LD      arch/ppc/lib/built-in.o
> >   LD      barebox
> > common/built-in.o: In function `mapset':
> > hush.c:(.text.mapset+0x44): undefined reference to `_restgpr_30_x'
> > common/built-in.o: In function `syntax_err':
> > hush.c:(.text.syntax_err+0x34): undefined reference to `_restgpr_30_x'
> > common/built-in.o: In function `done_command':
> > hush.c:(.text.done_command+0x94): undefined reference to `_restgpr_29_x'
> > common/built-in.o: In function `done_pipe':
> > hush.c:(.text.done_pipe+0x5c): undefined reference to `_restgpr_29_x'
> > common/built-in.o: In function `is_assignment':
> > hush.c:(.text.is_assignment+0x8c): undefined reference to `_restgpr_27_x'
> > common/built-in.o: In function `b_addchr':
> > hush.c:(.text.b_addchr+0x8c): undefined reference to `_restgpr_28_x'
> > common/built-in.o: In function `b_addqchr':
> > hush.c:(.text.b_addqchr+0x78): undefined reference to `_restgpr_29_x'
> > ...
> > 
> > 
> > This goes on for a few pages.
> > 
> > As far as I can see, the possibilities I have here, is to either
> > integrate the missing functions out of the gcc sources into barebox, or
> > make barebox link with libgcc, which seems surprisingly difficult, due
> > to the unfamiliar (to me) build process. A simple LDFLAGS_barebox+=-l..
> > -L.. did not help here.
> > 
> > Am I right with this assumption, or am I missing something else here?
> 
> We don't want to link barebox against libgcc, that's bad style. I
> suggest to port arch/powerpc/lib/crtsavres.S from the linux kernel to
> barebox.
> 
agreed at 100%

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
