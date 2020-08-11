Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5SON-0007Qp-8m
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 11:24:32 +0000
Date: Tue, 11 Aug 2020 13:24:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811112429.GM9475@pengutronix.de>
References: <20200716132753.16342-1-jmaselbas@kalray.eu>
 <20200810194601.GE31536@pengutronix.de>
 <20200811092946.kvowvfmlfc2gqo4t@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811092946.kvowvfmlfc2gqo4t@tellis.lin.mbt.kalray.eu>
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
Subject: Re: [PATCH] console_countdown: Add CR as valid return key
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Aug 11, 2020 at 11:29:46AM +0200, Jules Maselbas wrote:
> Hi Sascha,
> 
> > I have no problem with this change, but out of curiosity: In which case
> > do you need it?
> I am using minicom to communicate with barebox through an UART interface.
> It seems that minicom is sending an carriage return when the enter key
> is pressed.

You could give microcom a try, see https://github.com/pengutronix/microcom.
It's also contained in Debian/Ubuntu. Instead of having its own terminal
emulation it just sends the characters through to your existing
terminal.

Anyway, when it helps to better work with minicom: Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
