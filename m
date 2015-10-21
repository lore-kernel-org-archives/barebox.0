Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zonnd-0006WE-IJ
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 07:27:06 +0000
Date: Wed, 21 Oct 2015 09:26:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151021072643.GA14476@pengutronix.de>
References: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
 <20151019073643.GI14476@pengutronix.de>
 <CAHQ1cqH=X8gACCkY5rnmg+y46za1zRD6bjk9j2x8PoWC+0LJjA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqH=X8gACCkY5rnmg+y46za1zRD6bjk9j2x8PoWC+0LJjA@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Add support for semihosting
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 20, 2015 at 06:14:19PM -0700, Andrey Smirnov wrote:
> >> +Not all of the I/O primitives neccessary to implement a full
> >> +filesystem are exposed in ARM semihosting API and because of that some
> >> +aspects of filesystem funcionality are missing. Implementation does
> >> +not have support for listing directories. This means a
> >> +:ref:`command_ls` to a SMHFS-mounted path will show an empty
> >> +directory. Nevertheless, the files are there.
> >
> > Is adding ls support a matter of implementing it? Does the semihosting
> > protocol support ls?
> 
> Unfortunately the protocol doesn't support any directory related
> operations.

What a pitty.

> It is possible to implement custom semihosting "syscalls"
> and it wouldn't be that hard to add support of those to OpenOCD, but
> that would leave out other debugging tools.

Would be nice to have, but not worth the hassle of creating custom
extensions to the spec.

> 
> 
> >
> >> +
> >> +Example::
> >> +
> >> +  mount -t smhfs /dev/null /mnt/smhfs
> >
> > Are actions on the host required to do that? Maybe some example for
> > using this with openocd would be useful.
> 
> I completely forgot to add that to the documentation. Will fix that in
> the next version of the patch.
> 
> >> +
> >> +     if (semihosting_remove(pathname) != 0)
> >> +             return semihosting_errno();
> >
> > Are the errnos semihosting returns compatible with the barebox errnos?
> 
> I can't speak for any implementation other that OpenOCD's, but what
> that tool does is it returns the value of host's 'errno' after
> executing a corresponding syscall.

Ok, then we should be able to reuse it as error code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
