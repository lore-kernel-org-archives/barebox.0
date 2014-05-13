Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkCTF-0004Id-RK
 for barebox@lists.infradead.org; Tue, 13 May 2014 13:10:15 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 13 May 2014 15:09:09 +0200
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <20140513162340.c2689ed174c2ad441edceab1@gmail.com>
 <CAOpc7mG43m7qnMq20DG0_nZhWFnSzDUfjUuZ9T3t61Q1p=AtaQ@mail.gmail.com>
In-Reply-To: <CAOpc7mG43m7qnMq20DG0_nZhWFnSzDUfjUuZ9T3t61Q1p=AtaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201405131509.09847.jbe@pengutronix.de>
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
Subject: Re: [PATCH 08/19] commands: move CMD_MIPS_CPUINFO to commands/Kconfig
To: barebox@lists.infradead.org

On Tuesday 13 May 2014 14:43:38 Holger Schurig wrote:
> If it would be to me, I'd in long-term kill the doxygen. Or have the
> doxygen only describe the internal API for barebox programmers.
> Currently it mixes internal API and end-user documention, not so nice.

The historical goal was to keep all the documentation and the corresponding =

code close to each other.

The API documentation of doxygen is mostly useless. But to have the descrip=
tion =

of the intention of the code close to the code was my idea, to make =

programmers also change the documentation when they change the code near by=
. =

But it doesn't work. Programmers are not interested in writing documentatio=
n.

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
