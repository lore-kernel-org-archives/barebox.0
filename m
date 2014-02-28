Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJRiT-0008K9-7p
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 17:59:22 +0000
Received: by mail-ea0-f175.google.com with SMTP id z10so2838215ead.20
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2014 09:58:56 -0800 (PST)
Date: Fri, 28 Feb 2014 18:58:51 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140228175850.GA1867@omega>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
 <1393573468-31105-4-git-send-email-alex.aring@gmail.com>
 <20140228080333.GA31407@omega>
 <20140228142118.GF17250@pengutronix.de>
 <20140228171207.GA615@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140228171207.GA615@omega>
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
Subject: Re: [RFC 3/3] libbb: read_full: use read return instead size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 06:12:07PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Fri, Feb 28, 2014 at 03:21:18PM +0100, Sascha Hauer wrote:
> > On Fri, Feb 28, 2014 at 09:03:34AM +0100, Alexander Aring wrote:
> > > On Fri, Feb 28, 2014 at 08:44:28AM +0100, Alexander Aring wrote:
> > > > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > > > ---
> > > >  lib/libbb.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/lib/libbb.c b/lib/libbb.c
> > > > index 189a170..c8d0835 100644
> > > > --- a/lib/libbb.c
> > > > +++ b/lib/libbb.c
> > > > @@ -162,7 +162,7 @@ int read_full(int fd, void *buf, size_t size)
> > > >  	int now;
> > > >  	int total = 0;
> > > >  
> > > > -	while (size) {
> > > > +	while (now) {
> > > >  		now = read(fd, buf, size);
> > > >  		if (now == 0)
> > > >  			return total;
> > > and this should be a:
> > > 
> > > do {
> > > ...
> > > } while (now);
> > > 
> > > sry, it's only to demonstrate the issue.
> > 
> > 'now' will never be 0 at the end of the loop, so you could equally well
> > write while(1). With this change we try to read as long as we read
> yes, I did it quickly to make something that command "edit" works in
> some way. The whole patches is only to demonstrate the issue. Also the
> foofs demo works if we read the whole thing at once, but that's okay for
> the test.
> 
> 
> > something last time, even if there's nothing left to read (size is 0).
> > What issue do you see with this function?
> 
> The function read_full makes similar things like:
> 
> stat(fd, &statbuf);
> ...
> read(fd, buf, statbuf.st_size);
> 
> this is wrong because a filesize can be zero and read can read something
> from this file.
> 
> For example procfs in linux, if you run this under linux for /proc/version
> it will do nothing.
> 
> a "while (size)" don't call read because at first we checked if the file
> is zero, which don't indicate that you can read something from a file.
> 
I meant s/can read/can't read/

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
