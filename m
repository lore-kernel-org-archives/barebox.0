Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z6GYN-0002sY-2S
 for barebox@lists.infradead.org; Sat, 20 Jun 2015 11:03:15 +0000
Received: by lbbti3 with SMTP id ti3so85139521lbb.1
 for <barebox@lists.infradead.org>; Sat, 20 Jun 2015 04:02:51 -0700 (PDT)
Date: Sat, 20 Jun 2015 14:09:12 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150620140912.b8435aff9de4a645f5d4639e@gmail.com>
In-Reply-To: <20150617092857.GJ6325@pengutronix.de>
References: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
 <20150617092857.GJ6325@pengutronix.de>
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
Subject: Re: barebox picotcp integration (2015.06.14)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Wed, 17 Jun 2015 11:28:57 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jun 15, 2015 at 01:13:43AM +0300, Antony Pavlov wrote:
> > Hi!
> > =

> > I have just published latest picotcp-enabled barebox.
> > Please see my 20150614.picotcp branch in my github barebox repo
> > (https://github.com/frantony/barebox/tree/20150614.picotcp).
> > =

...
> =

> Why are you using the picotcp tftp implementation? picotcp surely
> supports sending/receiving udp packets, right? Wouldn't it be a good
> first step to replace the barebox udp API with the one picotcp provides?
> I mean I would expect that you replace only the network stack, not the
> network stack including the applications. If at some point we decide
> that the tftp implementation in picotcp is better than the one in
> barebox that would be the time to switch it.
> =


I have reworked tftp support: now barebox tftp implementation is used on top
of picotcp udp/ip stack and works 2 times slower than original u-boot stack=
-based
implementation (I have tested it with sandbox arch).

Please see draft tftp commit here: https://github.com/frantony/barebox/tree=
/20150620.picotcp

I'll try to switch barebox nfs support to picotcp udp/ip in several days.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
