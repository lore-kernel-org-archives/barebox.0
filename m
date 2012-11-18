Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta7qD-0005q3-VQ
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 16:35:31 +0000
Received: from mail407.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E1129FF88AE
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 17:39:30 +0100 (CET)
Date: Sun, 18 Nov 2012 17:26:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121118162637.GF8327@game.jcrosoft.org>
References: <alpine.DEB.2.02.1211180844430.18098@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211180844430.18098@oneiric>
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
Subject: Re: is there a standard for putting the name of a source file in
 the file?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 08:48 Sun 18 Nov     , Robert P. J. Day wrote:
> 
>   as i'm working my way thru the lib/ routines in barebox, i notice
> that some source files there, like getopt.c, conveniently have the
> filename right at the top:
> 
> /*
>  * getopt.c - a simple getopt(3) implementation. See getopt.h for explanation.
> ...
> 
> i really like this habit as it makes it easy to send a file to the
> printer and not forget what the file was.
> 
>   however, most of the files in lib/ don't have that.  as i work my
> way through the files, i'd be happy to add something like that to each
> file, and submit the changes all as one patch.  is there a standard?
> from what i can see, there's quite the variety in how people add that
> to a source file.
> 
>   i'm open to guidance and i can take it from there.
no this is a pain in the ass to maintian when we move file

I' drop it and I'm against it

Best Regards,
J.
> 
> rday
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
