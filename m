Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROQLL-0003Bp-NE
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 08:50:44 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id pAA8odpO018445
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
 for <barebox@lists.infradead.org>; Thu, 10 Nov 2011 02:50:41 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id pAA8odgk011623
 for <barebox@lists.infradead.org>; Thu, 10 Nov 2011 14:20:39 +0530 (IST)
From: "Premi, Sanjeev" <premi@ti.com>
Date: Thu, 10 Nov 2011 08:50:38 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A8903B69C@DBDE01.ent.ti.com>
References: <1318417430-2039-1-git-send-email-premi@ti.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89BF50@DBDE01.ent.ti.com>
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89BF50@DBDE01.ent.ti.com>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH v3] omap: Unify run_shell() in xload configuration
To: "Premi, Sanjeev" <premi@ti.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Premi, Sanjeev
> Sent: Thursday, October 27, 2011 7:42 PM
> To: barebox@lists.infradead.org
> Subject: RE: [PATCH v3] omap: Unify run_shell() in xload configuration
> 
> > -----Original Message-----
> > From: Premi, Sanjeev 
> > Sent: Wednesday, October 12, 2011 4:34 PM
> > To: barebox@lists.infradead.org
> > Cc: Premi, Sanjeev
> > Subject: [PATCH v3] omap: Unify run_shell() in xload configuration
> > 
> > Currently, there are multiple definitions of run_shell()
> > for each board that can be build in "xload" configuration.
> > Now there is only one function used by all boards.
> > 
> > The functions defined in xload.c are used only when "xload"
> > configuration used; but it gets compiled unconditionally.
> > This has been fixed as well.
> > 
> > Signed-off-by: Sanjeev Premi <premi@ti.com>
> > ---
> > 
> >  Change in v3:
> >     Added function omap_bootsrc() to replace the #ifdef
> >     around the switch-case.
> > 
> >  Change in v2:
> >     Fixed the typo in the subject s/iomap/omap/
> >     ...observed when mail reached my inbox :(
> > 
> >  Only build tested with these commands:
> >    make distclean ; make omap3530_beagle_defconfig ; make ;
> >    make distclean ; make omap3530_beagle_xload_defconfig ; make ;
> >    make distclean ; make panda_xload_defconfig ; make ;
> >    make distclean ; make panda_defconfig ; make ;
> >    make distclean ; make pcm049_defconfig ; make ;
> >    make distclean ; make pcm049_xload_defconfig ; make ;
> > 
> > 
> >  arch/arm/boards/omap/board-beagle.c |   31 
> --------------------------
> >  arch/arm/boards/panda/board.c       |   19 ----------------
> >  arch/arm/boards/pcm049/board.c      |   30 
> -------------------------
> >  arch/arm/mach-omap/Makefile         |    3 +-
> >  arch/arm/mach-omap/xload.c          |   41 
> > +++++++++++++++++++++++++++++++++++
> >  5 files changed, 43 insertions(+), 81 deletions(-)
> > 
> 
> Jean-Christophe,
> 
>   Just wanted to check if this patch takes care of your comment[1].
> 
>   [1] 
> http://lists.infradead.org/pipermail/barebox/2011-October/004752.html
> 
> ~sanjeev

Another ping.


> 
> [snip]...[snip]
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
