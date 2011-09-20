Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R5urX-0008Vr-QJ
	for barebox@lists.infradead.org; Tue, 20 Sep 2011 07:35:28 +0000
Date: Tue, 20 Sep 2011 09:35:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110920073526.GT31404@pengutronix.de>
References: <1316037832-3536-1-git-send-email-antonynpavlov@gmail.com>
	<20110919085627.GD31404@pengutronix.de>
	<CAA4bVAFdJoDbAUGqiYLvRUJnpdMpHsC1FgZD7vgxeC2zy4EhUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFdJoDbAUGqiYLvRUJnpdMpHsC1FgZD7vgxeC2zy4EhUQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 1/3] add tlsf memory allocator
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 19, 2011 at 10:24:54PM +0400, Antony Pavlov wrote:
> On 19 September 2011 12:56, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Antony,
> >
> > On Thu, Sep 15, 2011 at 02:03:50AM +0400, Antony Pavlov wrote:
> >> got from svn https://www.gii.upv.es/svn/tlsf/trunk@70
> >>
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >> =A0common/tlsf.c =A0| 1024 +++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++
> >> =A0include/tlsf.h | =A0 39 +++
> >> =A02 files changed, 1063 insertions(+), 0 deletions(-)
> >> =A0create mode 100644 common/tlsf.c
> >> =A0create mode 100644 include/tlsf.h
> >
> > What's the advantages of this memory allocator? One thing I see is that
> > this one has support for memory pools which is nice to have. Are there
> > more advantages?
> =

> I need some time to answer this question.
> =

> I have successfully used tlsf for some time in different projects
> (e.g. I have used tlsf in my own version of PMON2000).
> =

> I have found that the barebox has an unusable menu "malloc type",
> there I have found only dmalloc (yes, I know, there is very simple
> malloc too). So I said to myself "Why not to add tlsf to this
> menu?"...

Yes, why not ;)

> =

> I have a reason, but, it is not very strict reason of course: tlsf is
> a more recent, and last updated May 2010.

I am generally open to a new malloc implementation. As said, the
possibility to have memory pools is very useful in some cases. dlmalloc
has newer versions though aswell and newer versions also have memory
pools, but...

> =

> > How is the binary size compared to dlmalloc?
> =

> The binary size is the same.

...Newer versions of dlmalloc are bigger in binary space.

A good selling point for this allocator might be that it's fast (if it
is)

Maybe we can give it a try. First we need a working memalign function of
course.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
