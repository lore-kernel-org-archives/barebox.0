Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.98.mail-out.ovh.net ([188.165.43.167]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qd3ZY-000716-B0
	for barebox@lists.infradead.org; Sat, 02 Jul 2011 17:01:37 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id E455A4B2DB0
	for <barebox@lists.infradead.org>;
	Sat,  2 Jul 2011 19:01:08 +0200 (CEST)
Date: Sat, 2 Jul 2011 18:46:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110702164600.GB28000@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<4E0F2158.4050505@pobox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E0F2158.4050505@pobox.com>
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
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Shinya Kuribayashi <skuribay@pobox.com>
Cc: barebox@lists.infradead.org

On 22:47 Sat 02 Jul     , Shinya Kuribayashi wrote:
> On 6/29/11 12:24 PM, Antony Pavlov wrote:
> >Barebox can use only uncached memory.
> 
> In addition to super-summarized one-liner commit log, I'd like to see
> the reason why it is.
> 
> >Signed-off-by: Antony Pavlov<antonynpavlov@gmail.com>
> >---
> >  arch/mips/Kconfig                   |   54 ++
> >  arch/mips/Makefile                  |   63 +++
> >  arch/mips/boot/Makefile             |    5 +
> >  arch/mips/boot/entry.c              |   79 +++
> >  arch/mips/boot/head.S               |  233 ++++++++
> >  arch/mips/boot/reset.c              |   32 ++
> 
> Is there any reason why head.S, not start.S?  Other archs in the tree
> name it start*.[cS].
> 
> >  arch/mips/include/asm/barebox.h     |   24 +
> >  arch/mips/include/asm/bitops.h      |   32 ++
> >  arch/mips/include/asm/byteorder.h   |   30 +
> >  arch/mips/include/asm/common.h      |   29 +
> >  arch/mips/include/asm/elf.h         |   30 +
> >  arch/mips/include/asm/io.h          |   73 +++
> >  arch/mips/include/asm/mipsregs.h    |  988 +++++++++++++++++++++++++++++++++++
> >  arch/mips/include/asm/module.h      |   36 ++
> >  arch/mips/include/asm/posix_types.h |   48 ++
> >  arch/mips/include/asm/regdef.h      |  100 ++++
> >  arch/mips/include/asm/sections.h    |    1 +
> >  arch/mips/include/asm/sgidefs.h     |   44 ++
> >  arch/mips/include/asm/string.h      |   31 ++
> >  arch/mips/include/asm/swab.h        |   59 ++
> >  arch/mips/include/asm/types.h       |   44 ++
> >  arch/mips/include/mach/debug_ll.h   |   35 ++
> 
> And I would like to know where these kernel headers from.  If it's the
> Linux kernel, which version they're based on, and what modifications are
> made for barebox.  Such information is useful when we add/remove bits in
> the future.  This is why I did for my patches in this regard in a careful
> manner.
> 
> If it's from U-Boot tree,it's bad idea and let's redo from the scratch.
> Starting small is good, starting based on U-Boot is not good in any area.

100% agreed

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
