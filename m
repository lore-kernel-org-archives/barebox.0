Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZS6k-0003Ng-Iv
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 20:01:47 +0000
Date: Fri, 16 Nov 2012 15:01:41 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121116195703.GC8327@game.jcrosoft.org>
Message-ID: <alpine.DEB.2.02.1211161501001.5043@oneiric>
References: <alpine.DEB.2.02.1211161416260.30355@oneiric>
 <20121116195703.GC8327@game.jcrosoft.org>
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
Subject: Re: after "git pull", building for beagle complains about missing
 "lzop"
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, 16 Nov 2012, Jean-Christophe PLAGNIOL-VILLARD wrote:

> On 14:18 Fri 16 Nov     , Robert P. J. Day wrote:
> >
> >   after i "git pull"ed all the recent updates and tried to rebuild
> > from scratch for my beagle xm, the barebox build failed with:
> >
> >   OBJCOPY barebox.bin
> >   LDS     arch/arm/pbl/zbarebox.lds
> >   LZO     arch/arm/pbl/piggy.lzo
> > /bin/sh: lzop: command not found
> > make[2]: *** [arch/arm/pbl/piggy.lzo] Error 1
> > make[1]: *** [zbarebox.bin] Error 2
> > make: *** [_all] Error 2
> > $
> >
> >   i've never had "lzop" installed on this system before and never had
> > a complaint, so i'm assuming something about the default config has
> > changed that suddenly requires lzop, is that correct?
>
> yes because we now compress barebox
> as you see in the log LZO

  yes, i did notice that shortly thereafter, should have perused the
log first before asking.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
