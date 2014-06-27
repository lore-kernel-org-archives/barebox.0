Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0UjW-0006kl-PG
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 11:54:23 +0000
Date: Fri, 27 Jun 2014 07:49:49 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAOpc7mHqg00i7-R4yfiPjVg9SudWYq7A_WiAtYfNctGr4_ZqEA@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1406270745300.3483@localhost>
References: <alpine.LFD.2.11.1406261725570.2448@localhost>
 <20140627045150.GN14257@pengutronix.de>
 <alpine.LFD.2.11.1406270502570.4443@localhost>
 <CAOpc7mHqg00i7-R4yfiPjVg9SudWYq7A_WiAtYfNctGr4_ZqEA@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: where is Documentation/parameters.txt?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, 27 Jun 2014, Holger Schurig wrote:

> >   oh, sorry, i missed that doc *branch*, my fault.
>
> It's totally new ... and awesome (compared to the old docs).

  ok, possibly a silly question but, as i now read it, if i want to
work with the sphinx-based docs, i should be working off the "doc"
branch and restrict my changes to just the files in the Documentation
directory.

  but recently, i submitted a patch to correct the misspelling
"persistant", and some of those changes were in Documentation/, while
other examples of that were scattered elsewhere (arch/, scripts/).

  so what's the protocol for correcting "documentation" (eg., inline
comments in source files) as opposed to the content under
Documentation? should non-Documentation patches be submitted against
the master branch? or does the "doc" branch track master closely
enough that i can exclusively stay on the "doc" branch?

  as in, should i resubmit that earlier patch broken into two parts?
and if one submits a patch against the "doc" branch, should that be
identified in the patch itself? the subject line?

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
