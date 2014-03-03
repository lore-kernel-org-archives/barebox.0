Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKOHJ-0006o3-PR
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 08:31:14 +0000
Date: Mon, 3 Mar 2014 09:30:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140303083050.GM17250@pengutronix.de>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 28, 2014 at 06:12:09PM +0100, Alexander Aring wrote:
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

s/read_full/read_file/

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

So our read_file implementation doesn't work procfs like filesystems where
all sizes are 0. Your patch doesn't change this though. In 2/3 you
remove the if (!size) check and call the fs drivers read function with
size 0. In this case the read function may return values, but never
actually read something because the buffer size is 0.

Sascha

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
