Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjofC-0004a5-CC
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 09:35:55 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <ukl@pengutronix.de>) id 1Sjof9-00030J-Jj
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 11:35:51 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <ukl@pengutronix.de>) id 1Sjof9-0006pV-Ie
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 11:35:51 +0200
Date: Wed, 27 Jun 2012 11:35:51 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120627093551.GC18096@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: is errno supposed to be positive or negative?
To: barebox@lists.infradead.org

Hello,

Well, ok, errno is supposed to be zero, but in the rare cases where it's
not, what is intended?

Assuming ESOMETHING is always positive, in userspace errno is
positive, e.g. you test for errno =3D=3D EBADF.

In barebox however most assignments use

	errno =3D -ESOMETHING

but there are also some tests and assignments without minus. barebox'
perror expects a negative errno which is also different from POSIX'
perror. strerror uses positive semantics in both barebox and POSIX.

I'd vote to fix barebox to use the same semantic for errno (and perror)
as POSIX.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
