Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1amyA6-0003sw-0X
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 06:38:59 +0000
Date: Mon, 4 Apr 2016 08:38:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160404063833.GC9102@pengutronix.de>
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
 <87ziterckj.fsf@gmail.com>
 <CABDcavZ2HPoPqCJ9Wn_Uu7fapKcqdHEPc9jDjnM7xDvKJ5ahbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavZ2HPoPqCJ9Wn_Uu7fapKcqdHEPc9jDjnM7xDvKJ5ahbg@mail.gmail.com>
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
Subject: Re: Scrolling issues in edit command
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 31, 2016 at 05:36:58PM +0200, Guillermo Rodriguez Garcia wrote:
> Hello,
> 
> Thank you for the answer. Some comments below.
> 
> 2016-03-31 15:39 GMT+02:00 Holger Schurig <holgerschurig@gmail.com>:
> > Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com> writes:
> >
> >> Can anyone provide any hints on why this is
> >> happening or how to fix it ?
> >
> > I guess this is probably because your terminal emulation doesn't match
> > what barebox assume.
> 
> Uhm, could be, however I have also been using minicom with an older
> version of barebox for a long time (2011.05.0, on a different target
> board), and never had any problems at all. I only noticed this
> behaviour when testing barebox 2016.03.0 on a new board.
> 
> [...]
> > Kermit is oblivious to any ANSI escape sequences, so my X11 terminal
> > emulates them. Here I use the rxvt-unicode binary `urxvt`. The effect is
> > that the "edit" commands works.
> 
> Perhaps I should clarify what I am seeing. The "edit" command actually
> works, more or less. If I scroll up or down one line at a time then
> there are no problems. I only see bogus A or B characters inserted
> when I do "continuous" scrolling. Also I noticed that ESC [ A is the
> ANSI escape sequence for "cursor up", and ESC [ B is the ANSI escape
> sequence for "cursor down". Perhaps when I keep the arrow up/down key
> pressed, minicom is sending these escape sequences faster than barebox
> can handle them, and that's why I see the 'A' and 'B' characters
> inserted?

Yes, could be. I have never seen such a behaviour. Normally the rate
your host sends "ESC [ B" is limited by the keyboard repeat rate, not by
the serial port speed, so I think barebox should be able to follow this.

What we see here more and more frequently is that the signal level
generated on one side is not high enough for the other side to detect it
properly. Maybe you have similar issues? How about pasting copy/pasting
text on the barebox command line using middle mouse button? Does that
work properly?

I recommend microcom as a terminal program. Like kermit it does not
emulate a terminal but is just a 1:1 pass through to the host terminal.
Unlike kermit microcom can be passed the port to use on the command
line. It's part of Debian/Ubuntu.

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
