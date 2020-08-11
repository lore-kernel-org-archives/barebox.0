Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5QbT-0007e9-Uh
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 09:29:57 +0000
Date: Tue, 11 Aug 2020 11:29:46 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200811092946.kvowvfmlfc2gqo4t@tellis.lin.mbt.kalray.eu>
References: <20200716132753.16342-1-jmaselbas@kalray.eu>
 <20200810194601.GE31536@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200810194601.GE31536@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

> I have no problem with this change, but out of curiosity: In which case
> do you need it?
I am using minicom to communicate with barebox through an UART interface.
It seems that minicom is sending an carriage return when the enter key
is pressed.

I know there is the termios/stty option `ocrnl` to convert CR to LF but
I didn't found a way to do the same in minicom, there is the `Add linefeed`
option but it doesn't work...

Maybe I am missing somthing but I think it is better if both CR and LF
are accepted, this way no configuration is required if the tty interface
only send LF.


Jules

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
