Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrNTq-0001KP-1a
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 08:20:30 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 2 Jun 2014 10:19:38 +0200
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-4-git-send-email-holgerschurig@gmail.com>
 <CAOpc7mHnKgzk4Usm0t21YZe3WT1WPRF47U8oEHfecbJyqoG90A@mail.gmail.com>
In-Reply-To: <CAOpc7mHnKgzk4Usm0t21YZe3WT1WPRF47U8oEHfecbJyqoG90A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201406021019.38119.jbe@pengutronix.de>
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


On Friday 30 May 2014 11:07:17 Holger Schurig wrote:
> Example output before of "devinfo fb0":
>
>     resources:
>     num   : 0
>     start : 0x4c242000
>     size  : 0x00300000
>     driver: none
>     bus: none
>
>     available modes:
>     hsd100pxn1           1024x768@0
>
>     Parameters:
>               enable =3D 0
>            mode_name =3D hsd100pxn1 ("hsd100pxn1")
>
>
> Example output after this patch:
>
>     Resources:
>       num: 0
>       start: 0x4c242000
>       size: 0x00300000
>     Available modes:
>       hsd100pxn1: 1024x768@0
>     Parameters:
>       enable: 0
>       mode_name: hsd100pxn1 ("hsd100pxn1")

But parameters can be changed by the user at run-time (e.g. "prompt> =

enable=3D1"), while the remaining info is just readable. That is why we use=
d =

different characters.

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
