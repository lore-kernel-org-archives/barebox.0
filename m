Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2Gx6-0002CG-OQ
 for barebox@lists.infradead.org; Thu, 25 Jul 2013 08:31:13 +0000
Received: by mail-lb0-f176.google.com with SMTP id z5so1295801lbh.35
 for <barebox@lists.infradead.org>; Thu, 25 Jul 2013 01:30:49 -0700 (PDT)
Date: Thu, 25 Jul 2013 12:28:51 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130725122851.21230bc159c293a28acaa7b6@gmail.com>
In-Reply-To: <20130724165421.GS9434@pengutronix.de>
References: <1374593282-3320-1-git-send-email-antonynpavlov@gmail.com>
 <20130724165421.GS9434@pengutronix.de>
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
Subject: Re: [RFC 0/2] serial: ns16550: small dt support improvements
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 24 Jul 2013 18:54:21 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Jul 23, 2013 at 07:28:00PM +0400, Antony Pavlov wrote:
> > [RFC 1/2] serial: ns16550: get clock-frequency from dt
> > [RFC 2/2] serial: ns16550: fill cdev just-in-time
> =

> Applied, thanks.
> =

> I assume the second one is only cosmetic, right?

Yes, it's mostly cosmetic: the main goal of the second patch
is making code more "easy-to-understand".

As a bonus you get a tiny insignificant optimisation: if there is any error
during probe then there is no need in cdev and cdev can
be keeped unitialized (tut IMHO a smart compiler can make itself
a reposition like this :).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
