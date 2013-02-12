Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5API-0005Z3-1N
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 07:36:01 +0000
Date: Tue, 12 Feb 2013 08:35:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130212073557.GL1906@pengutronix.de>
References: <1360315457-30382-1-git-send-email-s.hauer@pengutronix.de>
 <1360315457-30382-3-git-send-email-s.hauer@pengutronix.de>
 <20130208110218.GA3049@x61s.8.8.8.8>
 <20130211114023.GB1906@pengutronix.de>
 <20130211231304.GA4981@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130211231304.GA4981@x61s.8.8.8.8>
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
Subject: Re: [PATCH 2/2] miitool: Add support for examing mdio bus
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 12, 2013 at 12:13:06AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Mon, Feb 11, 2013 at 12:40:23PM +0100, Sascha Hauer wrote:
> > On Fri, Feb 08, 2013 at 12:02:20PM +0100, Alexander Aring wrote:
> > > Hi Sascha,
> > > 
> > > On Fri, Feb 08, 2013 at 10:24:17AM +0100, Sascha Hauer wrote:
> > > > Current miitool usage is limited to a single phy on a mdio bus.
> > > > 
> > > > For debugging purposes it is useful to be able to examine a mdio bus
> > > > instead of a single phy only.
> > > > 
> > > > This adds support for this to the miitool command.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  commands/miitool.c |   94 +++++++++++++++++++++++++++++++++++++++++-----------
> > > >  1 file changed, 75 insertions(+), 19 deletions(-)
> > > > 
> > > > diff --git a/commands/miitool.c b/commands/miitool.c
> > > > index 3a9ac45..b9e2333 100644
> > > > --- a/commands/miitool.c
> > > > +++ b/commands/miitool.c
> > > > @@ -37,23 +37,36 @@
> > > >  #include <linux/stat.h>
> > > >  #include <xfuncs.h>
> > > >  #include <linux/mii.h>
> > > > +#include <linux/phy.h>
> > > >  
> > > > -static u16 mdio_read(int fd, int offset)
> > > > +static int phy_fd;
> > > > +
> > > > +static u16 mdio_file_read(int offset)
> > > >  {
> > > >  	int ret;
> > > >  	u16 buf;
> > > >  
> > > > -	ret = lseek(fd, offset << 1, SEEK_SET);
> > > > +	ret = lseek(phy_fd, offset << 1, SEEK_SET);
> > > >  	if (ret < 0)
> > > >  		return 0;
> > > >  
> > > > -	ret = read(fd, &buf, sizeof(u16));
> > > > +	ret = read(phy_fd, &buf, sizeof(u16));
> > > >  	if (ret < 0)
> > > >  		return 0;
> > > >  
> > > >  	return buf;
> > > >  }
> > > 
> > > I made a similar function in nandtest and I am thinking about to add a
> > > pread and pwrite into file operations.
> > > Is it welcome to send patches for adding pwrite and pread into file
> > > operations? I would implement it like this but with a prototype
> > > which looks like:
> > > 
> > > ssize_t pread(int fildes, void *buf, size_t nbyte, off_t offset);
> > 
> > Sounds good. Just to be sure: With 'file operations' you do not mean
> > struct file_operations, right?
> > 
> 
> I can do this in two ways.
> 
> Option 1:
> 
> Write 'file_operations helper functions' for pwrite and pread. Each driver can
> assign this to pwrite and pread callbacks in file_operations struct.
> 
> Similar we can do that for a normal file fs_driver_d.
> 
> This helper functions just call lseek and write or read for specific
> device/filesystem.
> If callback is null, driver or filesystem doesn't support it.
> 
> pread and pwrite implementation in fs/fs.c will call assign callback
> from fs_driver_d.
> 
> Option 2:
> 
> Just add a pwrite and pread function in fs/fs.c which calls for a
> filedescriptor lseek and then write or read.
> 
> ---
> 
> I prefer option 2. This implementation used smaller size and it works
> like option 1. It's just a call of read or write with an specific offset.
> 
> But in option 1 a driver or filesystem can replace this function with an
> another function which can do something other than just call lseek and then
> write or read.

I also vote for option 2; option 1 could be implemented should the need
arise, but I currently don't see it.

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
