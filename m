Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaXzQ-0003W3-DC
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 19:26:14 +0000
Date: Tue, 13 Dec 2011 20:26:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213192606.GA27267@pengutronix.de>
References: <4EE62D17.1090709@eukrea.com> <4EE66F10.7090409@eukrea.com>
 <20111213094800.GF27267@pengutronix.de>
 <4EE76AC1.3070603@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EE76AC1.3070603@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: magicvar breaks tftp (or ramfs)
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Dec 13, 2011 at 04:09:53PM +0100, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le 13/12/2011 10:48, Sascha Hauer a =E9crit :
> >Sometimes it helps to enable
> >
> >CONFIG_KALLSYMS
> >CONFIG_ARM_UNWIND
> >
> >to get a proper stack trace
> >
> Thanks for the hint I was not aware barebox also had these options.
> =

> The culprit is show_progress :
> [<87f1c340>] (show_progress+0x14/0xf0) from [<87f1e590>] (tftp_send+0x194=
/0x1e4)
> [<87f1e590>] (tftp_send+0x194/0x1e4) from [<87f1e784>] (do_tftpb+0x1a4/0x=
2d0)
> [<87f1e784>] (do_tftpb+0x1a4/0x2d0) from [<87f065e0>] (execute_command+0x=
30/0x60)
> [<87f065e0>] (execute_command+0x30/0x60) from [<87f03d4c>]
> (run_list_real+0x7b4/0x894)
> [<87f03d4c>] (run_list_real+0x7b4/0x894) from [<87f03350>]
> (parse_stream_outer+0x104/0x1e4)
> [<87f03350>] (parse_stream_outer+0x104/0x1e4) from [<87f03ed8>]
> (run_shell+0x3c/0x5c)
> [<87f03ed8>] (run_shell+0x3c/0x5c) from [<87f07870>] (start_barebox+0xe0/=
0x11c)
> [<87f07870>] (start_barebox+0xe0/0x11c) from [<800011d8>] (0x800011d8)
> =

> And I get the problem with
> arm-none-linux-gnueabi-gcc (Sourcery G++ Lite 2011.03-41) 4.5.2
> it works with :
> arm-none-linux-gnueabi-gcc (Sourcery G++ Lite 2010q1-202) 4.4.1
> =

> So that seems to be a toolchain issue (adding some printf in
> show_progress make the problem disappear ...).

I really want to believe this, but I wouldn't be so sure. I think
it's more likely that you found a bug in barebox that your new
toolchain happens to trigger. Could you provide the objdump of
show_progress along with a complete stack trace including register
contents?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
