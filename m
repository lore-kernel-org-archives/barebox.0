Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrPCb-0004Pz-OO
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 10:10:50 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 2 Jun 2014 12:09:59 +0200
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <201406021019.38119.jbe@pengutronix.de>
 <CAOpc7mF515rdLsmY7bB+UGhWUfQMr58qotUixjuqiXK-Mdribg@mail.gmail.com>
In-Reply-To: <CAOpc7mF515rdLsmY7bB+UGhWUfQMr58qotUixjuqiXK-Mdribg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201406021209.59143.jbe@pengutronix.de>
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
Subject: Re: [PATCH 03/10] devinfo: make the output of "devinfo DEVICE" nicer
To: barebox@lists.infradead.org

Hi Holger,

On Monday 02 June 2014 11:23:28 Holger Schurig wrote:
> > But parameters can be changed by the user at run-time (e.g. "prompt>
> > enable=3D1"), while the remaining info is just readable. That is why we
> > used different characters.
>
> I'm not getting you. Parameters are still changeable after this patch.
>
> Or do you mean " =3D " vs. ":"?  Did you chose " =3D " by intent, i.e. so
> that you can cut&paste text with the mouse?

Yes. IMHO the "=3D" was intended as a visible feedback about the alterable =

characteristics of these parameters.

Copy&paste isn't possible due to the whitespaces.

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| http://www.pengutroni=
x.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
