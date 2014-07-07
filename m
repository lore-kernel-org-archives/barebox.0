Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X44xr-0002IK-E6
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 09:11:59 +0000
Date: Mon, 7 Jul 2014 05:11:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <4DA026CE-D019-4CBB-B46B-834064F91333@jcrosoft.com>
Message-ID: <alpine.LFD.2.11.1407070505420.27781@localhost>
References: <alpine.LFD.2.11.1407041217080.16169@localhost>
 <4DA026CE-D019-4CBB-B46B-834064F91333@jcrosoft.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1232604941-1404724276=:27781"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Clean up Kconfig and source for a couple device tree
 commands.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1232604941-1404724276=:27781
Content-Type: TEXT/PLAIN; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

On Mon, 7 Jul 2014, Jean-Christophe PLAGNIOL-VILLARD wrote:

>
> On Jul 5, 2014, at 12:18 AM, Robert P. J. Day <rpjday@crashcourse.ca> wro=
te:
>
> >
> >
> > Correct options listings for a couple device tree-related commands.
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> >  i *think* the following is valid.
> >
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index eed6fbd..3248de9 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -1950,10 +1950,11 @@ config CMD_OFTREE
> > 	help
> > 	  oftree - handle device trees
> >
> > -	  Usage: oftree [-lpfdn] [DTB]
> > +	  Usage: oftree [-lspf] [DTB]
> >
> > 	  Options:
> > 		  -l		Load DTB to internal device tree
> > +		  -s		save internal device tree to DTB
> > 		  -p		probe devices from stored device tree
> > 		  -f		free stored device tree
> >
>
> do we really need the help here
>
> it=92s a pain in the ass to keep it sync

... snip ...

  i'd have to agree ... there's quite a lot of help info that's out of
sync between the Kconfig entries and the source file entries. for
example, check out the Kconfig entry for the "boot" command:

config CMD_BOOT
        tristate
        select BOOTM
        prompt "boot"
        help
        ... snip ...
          Options:
              -c         crc check uImage data
              -d         dryrun: check data, but do not run
              -f         load images even if type is undetectable
              -r INITRD  specify an initrd image
              -L ADDR    specify initrd load address
              -a ADDR    specify os load address
              -e OFFS    entry point to the image relative to start (0)
              -o DTS     specify open firmware device tree
              -v         verbose

versus what's in the command source file:

BAREBOX_CMD_HELP_TEXT("Options:")
BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boo=
t")
BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
BAREBOX_CMD_HELP_END

and there are quite a few other examples of mismatches like that.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--8323328-1232604941-1404724276=:27781
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323328-1232604941-1404724276=:27781--
