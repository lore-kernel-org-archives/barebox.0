Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDqKC-0005Fc-FC
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 08:07:41 +0000
Received: by mail-la0-f53.google.com with SMTP id gq15so14293111lab.12
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 00:07:17 -0800 (PST)
Date: Wed, 21 Jan 2015 12:09:57 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150121120957.31d77e52b2bf34309c5d756a@gmail.com>
In-Reply-To: <20150121041236.d1717cd443a38f6e747e48ac@gmail.com>
References: <20150121041236.d1717cd443a38f6e747e48ac@gmail.com>
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
Subject: Re: sandbox: splash command does not works
To: barebox@lists.infradead.org

On Wed, 21 Jan 2015 04:12:36 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> Hi All!
> =

> I have compiled sandbox barebox with CONFIG_VIDEO=3Dy and CONFIG_DRIVER_V=
IDEO_SDL=3Dy.
> =

> I can't show any png picture (e.g. png logos from barebox logo/ dir)
> in the sdl frambuffer window using the 'splash' command.
> The sdl window is always black.
> =

> Any ideas?

Sorry!

I forgot to enable it with 'fb0.enable=3D1'.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
