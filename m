Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rcb5P-00025t-IG
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 11:08:52 +0000
Date: Mon, 19 Dec 2011 12:08:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219110846.GL27267@pengutronix.de>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
 <1324072234-31634-4-git-send-email-robert.jarzmik@free.fr>
 <20111219094932.GC27267@pengutronix.de> <8739cgg7la.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8739cgg7la.fsf@free.fr>
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
Subject: Re: [PATCH V2 3/8] drivers/mtd: transfer NAND notions to MTD core
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Dec 19, 2011 at 11:48:49AM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > On Fri, Dec 16, 2011 at 10:50:29PM +0100, Robert Jarzmik wrote:
> >
> >>  
> >>  if MTD
> >>
> >> +config MTD_WRITE
> >> +	bool
> >> +	default y
> >> +	prompt "Support writing to MTD devices"
> >> +
> >> +config MTD_READ_OOB
> >> +	bool
> >> +	default y
> >> +	prompt "Create a device for reading the OOB data"
> >> +
> >
> > This one is a rename...
> >
> >>  
> >> -config NAND_READ_OOB
> >> -	bool
> >> -	default y
> >> -	prompt "create a device for reading the OOB data"
> >> -
> >
> > from this one, but not all references to it were renamed.
> Arg. I see it now. I'll amend this patch.
> 
> > This revealed a bug which was present before this patch. The following
> > fixes this, see the commit log for more details. Can you rebase your
> > series on this patch?
> Of course.
> 
> > Otherwise your series seems to work properly.
> Ok, great. Do you want me to resend the whole serie, or provide you a pull
> request with this patchset rebased on barebox.git/next, and your patch, and then
> this serie ?

I just applied the fix to -master and merged master into -next. Please
just rebase your series on top of this and resend.

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
