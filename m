Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WznXH-00063G-0g
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 13:46:52 +0000
Received: by mail-yk0-f171.google.com with SMTP id 200so1091395ykr.16
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 06:46:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140623165754.GA27898@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
 <20140618195849.GL15686@pengutronix.de>
 <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
 <20140623074308.GU15686@pengutronix.de>
 <CAOpc7mEtWpacJ1Q7nqBmYzHYEWdQBw7hrCgqLP-9bijpP9qsXw@mail.gmail.com>
 <20140623165754.GA27898@pengutronix.de>
Date: Wed, 25 Jun 2014 15:46:28 +0200
Message-ID: <CAOpc7mHHo9Fk4qzW9prc=oX2sBVvQBPL2CyH5q2uRqHgEH4gfg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: i.MX6 frame buffer inside barebox?
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I just noticed that simplefb wouldn't work with i.MX6 anyway, even if
I adapt it.

When I setup the framebuffer from barebox and display a splash and
then boot into Linux, then my framebuffer vanishes. Even when I don't
have simplefb or ipu enabled.

I think (!) the reason is the clock framework.The clocks for the IPU
are turned off, and so I don't see anything anymore (this is, however,
a wild assumption, I haven't checked it yet).

However, I checked with an Oscillioscope that if I setup the backlight
PWM (pwm0 in Barebox) and start Linux without CONFIG_PWM /
CONFIG_PWM_IMX, then the PWM is turned off as soon as Linux has been
started. Memory 0x2080000 shows in bit 0 that the PWM is still turned
on. But as nothing comes out, it must be the clock.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
