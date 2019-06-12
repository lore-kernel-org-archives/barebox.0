Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawoP-0002a7-WF
 for barebox@lists.infradead.org; Wed, 12 Jun 2019 06:32:47 +0000
Date: Wed, 12 Jun 2019 08:32:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190612063242.5lqb6nfattoghtdc@pengutronix.de>
References: <ccde5e10-c624-f8b1-93f8-48d76ff699bd@mev.co.uk>
 <2ed1eda2-04b8-0ddc-0be0-793aae74f57d@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ed1eda2-04b8-0ddc-0be0-793aae74f57d@mev.co.uk>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Environment variables set by /env/bin/init disappear when script
 exits
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi Ian,

On Tue, Jun 11, 2019 at 04:21:06PM +0100, Ian Abbott wrote:
> On 11/06/2019 15:52, Ian Abbott wrote:
> > Since commit 90df2a955e3c ("defaultenv: Convert init script to C"), if
> > the legacy /env/bin/init script is still being used, any environment
> > variables that were set in the script (such as the PS1 prompt) disappear
> > when the script exits.=A0 I guess it is because the script is now run
> > directly by run_command(initfile) (initfile is "/env/bin/init") rather
> > than by run_command("source /env/bin/init").
> =

> This seems easy to fix in "common/startup.c", assuming it is indeed a bug.
> Which of the following fixes would be preferable?

Indeed this behaviour was not intended and should be fixed.

> =

> 1. Call run_command with a string literal:
> =

>     run_command("source /env/bin/init");

I'd probably do something like this:

#define INITFILE "/env/bin/init"

	run_command("source " INITFILE);

But I might decide differently if you ask me tomorrow, so do whatever
looks best to you ;)

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
