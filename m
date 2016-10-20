Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bx9ON-000647-Ld
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 09:12:04 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 20 Oct 2016 11:13:07 +0200
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <CABvwO2BoCQs-XoSNsYG8Uo8+odKcZ6o5dWoFzk_nQjTJGerYLw@mail.gmail.com>
 <CABvwO2BZoNwdZJsWmygcjsAUXsmexDPU5cTpEoVd-sW9y5T_Rw@mail.gmail.com>
In-Reply-To: <CABvwO2BZoNwdZJsWmygcjsAUXsmexDPU5cTpEoVd-sW9y5T_Rw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201610201113.08285.jbe@pengutronix.de>
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
Subject: Re: Loading kernel issues
To: Javier Fileiv <javier.fileiv@gmail.com>
Cc: barebox@lists.infradead.org

Hi Javier,

On Wednesday 19 October 2016 20:18:38 Javier Fileiv wrote:
> just in case...my /env/config as well
> [...]

Sorry, no idea. I do not even have the hardware anymore, so I cannot test i=
t.

Keep a look into the "env/bin/boot" script, what it tries to do with the =

configuration from your "env/config". Maybe it could help you to make it wo=
rk =

again.

Cheers,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
