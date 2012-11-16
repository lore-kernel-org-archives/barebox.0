Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZS4B-0003EJ-Vo
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 19:59:08 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 80DADFF9D6F
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 21:10:12 +0100 (CET)
Date: Fri, 16 Nov 2012 20:57:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121116195703.GC8327@game.jcrosoft.org>
References: <alpine.DEB.2.02.1211161416260.30355@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211161416260.30355@oneiric>
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
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 14:18 Fri 16 Nov     , Robert P. J. Day wrote:
> 
>   after i "git pull"ed all the recent updates and tried to rebuild
> from scratch for my beagle xm, the barebox build failed with:
> 
>   OBJCOPY barebox.bin
>   LDS     arch/arm/pbl/zbarebox.lds
>   LZO     arch/arm/pbl/piggy.lzo
> /bin/sh: lzop: command not found
> make[2]: *** [arch/arm/pbl/piggy.lzo] Error 1
> make[1]: *** [zbarebox.bin] Error 2
> make: *** [_all] Error 2
> $
> 
>   i've never had "lzop" installed on this system before and never had
> a complaint, so i'm assuming something about the default config has
> changed that suddenly requires lzop, is that correct?

yes because we now compress barebox
as you see in the log LZO

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
