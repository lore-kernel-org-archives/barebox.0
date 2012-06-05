Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sbjzf-0004dL-9v
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 02:59:40 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C6279FF87E6
 for <barebox@lists.infradead.org>; Tue,  5 Jun 2012 05:03:05 +0200 (CEST)
Date: Tue, 5 Jun 2012 04:59:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120605025949.GY3377@game.jcrosoft.org>
References: <CAHvDM_dZOmQWYt2JKd7dRMhTJx08ntCeM+gDPuc9bLmBRQVdBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHvDM_dZOmQWYt2JKd7dRMhTJx08ntCeM+gDPuc9bLmBRQVdBg@mail.gmail.com>
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
Subject: Re: Loading Cpio (gz) image as rootfs
To: Benoit RAT <benoit@sevensols.com>
Cc: barebox@lists.infradead.org

On 14:21 Mon 04 Jun     , Benoit RAT wrote:
>    Hy everybody,
>    I was wondering if it was possible to load a cpio.gz image as rootfs! (I
>    think it is the kernel that load it so it should not be a problem)
>    however I don't know how to pass the arguments.
>    Here you can find the commands, that i am using:
>    addpart /dev/mem  8M@0x71000000(kernel);
>    tftp zImage /dev/mem.kernel
>    addpart /dev/mem  32M@0x72000000(fs)
>    tftp image.cpio.gz /dev/mem.fs 
>    bootargs="$bootargs root=/dev/ram0 initrd=0x72000000"
>    bootz /dev/mem.kernel
btw do not use bootz but bootm

if you want to use a zimage and cpio.gz directly you needt to use -r option

Best Regards,
J.
>    Regards,
>    --
>    [IMG] [IMG]
>    Benoit RAT LAMY
> 
>    Engineer (Sw) \ Ingeniero (Sw)
> 
>    fix. (+34) 958 285 024
> 
>    cel. (+34) 617 989 123
> 
>    e-mail: benoit@sevensols.com
> 
>    www.sevensols.com / www.sevensecurity.es
> 
>    _________________________________
> 
>    C/ Baza, parcela 19 Nave 3  \ Poligono Ind. Juncaril \
> 
>    18210 - PELIGROS - GRANADA *SPAIN

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
