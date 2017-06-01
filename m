Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGLfl-0001ZL-Rp
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 08:41:40 +0000
Date: Thu, 1 Jun 2017 10:41:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170601084115.gufdlfdazlbjgbjy@pengutronix.de>
References: <cover.1496247033.git.aleksander@aleksander.es>
 <7499fda2a3c12627c05a66d1a6a9111646beb695.1496247033.git.aleksander@aleksander.es>
 <20170601082415.zrkc6g75rpmjfjeo@pengutronix.de>
 <CAAP7ucLX93URh+zAvvtg1M_VdFf=wCaiGwW-RB39F=Yta4Czwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAP7ucLX93URh+zAvvtg1M_VdFf=wCaiGwW-RB39F=Yta4Czwg@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] sandbox: --stdin and --stdout allow max one
 bidirectional console
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Thu, Jun 01, 2017 at 10:28:42AM +0200, Aleksander Morgado wrote:
> > On Wed, May 31, 2017 at 06:12:41PM +0200, Aleksander Morgado wrote:
> >> Allow up to one bidirectional FIFO/file based console in addition to
> >> the default stdin/stdout console that is always registered.
> >>
> >> We avoid opening the FIFO files while parsing the options because the
> >> whole logic may block if e.g. trying to open the --stdout FIFO and
> >> there is no reader in the other end. So instead, we store the --stdout
> >> and --stdin file paths given, and we open both sequentially once all
> >> the options have been parsed. This also allows us to validate that at
> >> most a single pair of --stdin and --stdout paths has been given.
> >> e.g.:
> >>     term1 $ mkfifo /tmp/bbstdin
> >>     term1 $ mkfifo /tmp/bbstdout
> >>     term1 $ ./barebox -I /tmp/bbstdin -O /tmp/bbstdout
> >>        (blocks until a reader is available in the stdout FIFO)
> >>
> >>     term2 $ cat /tmp/bbstdout & cat > /tmp/bbstdin
> >>        (starts reader and writer, which triggers barebox to continue)
> >>
> >> If only one console is activated (CONFIG_CONSOLE_ACTIVATE_ALL=n), the
> >> default stdin/stdout console will be preferred instead of the new
> >> FIFO/file based, which would need to be activated explicitly later on.
> >> e.g.:
> >>     barebox@barebox sandbox:/ cs1.active=ioe
> >>
> >> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> >> ---
> >>  arch/sandbox/os/common.c | 48 +++++++++++++++++++++++++++++++++++++-----------
> >>  1 file changed, 37 insertions(+), 11 deletions(-)
> >
> > The first patch is ok and I applied it. Before this patch though I'd like
> > to have the attached patch. It merely fixes what we already have: The -I
> > and -O options got broken over time, we ended up using the barebox
> > malloc pool before it was initialized.
> >
> 
> Ah! I see, just moving the 'O' and 'I' parsing to the second getopt
> makes it work. I actually knew about the malloc pool being prepared in
> between both getopt runs, as my attempts to strdup() the file paths in
> the first run didn't succeed, I just didn't realize it was also
> affecting the other logic :)
> 
> > So next we have to create a patch for what you want to do: Have an
> > option to create a bidirectional console in barebox. Can we have a
> > --file-console option that takes two path arguments instead of one, with
> > some separator in between?
> >
> 
> Well, is this even needed any more? I'm fine having separate in/out
> consoles registered, as long as they work.

Ah, great, then we're done. I thought your goal was to have a single
console in barebox capable of both input and output.

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
