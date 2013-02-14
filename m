Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f53.google.com ([74.125.83.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U67C9-0000yF-OQ
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 22:22:22 +0000
Received: by mail-ee0-f53.google.com with SMTP id e53so1545110eek.12
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 14:22:19 -0800 (PST)
Date: Thu, 14 Feb 2013 23:23:06 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130214222304.GA18432@x61s.8.8.8.8>
References: <1360847311-16931-1-git-send-email-alex.aring@gmail.com>
 <1360847311-16931-2-git-send-email-alex.aring@gmail.com>
 <20130214211305.GF1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130214211305.GF1906@pengutronix.de>
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
Subject: Re: [PATCH 2/4] fs: add pread and pwrite functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Feb 14, 2013 at 10:13:05PM +0100, Sascha Hauer wrote:
> On Thu, Feb 14, 2013 at 02:08:29PM +0100, Alexander Aring wrote:
> > Add pread and pwrite functions.
> > 
> > These functions setting file pointer to a given
> > offset with lseek and call read or write afterwards.
> > 
> > Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> > ---
> >  fs/fs.c      | 28 ++++++++++++++++++++++++++++
> >  include/fs.h |  2 ++
> >  2 files changed, 30 insertions(+)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index 48d1c89..fea7e02 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -785,6 +785,20 @@ ssize_t read(int fd, void *buf, size_t count)
> >  }
> >  EXPORT_SYMBOL(read);
> >  
> > +ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
> > +{
> > +	int ret;
> > +
> > +	ret = lseek(fd, offset, SEEK_SET);
> > +	if (ret < 0)
> > +		goto out;
> > +
> > +	ret = read(fd, buf, count);
> > +out:
> > +	return ret;
> > +}
> 
> The man page says that the file offset is not modified by pread/pwrite.
> If we add a standard function with a standard prototype I think it
> should have the same behaviour.
> Maybe this can be implemented similar to the current read() function
> is implemented. read() could then call pread() internally and advances
> the file offset afterwards.

Ok I will change this. Thanks.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
