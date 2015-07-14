Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEwqf-0006EE-2x
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 09:50:02 +0000
Received: by lbbzr7 with SMTP id zr7so2888610lbb.1
 for <barebox@lists.infradead.org>; Tue, 14 Jul 2015 02:49:39 -0700 (PDT)
Date: Tue, 14 Jul 2015 12:56:36 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Subject: Re: [RFC] WIP: fbconsole: very dirty font selection via param_enum
Message-Id: <20150714125636.d698cac7885ee5b0cab9f555@gmail.com>
In-Reply-To: <20150714044238.GL18700@pengutronix.de>
References: <1436819289-9752-1-git-send-email-antonynpavlov@gmail.com>
 <20150714044238.GL18700@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 14 Jul 2015 06:42:38 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jul 13, 2015 at 11:28:09PM +0300, Antony Pavlov wrote:
> > Alas I can't find any tab-complition for param_enum,
> > so addition 'fonts' command is introduced.
> =

> There is no tab completion, but 'devinfo fbconsole0' will show the
> different possibilities for the enum. Is that sufficient?

It's sufficient. I'll drop the font command in the RFCv2 patch.


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
