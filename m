Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anAmw-0001iS-6A
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 20:07:54 +0000
Date: Mon, 4 Apr 2016 22:07:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160404200730.GA1618@pengutronix.de>
References: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
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
Subject: Re: Scrolling issues in edit command
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Wed, Mar 30, 2016 at 05:38:53PM +0200, Guillermo Rodriguez Garcia wrote:
> I am trying to setup Barebox on a SAMA5D3-Xplained board. I started
> with barebox-2016.03.0. So far things are looking good.
> =

> I have found that I have problems in the 'edit' command, when trying
> to scroll using the arrow keys. Scrolling up inserts random "A"
> characters in the text, scrolling down inserts random "B" characters.
> I am using minicom as the terminal. I don't remember seeing this
> before with older versions of barebox on different boards.

Can you instrument your serial driver to count/notice overflow events?
It's strange that you're missing chars 3-12 in a longer paste.

Does it help to use

	busybox microcom -d 10 ...

? (That is a feature that is missing from the "fullblown" microcom that
comes in the microcom package.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
