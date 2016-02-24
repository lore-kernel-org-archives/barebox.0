Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYdvf-0006T7-4W
 for barebox@lists.infradead.Org; Wed, 24 Feb 2016 18:12:52 +0000
Date: Wed, 24 Feb 2016 19:12:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160224181227.GR3939@pengutronix.de>
References: <1455978465-28919-2-git-send-email-pmamonov@gmail.com>
 <1456310925-1057-1-git-send-email-pmamonov@gmail.com>
 <20160224172148.fd09cf0757b3b52348103638@gmail.com>
 <20160224180701.08b3d179@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160224180701.08b3d179@berta>
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
Subject: Re: [PATCH v2] input: usb keyboard: fix CTRL+C
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

On Wed, Feb 24, 2016 at 06:07:01PM +0300, Peter Mamonov wrote:
> On Wed, 24 Feb 2016 17:21:48 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> > On Wed, 24 Feb 2016 13:48:45 +0300
> > Peter Mamonov <pmamonov@gmail.com> wrote:
> > 
> > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > > ---
> > >  drivers/input/input.c    | 4 +++-
> > >  drivers/input/keymap.c   | 4 ++++
> > >  include/input/keyboard.h | 1 +
> > >  3 files changed, 8 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/input/input.c b/drivers/input/input.c
> > > index ad7400f..1c6891c 100644
> > > --- a/drivers/input/input.c
> > > +++ b/drivers/input/input.c
> > > @@ -164,7 +164,9 @@ static void input_console_notify(struct
> > > input_notifier *in, if (ic->modstate[4] || ic->modstate[5])
> > >  		modstate |= 1 << 2;
> > >  
> > > -	if (modstate & (1 << 0))
> > > +	if (modstate & (1 << 1))
> > > +		ascii = keycode_bb_ctrl_keys[ev->code];
> > > +	else if (modstate & (1 << 0))
> > >  		ascii = keycode_bb_shift_keys[ev->code];
> > >  	else
> > >  		ascii = keycode_bb_keys[ev->code];
> > > diff --git a/drivers/input/keymap.c b/drivers/input/keymap.c
> > > index 79ca461..7e443d1 100644
> > > --- a/drivers/input/keymap.c
> > > +++ b/drivers/input/keymap.c
> > > @@ -167,3 +167,7 @@ uint8_t keycode_bb_shift_keys[NR_KEYS] = {
> > >  	[KEY_KPEQUAL] =		'=',
> > >  	[KEY_KPCOMMA] =		',',
> > >  };
> > > +
> > > +uint8_t keycode_bb_ctrl_keys[NR_KEYS] = {
> > > +	[KEY_C] =		CTL_CH('c'),
> > > +};
> > 
> > 
> > It looks like we still have empty array with NR_KEYS bytes in it.
> > 
> > Can we just drop it and satisfy with short "special case" C-code for
> > control modifier handling?
> 
> Probably I've misunderstood Sasha.
> 
> Sasha, did you mean to eliminate the CTRL-keymap completely?

No, I didn't, although that would be an option aswell. It would safe us
a few more bytes in the binary. The question is, how many more keys are
in the CTRL map that are interesting for us? Are there more than CTRL-C?
If yes, then it's probably better to keep the map. If not, a special
CTRL-C case in code might be the better option.

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
