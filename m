Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chBxU-00077t-7V
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 09:14:38 +0000
Date: Fri, 24 Feb 2017 10:14:13 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170224091413.yahhpi5re7fd7p7p@pengutronix.de>
References: <CAFXsbZo1X6FQ5F8560oAzuf9eygzS22WPxjFwGpo26887NswCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFXsbZo1X6FQ5F8560oAzuf9eygzS22WPxjFwGpo26887NswCQ@mail.gmail.com>
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
Subject: Re: mw crash
To: Chris Healy <cphealy@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 23, 2017 at 03:24:33PM -0800, Chris Healy wrote:
> I mistakenly used the wrong set of command line arguments when using
> the mw command and it resulted in the following crash:
> =

> barebox@ZII RDU2 Board:/ mw -b -l /dev/pic_eeprom_rdu 0x50 3

That was interpreted as

> unable to handle NULL pointer dereference at address 0x00000000
> pc : [<8fe45134>]    lr : [<8fe45107>]
> sp : 8ffef870  ip : 4ff9def8  fp : 00000000
> r10: 00000006  r9 : 00000000  r8 : ffffffff
> r7 : 8ffef91c  r6 : 8ffef91c  r5 : 00000000  r4 : 00000004
> r3 : 00000050  r2 : 00000003  r1 : 00000003  r0 : 00000000
> Flags: Nzcv  IRQs off  FIQs off  Mode SVC_32
> [<8fe45134>] (memcpy_sz+0x48/0x54) from [<8fe46119>] (mem_write+0x39/0x44)

The failing instruction is

	strd r2, r3, [r5]

(assuming it compiles for you in the same way as for me).

So your command seems to be interpreted as

	mw -q 0 0x0000000300000050

Hmm, I cannot reproduce that, for me the above command is interpreted as

	mw -l 0 0x50 3

So at least doing

diff --git a/commands/mw.c b/commands/mw.c
index bb6a16ef3d45..2c8ec456076c 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -42,6 +42,7 @@ static int do_mem_mw(int argc, char *argv[])
 	int mode =3D O_RWSIZE_4;
 	loff_t adr;
 	int swab =3D 0;
+	char *endp;
 =

 	if (mem_parse_options(argc, argv, "bwlqd:x", &mode, NULL, &filename,
 			&swab) < 0)
@@ -50,7 +51,11 @@ static int do_mem_mw(int argc, char *argv[])
 	if (optind + 1 >=3D argc)
 		return COMMAND_ERROR_USAGE;
 =

-	adr =3D strtoull_suffix(argv[optind++], NULL, 0);
+	adr =3D strtoull_suffix(argv[optind++], &endp, 0);
+	if (*endp !=3D '\0') {
+		pr_err("Failed to parse address\n");
+		return 1;
+	}
 =

 	fd =3D open_and_lseek(filename, mode | O_WRONLY, adr);
 	if (fd < 0)

consistently (i.e. also for the other mem commands and the values) and
teaching mem_parse_options to error out if more than one of -b -w -l -q
is given would help.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
