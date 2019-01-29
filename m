Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goad1-0004SX-9a
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 21:09:08 +0000
Date: Tue, 29 Jan 2019 22:09:01 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190129210901.GA28953@ravnborg.org>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-19-andrew.smirnov@gmail.com>
 <20190129084847.spkfbeksb7xne46g@pengutronix.de>
 <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
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
Subject: Re: [PATCH v2 18/19] drivers: mem: Create file to access second half
 of 64-bit memory
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey

On Tue, Jan 29, 2019 at 12:40:21PM -0800, Andrey Smirnov wrote:
> On Tue, Jan 29, 2019 at 12:48 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Mon, Jan 28, 2019 at 10:55:48PM -0800, Andrey Smirnov wrote:
> > > In order to allow access to second half of address space on 64-bit
> > > machines, add code that creates /dev/highmem dedicated for that.
> >
> > Very nice series, I applied it right away with the exception of this
> > patch.
> 
> Cool, thanks!
> 
> > I don't like naming it "highmem" because normally this describes
> > a hardware feature, namely a technique for reaching memory that is
> > outside the CPUs address space. What we have here is a technique for
> > reaching memory that is outside the range of a poorly chosen variable
> > type ;)
> >
> > That said my alternative suggestions are not very striking and range
> > from /dev/mem1 to /dev/uppermem or /dev/mem-upper. Any other ideas?

No good ideas here either.
/dev/mem-upper get my vote as it will sit next to /dev/mem in an ls.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
