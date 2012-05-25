Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXsPP-0002mK-F9
 for barebox@lists.infradead.org; Fri, 25 May 2012 11:10:16 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 96689FF8E04
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 13:13:12 +0200 (CEST)
Date: Fri, 25 May 2012 13:10:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120525111020.GH2202@game.jcrosoft.org>
References: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
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
Subject: Re: Check if valid kernel and/or FS
To: Benoit RAT <benoit@sevensols.com>
Cc: barebox@lists.infradead.org

On 12:08 Fri 25 May     , Benoit RAT wrote:
>    Hy barebox guy,
>    I was wondering if there was a good way to check if I have a correct
>    kernel and/or filesystem in my partition before loading them.
>    If it is not the case then I will check out for valid images in tftpboot
>    or prompt the barebox shell.
>    Regards, 
kernel yes rootfs no

but this not really the right way to do

the best wyay is to use bootcounter with a watchdog


so if after x times your boot is failling you can boot the failsafe or anthink
you want


>    And another question is how can i know that I am using the barebox
>    environment from nand flash instead of the one from a scripts?
in the log if see

envfs: wrong magic on 

which mean you load from the builtin

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
