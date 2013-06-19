Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpQKP-0006cK-Vb
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 21:54:10 +0000
Received: by mail-bk0-f49.google.com with SMTP id mz10so2550107bkb.36
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 14:53:47 -0700 (PDT)
Date: Wed, 19 Jun 2013 23:57:01 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130619215700.GA2135@x61s.8.8.8.8>
References: <1371675528-6380-1-git-send-email-s.hauer@pengutronix.de>
 <20130619213239.GA3707@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130619213239.GA3707@x61s.8.8.8.8>
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
Subject: Re: [PATCH] read_file: Make it work on tftp servers which do not
 pass size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Wed, Jun 19, 2013 at 11:32:39PM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> only a very small hint.
> 
> On Wed, Jun 19, 2013 at 10:58:48PM +0200, Sascha Hauer wrote:
> > Some tftp servers (for example netkit-tftp) do not pass the filesize.
> > Add a workaround for read_file which reads the file into a temporary
> > file which then is copied to a buffer.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  fs/fs.c      | 18 ++++++++++++++++++
> >  fs/tftp.c    |  5 ++++-
> >  include/fs.h |  2 ++
> >  3 files changed, 24 insertions(+), 1 deletion(-)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index dc3a6e3..7046f2c 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -38,10 +38,21 @@ void *read_file(const char *filename, size_t *size)
> >  	int fd;
> 
> ...
> 
> >  
> >  	tftp_do_close(priv);
> >  
> > diff --git a/include/fs.h b/include/fs.h
> > index 8ff7300..fa6a8da 100644
> > --- a/include/fs.h
> > +++ b/include/fs.h
> > @@ -147,6 +147,8 @@ int protect(int fd, size_t count, unsigned long offset, int prot);
> >  int protect_file(const char *file, int prot);
> >  void *memmap(int fd, int flags);
> >  
> > +#define FILESIZE_MAX	((size_t)-1)
> 
> The type of st_size in struct stat is loff_t. I check this and
> ((size_t)-1) is different than ((loff_t)-1), so I think we need to cast
> to loff_t. Maybe it's better to use a define from limits.h, but we don't
> have some header file like this.
> 

ah, I see it now. The fs layer use size_t instead of loff_t. Sorry for
the noise.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
