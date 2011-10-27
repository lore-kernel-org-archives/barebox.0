Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJQgf-000417-6z
	for barebox@lists.infradead.org; Thu, 27 Oct 2011 14:12:05 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id p9REC0nH031241
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 27 Oct 2011 09:12:02 -0500
Received: from dbde70.ent.ti.com (localhost [127.0.0.1])
	by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9REBxKv024831
	for <barebox@lists.infradead.org>; Thu, 27 Oct 2011 19:42:00 +0530 (IST)
From: "Premi, Sanjeev" <premi@ti.com>
Date: Thu, 27 Oct 2011 14:11:58 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89BF50@DBDE01.ent.ti.com>
References: <1318417430-2039-1-git-send-email-premi@ti.com>
In-Reply-To: <1318417430-2039-1-git-send-email-premi@ti.com>
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
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Premi, Sanjeev 
> Sent: Wednesday, October 12, 2011 4:34 PM
> To: barebox@lists.infradead.org
> Cc: Premi, Sanjeev
> Subject: [PATCH v3] omap: Unify run_shell() in xload configuration
> 
> Currently, there are multiple definitions of run_shell()
> for each board that can be build in "xload" configuration.
> Now there is only one function used by all boards.
> 
> The functions defined in xload.c are used only when "xload"
> configuration used; but it gets compiled unconditionally.
> This has been fixed as well.
> 
> Signed-off-by: Sanjeev Premi <premi@ti.com>
> ---
> 
>  Change in v3:
>     Added function omap_bootsrc() to replace the #ifdef
>     around the switch-case.
> 
>  Change in v2:
>     Fixed the typo in the subject s/iomap/omap/
>     ...observed when mail reached my inbox :(
> 
>  Only build tested with these commands:
>    make distclean ; make omap3530_beagle_defconfig ; make ;
>    make distclean ; make omap3530_beagle_xload_defconfig ; make ;
>    make distclean ; make panda_xload_defconfig ; make ;
>    make distclean ; make panda_defconfig ; make ;
>    make distclean ; make pcm049_defconfig ; make ;
>    make distclean ; make pcm049_xload_defconfig ; make ;
> 
> 
>  arch/arm/boards/omap/board-beagle.c |   31 --------------------------
>  arch/arm/boards/panda/board.c       |   19 ----------------
>  arch/arm/boards/pcm049/board.c      |   30 -------------------------
>  arch/arm/mach-omap/Makefile         |    3 +-
>  arch/arm/mach-omap/xload.c          |   41 
> +++++++++++++++++++++++++++++++++++
>  5 files changed, 43 insertions(+), 81 deletions(-)
> 

Jean-Christophe,

  Just wanted to check if this patch takes care of your comment[1].

  [1] http://lists.infradead.org/pipermail/barebox/2011-October/004752.html

~sanjeev

[snip]...[snip]

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
