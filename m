Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giPc2-0007zt-TG
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 20:10:36 +0000
Date: Sat, 12 Jan 2019 21:10:29 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190112201029.GA30509@ravnborg.org>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
 <20190112104822.GB14273@ravnborg.org>
 <CAHQ1cqGD9sTWP4yS2OFDuXAdQaC5L6JnbyQPd71pO49v2qBxYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGD9sTWP4yS2OFDuXAdQaC5L6JnbyQPd71pO49v2qBxYg@mail.gmail.com>
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
Subject: Re: [PATCH v2 00/18] PCIe support for i.MX7
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey.

On Sat, Jan 12, 2019 at 11:49:19AM -0800, Andrey Smirnov wrote:
> On Sat, Jan 12, 2019 at 2:48 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > Hi Andrey.
> >
> > > Feedback is welcome!
> >
> > I have looked through the patches - and nothing jumped at me.
> > A few places could use a newline but not worth a re-spin.
> >
> > I personal dislike filenames like "helpers.c" but thats pure bikeshedding.
> >
> 
> One of my goals was to keep things as close to how they are in Linux
> as possible. That's how that file is called there,
OK, and agreee on that.
Thanks for the explanation.

> > Looks good with the simple regulator support, which most likely will prove
> > useful later also for other drivers.
> > I hope we do not need deferred probe much...
> >
> > With deferred probe ported from the kernel, I wonder
> > how far we are from porting the devm_* functionlity too.
> > Not the I think this will share code with deferred probe,
> > just that this is another nice kernel idiom we could
> > benefit from in barebox.
> >
> 
> Just to clarify, deferred probe was already a part of Barebox for a
> while, the patches in this series only change the fact that Barebox
> core now has a chance to "give up" on deferred device and declare it
> as non-existent.
> 
> As for devm_* functions, not far at all. I don't think it would be
> difficult to port and I've been meaning to do that for a while, just
> never had an opportunity to do it so far.
Looks forward for the patches if you find the reason to do it.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
