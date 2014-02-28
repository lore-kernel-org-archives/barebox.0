Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJQzG-0006F9-2T
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 17:12:38 +0000
Received: by mail-ee0-f45.google.com with SMTP id d17so2394883eek.4
 for <barebox@lists.infradead.org>; Fri, 28 Feb 2014 09:12:15 -0800 (PST)
Date: Fri, 28 Feb 2014 18:12:09 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140228171207.GA615@omega>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
 <1393573468-31105-4-git-send-email-alex.aring@gmail.com>
 <20140228080333.GA31407@omega>
 <20140228142118.GF17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140228142118.GF17250@pengutronix.de>
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

Hi Sascha,

On Fri, Feb 28, 2014 at 03:21:18PM +0100, Sascha Hauer wrote:
> On Fri, Feb 28, 2014 at 09:03:34AM +0100, Alexander Aring wrote:
> > On Fri, Feb 28, 2014 at 08:44:28AM +0100, Alexander Aring wrote:
> > > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > > ---
> > >  lib/libbb.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/lib/libbb.c b/lib/libbb.c
> > > index 189a170..c8d0835 100644
> > > --- a/lib/libbb.c
> > > +++ b/lib/libbb.c
> > > @@ -162,7 +162,7 @@ int read_full(int fd, void *buf, size_t size)
> > >  	int now;
> > >  	int total = 0;
> > >  
> > > -	while (size) {
> > > +	while (now) {
> > >  		now = read(fd, buf, size);
> > >  		if (now == 0)
> > >  			return total;
> > and this should be a:
> > 
> > do {
> > ...
> > } while (now);
> > 
> > sry, it's only to demonstrate the issue.
> 
> 'now' will never be 0 at the end of the loop, so you could equally well
> write while(1). With this change we try to read as long as we read
yes, I did it quickly to make something that command "edit" works in
some way. The whole patches is only to demonstrate the issue. Also the
foofs demo works if we read the whole thing at once, but that's okay for
the test.


> something last time, even if there's nothing left to read (size is 0).
> What issue do you see with this function?

The function read_full makes similar things like:

stat(fd, &statbuf);
...
read(fd, buf, statbuf.st_size);

this is wrong because a filesize can be zero and read can read something
from this file.

For example procfs in linux, if you run this under linux for /proc/version
it will do nothing.

a "while (size)" don't call read because at first we checked if the file
is zero, which don't indicate that you can read something from a file.


So we have many function which works like this (I suppose). But there is
something wrong with the whole read function because we can't read
something from a file, when the filesize is zero. Patch 2/3 changes this.

Sascha, do you understand what I mean... in some way? :-/

I know it sounds a little bit crazy that read can read more than zero
bytes if the filesize is zero.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
