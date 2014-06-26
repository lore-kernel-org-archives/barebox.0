Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X071j-0000AG-Jd
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 10:35:36 +0000
Date: Thu, 26 Jun 2014 06:31:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
Message-ID: <alpine.LFD.2.11.1406260622060.14712@localhost>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: New Documentation for barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 26 Jun 2014, Sascha Hauer wrote:

> Hi all,
>
> I am happy to announce new documentation for barebox.
>
> The following series removes the in-tree documentation and replaces
> it with completely rewritten sphinxs based documentation. As of now
> we have a more or less complete user manual. There surely is room
> for improvements but we think that it is good enough already and
> surely better than what we have now.
>
> The documentation is written with Sphinx. Sphinx is
> the Python Documentation Generator, see http://sphinx-doc.org/.
> The files are written in reStructuredText, a format which is
> sufficiently easy to write and nice to read even in sourcecode
> format.
>
> Thank you Jan, Lukas and Jochen for help writing documentation and
> fixing typos.
>
> `make docs` will generate static html files.

  ... snip ...

  couple quick observations before i put on my editor hat and go
through all this. first, on my fedora rawhide system, running "make
docs" generates quite a few warnings, although the HTML is eventually
built. is it worth digging into the doc generation warnings and trying
to clean them up? anyone else building the docs on fedora rawhide and
see what i'm talking about?

  and just from the main page, a couple very pedantic questions:

* should the name "Barebox" be italicized or not? it seems even that
single page bounces back and forth using and not using "@a" in front
of the word "Barebox".

* the "Directory layout" section inserts a space on either side of the
"/" in directory names, as in:

  arch / * /

that just looks ... weird.

* oh, final note regarding name "Barebox", i notice some pages (like
the x86_bootloader page) use the uncapitalized name "barebox" -- this
really should be consistent throughout all the docs.

  more later after i read more ...

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
