Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHr1j-0000rm-Tq
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 11:18:00 +0000
Message-ID: <1467112654.4482.14.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 28 Jun 2016 13:17:34 +0200
In-Reply-To: <20160628054556.GG20657@pengutronix.de>
References: <1467027740-24201-1-git-send-email-t.remmet@phytec.de>
 <1467027740-24201-3-git-send-email-t.remmet@phytec.de>
 <20160628054556.GG20657@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 3/4] commands: ubi: Add ubiupdatevol command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Am Dienstag, den 28.06.2016, 07:45 +0200 schrieb Sascha Hauer:
> On Mon, Jun 27, 2016 at 01:42:19PM +0200, Teresa Remmet wrote:
> > Add ubiupdatevol command. This is to update static
> > and dynamic volumes.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> > Changes in v2:
> > 	- instead of using read_file, used a smaller
> > 		buffer and read/write in a loop
> > 
> >  commands/ubi.c | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 81 insertions(+)
> > 
> > diff --git a/commands/ubi.c b/commands/ubi.c
> > index dc2b4b5..b8b3f38 100644
> > --- a/commands/ubi.c
> > +++ b/commands/ubi.c
> > @@ -7,10 +7,91 @@
> >  #include <getopt.h>
> >  #include <linux/mtd/mtd.h>
> >  #include <linux/kernel.h>
> > +#include <linux/stat.h>
> >  #include <linux/mtd/mtd-abi.h>
> >  #include <mtd/ubi-user.h>
> >  #include <mtd/ubi-media.h>
> >  
> > +static int do_ubiupdatevol(int argc, char *argv[])
> > +{
> > +	int fd_img, fd_vol, ret = 0;
> > +	uint64_t size = 0;
> > +	struct stat st;
> > +	unsigned int count;
> > +	void *buf;
> > +
> > +	if (argc - optind < 2)
> > +		return COMMAND_ERROR_USAGE;
> > +
> > +	if (stat(argv[optind+1], &st)) {
> > +		perror("stat image");
> > +		return 1;
> > +	}
> > +
> > +	size = st.st_size;
> 
> While applying I added a test that tests for FILESIZE_MAX here and bails
> out with an error.

I could add a check for FILESIZE_MAX and give a special error message in
this case. But we need a correct file size for static volumes. So tftp
server which do not pass the file size, will fail here.

Teresa

> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
