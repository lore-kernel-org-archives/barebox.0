Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQbdj-0001S6-Hi
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 10:23:17 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A518FFFC2F0
 for <barebox@lists.infradead.org>; Tue, 23 Oct 2012 12:32:56 +0200 (CEST)
Date: Tue, 23 Oct 2012 12:20:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121023102059.GH21588@game.jcrosoft.org>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <1350922048-25699-2-git-send-email-plagnioj@jcrosoft.com>
 <20121023085906.GR27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121023085906.GR27665@pengutronix.de>
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
Subject: Re: [PATCH 2/3] envfs: add command_abi_version support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:59 Tue 23 Oct     , Sascha Hauer wrote:
> On Mon, Oct 22, 2012 at 06:07:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > allow to store the command abi version
> > This will allow to detect incompatibility
> > 
> > Increase envfs minor to 1
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  commands/loadenv.c    |   11 ++++++++++-
> >  common/environment.c  |    7 ++++++-
> >  common/startup.c      |    4 ++--
> >  include/envfs.h       |    4 ++--
> >  include/environment.h |   13 ++++++++++++-
> >  scripts/bareboxenv.c  |    9 ++++++++-
> >  6 files changed, 40 insertions(+), 8 deletions(-)
> > 
> > diff --git a/commands/loadenv.c b/commands/loadenv.c
> > index 5bf1740..c52ee4b 100644
> > --- a/commands/loadenv.c
> > +++ b/commands/loadenv.c
> > @@ -26,6 +26,9 @@
> >  
> >  static int do_loadenv(int argc, char *argv[])
> >  {
> > +	int ret;
> > +	uint16_t command_abi_version;
> > +
> >  	char *filename, *dirname;
> >  
> >  	if (argc < 3)
> > @@ -37,7 +40,13 @@ static int do_loadenv(int argc, char *argv[])
> >  	else
> >  		filename = argv[1];
> >  	printf("loading environment from %s\n", filename);
> > -	return envfs_load(filename, dirname);
> > +	ret = envfs_load(filename, dirname, &command_abi_version);
> > +
> > +	if (command_abi_version < COMMAND_ABI_VERSION)
> 
> '!=' instead of '<'? The incompatibility is often in both directions.
> 
> We may have to introduce min/max, I'm not sure on that.
no if your env is compatible with more recent but back compatible too

as you do this with the example of mount update I did recently

if [ $command_abi_version -lt 1 ]
then
	mount /dev/disk0.0 fat /mnt
else
	mount /dev/disk0.0 /mnt
fi
> 
> 
> > -int envfs_load(char *filename, char *dir)
> > +int envfs_load(char *filename, char *dir, uint16_t *command_abi_version)
> >  {
> >  	struct envfs_super super;
> >  	void *buf = NULL, *buf_free = NULL;
> > @@ -235,6 +236,7 @@ int envfs_load(char *filename, char *dir)
> >  		goto out;
> >  	}
> >  
> > +
> >  	if ( ENVFS_32(super.magic) != ENVFS_MAGIC) {
> >  		printf("envfs: wrong magic on %s\n", filename);
> >  		ret = -EIO;
> 
> Drop this hunk.
> 
> > diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
> > index f44a1f8..6bd23e8 100644
> > --- a/scripts/bareboxenv.c
> > +++ b/scripts/bareboxenv.c
> > @@ -115,6 +115,7 @@ char *concat_subpath_file(const char *path, const char *f)
> >  }
> >  
> >  #include "../lib/recursive_action.c"
> > +#include "../include/command_abi.h"
> >  #include "../include/envfs.h"
> >  #include "../crypto/crc32.c"
> >  #include "../lib/make_directory.c"
> > @@ -189,14 +190,20 @@ int main(int argc, char *argv[])
> >  	}
> >  
> >  	if (load) {
> > +		uint16_t command_abi_version;
> > +
> >  		if (verbose)
> >  			printf("loading env from file %s to %s\n", filename, dirname);
> > -		envfs_load(filename, dirname);
> > +		envfs_load(filename, dirname, &command_abi_version);
> > +		if (verbose)
> > +			printf("with command_abi_version = %u\n", command_abi_version);
> >  	}
> >  	if (save) {
> >  		if (verbose)
> >  			printf("saving contents of %s to file %s\n", dirname, filename);
> >  		envfs_save(filename, dirname);
> > +		if (verbose)
> > +			printf("with command_abi_version = %u\n", COMMAND_ABI_VERSION);
> >  	}
> 
> For testing purposes or for generating an environment for another
> barebox version it would be useful to be able to specify the ABI version
> from the command line.
yeah I was thinking of it too

as I was thinking to genereate an env compatible with multiple version
as we have the way to detect it

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
