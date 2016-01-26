Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aO1Bl-0004m4-Ar
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 10:49:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jlu@pengutronix.de>) id 1aO1BO-00083T-1o
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 11:49:10 +0100
Received: from localhost ([127.0.0.1] ident=jlu)
 by ptx.hi.pengutronix.de with esmtp (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1aO1BN-0001ZF-PU
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 11:49:09 +0100
Message-ID: <1453805349.2235.40.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 26 Jan 2016 11:49:09 +0100
In-Reply-To: <CAGm1_kv9-A_HrydZRODtzf-00deEoakxY7r8nSEmO6DcnjGZag@mail.gmail.com>
References: <CAGm1_kv9-A_HrydZRODtzf-00deEoakxY7r8nSEmO6DcnjGZag@mail.gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts/remote: make clean leftovers
To: barebox@lists.infradead.org

On Di, 2016-01-26 at 11:04 +0100, Yegor Yefremov wrote:
> After performing make distclean I've discovered following files being removed:
> 
> Changes not staged for commit:
>   (use "git add/rm <file>..." to update what will be committed)
>   (use "git checkout -- <file>..." to discard changes in working directory)
> 
>         deleted:    scripts/remote/__init__.py
>         deleted:    scripts/serial/tools/__init__.py
>         deleted:    scripts/serial/urlhandler/__init__.py
> 
> What should actually happen to these files?

Python uses these files to recognize the directory as containing a
module, so we need to keep them.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
