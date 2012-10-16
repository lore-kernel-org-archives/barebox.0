Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO3UK-0002Mk-NJ
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 09:31:01 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DA6D510500C1
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 11:37:36 +0200 (CEST)
Date: Tue, 16 Oct 2012 11:28:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121016092839.GJ5803@game.jcrosoft.org>
References: <20121016080209.GA19402@greatfirst.com>
 <20121016084658.GH5803@game.jcrosoft.org>
 <CAB_54W4acHCCot06K9MvK31WU_Hbhsco6MSQQ2hmunBnkHGdcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB_54W4acHCCot06K9MvK31WU_Hbhsco6MSQQ2hmunBnkHGdcA@mail.gmail.com>
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
Subject: Re: sandbox whith oftree on making error
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On 11:17 Tue 16 Oct     , Alexander Aring wrote:
>    Hi,
> 
>    maybe we can add a simulated gpio driver in sandbox?
go a head propose a patch

Best Regards,
J.
> 
>    Regards
>    Alexander Aring
> 
>    2012/10/16 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
>      On 16:02 Tue 16 Oct A  A  , zzs wrote:
>      > my code baseed 7423f13
>      >
>      > when making sandox with command oftree on then I got the flowwing
>      > build error:
>      >
>      > CC A  A  A drivers/of/gpio.o
>      > In file included from
>      /home/zzs/work/repos/barebox/drivers/of/gpio.c:6:0:
>      > /home/zzs/work/repos/barebox/include/gpio.h:4:22: fatal error:
>      asm/gpio.h: No such file or directory
>      > compilation terminated.
>      > make[3]: *** [drivers/of/gpio.o] Error 1
>      > make[2]: *** [drivers/of] Error 2
>      > make[1]: *** [drivers] Error 2
>      > make: *** [_all] Error 2
>      >
>      > My building commandline like this:
>      > A  A  CROSS_COMPILE= ARCH=sandbox make O=objtree sandbox_defconfig
>      > A  A  CROSS_COMPILE= ARCH=sandbox make O=objtree xconfig
>      > A  A  A  A  .... turn oftree on
>      > A  A  CROSS_COMPILE= ARCH=sandbox make O=objtree
>      >
>      > I think this is a bug
>      I'm not sure oftree make sense on sandbox
> 
>      but anyway the sandbox have no gpio support
> 
>      so gpio.c can not be compiled
> 
>      Best Regards,
>      J.
>      _______________________________________________
>      barebox mailing list
>      barebox@lists.infradead.org
>      http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
