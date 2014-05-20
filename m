Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wmf1O-0006jz-4V
 for barebox@lists.infradead.org; Tue, 20 May 2014 08:03:38 +0000
Received: by mail-ee0-f47.google.com with SMTP id c13so239991eek.6
 for <barebox@lists.infradead.org>; Tue, 20 May 2014 01:03:13 -0700 (PDT)
Date: Tue, 20 May 2014 10:03:08 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140520080307.GA1525@omega>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-5-git-send-email-s.hauer@pengutronix.de>
 <20140520080101.GA1334@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140520080101.GA1334@omega>
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
Subject: Re: [PATCH 4/6] oftree: remove dump support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 20, 2014 at 10:01:01AM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> On Mon, May 19, 2014 at 10:59:42PM +0200, Sascha Hauer wrote:
> > This can now be done with the of_dump command.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/Kconfig  |  2 --
> >  commands/oftree.c | 42 +++---------------------------------------
> >  2 files changed, 3 insertions(+), 41 deletions(-)
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 381f3fd..6043cb6 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -1944,8 +1944,6 @@ config CMD_OFTREE
> >  		  -l		Load DTB to internal device tree
> >  		  -p		probe devices from stored device tree
> >  		  -f		free stored device tree
> > -		  -d		dump device tree from DTB or the parsed tree if no DTB is given
> > -		  -n NODE	specify root device NODE to dump for -d
> >  
> >  config CMD_TIME
> >  	bool "time"
> > diff --git a/commands/oftree.c b/commands/oftree.c
> > index 16648d6..db31d59 100644
> > --- a/commands/oftree.c
> > +++ b/commands/oftree.c
> > @@ -46,8 +46,6 @@ static int do_oftree(int argc, char *argv[])
> >  	int size;
> >  	int opt;
> >  	char *file = NULL;
> > -	const char *node = "/";
> > -	int dump = 0;
> >  	int probe = 0;
> >  	int load = 0;
> >  	int save = 0;
> > @@ -55,14 +53,11 @@ static int do_oftree(int argc, char *argv[])
> >  	int ret;
> >  	struct device_node *n, *root;
> >  
> > -	while ((opt = getopt(argc, argv, "dpfn:ls")) > 0) {
> > +	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
> 
> Are you sure this optstring conversion is correct? Before there was
> no optargs for -l and -s.

Saw this right now in patch 6/6, sorry.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
