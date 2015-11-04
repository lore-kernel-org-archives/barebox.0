Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ztyzz-0005hh-9r
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 14:25:16 +0000
Received: by lbbes7 with SMTP id es7so17381350lbb.2
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 06:24:53 -0800 (PST)
Date: Wed, 4 Nov 2015 17:48:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151104174810.64907d909a0c3196fe6778e0@gmail.com>
In-Reply-To: <20151104133053.GP25416@pengutronix.de>
References: <1446567541-21731-1-git-send-email-ejo@pengutronix.de>
 <1446635004-26896-1-git-send-email-ejo@pengutronix.de>
 <20151104152321.1f2d9e673c1b259c8373148c@gmail.com>
 <20151104133053.GP25416@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] edit: Return error when save_file failed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Enrico Jorns <ejo@pengutronix.de>

On Wed, 4 Nov 2015 14:30:53 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Nov 04, 2015 at 03:23:21PM +0300, Antony Pavlov wrote:
> > On Wed,  4 Nov 2015 12:03:24 +0100
> > Enrico Jorns <ejo@pengutronix.de> wrote:
> > =

> > > When writing a file failed (e.g. due to a read-only file system), no
> > > error was reported by the 'edit' tool. To be valid (and to not confuse
> > > the poor user) at least '1' should be returned to indicate an error.
> > > =

> > > Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> > > ---
> > >  commands/edit.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/commands/edit.c b/commands/edit.c
> > > index b28e2b9..3b653b7 100644
> > > --- a/commands/edit.c
> > > +++ b/commands/edit.c
> > > @@ -375,6 +375,7 @@ static int do_edit(int argc, char *argv[])
> > >  	int i;
> > >  	int linepos;
> > >  	int c;
> > > +	int ret =3D 0;
> > =

> > Can we use COMMAND_SUCCESS insted of 0?
> > =

> > =

> > >  =

> > >  	if (argc !=3D 2)
> > >  		return COMMAND_ERROR_USAGE;
> > > @@ -533,7 +534,7 @@ static int do_edit(int argc, char *argv[])
> > >  			}
> > >  			break;
> > >  		case 4:
> > > -			save_file(argv[1]);
> > > +			ret =3D save_file(argv[1]);
> > =

> > Actually save_file() returns open()'s error. We have to convert it to C=
OMMAND_ERROR, e.g.:
> =

> If we return an error code from a command then the caller will print the
> corresponding error string to the console which might be what we want
> here.
> =

> > =

> > if (save_file(argv[1]) !=3D 0)
> > 	ret =3D COMMAND_ERROR;
> > =


At the moment the only cmd() caller is inside of execute_command():

        ret =3D cmdtp->cmd(argc, argv);
        if (ret =3D=3D COMMAND_ERROR_USAGE) {
                barebox_cmd_usage(cmdtp);
                ret =3D COMMAND_ERROR;
        }
        ...
        return ret;


But we brop execute_command() result in run_command():
        if (execute_command(argc, argv) !=3D COMMAND_SUCCESS)
	        rc =3D -1;

We have a chance to see error message only if we call execute_command()
from run_pipe_real():

        ret =3D execute_binfmt(globbuf.gl_pathc, globbuf.gl_pathv);
        if (ret < 0) {
            printf("%s: %s\n", globbuf.gl_pathv[0], strerror(-ret));
            ret =3D 127;
        }

So, yes, you are right we have no reason to convert open()'s error into COM=
MAND_ERROR,
but for consistency we have toadd strerror() print to run_command() code.

> > Also save_file() does not check write()'s error.
> Indeed, this could be fixed while touching this code.
> =

> Sascha
> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
