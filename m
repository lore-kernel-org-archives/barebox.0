Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f43.google.com ([209.85.213.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUVpt-0007VI-86
 for barebox@lists.infradead.org; Wed, 16 May 2012 04:27:43 +0000
Received: by yhkk6 with SMTP id k6so460367yhk.16
 for <barebox@lists.infradead.org>; Tue, 15 May 2012 21:27:39 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 16 May 2012 08:27:39 +0400
Message-ID: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: build timestamps don't work
To: barebox <barebox@lists.infradead.org>

Hi!

  I have found that on my Debian testing build system generation of
timestamps don't work correctly.

$ cd barebox.git
$ git checkout next
$ make mrproper
$ make qemu-malta_defconfig
$ make
$ cat .version
0
$ edit ...
$ edit ...
$ edit ...
$ make
$ cat .version
0
$ echo 4 > .version
$ make
$ edit ...
$ edit ...
$ edit ...
$ make
$ cat .version
4

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
