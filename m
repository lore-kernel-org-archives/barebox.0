Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f50.google.com ([209.85.215.50])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDBER-0004iO-3z
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 11:42:43 +0000
Received: by mail-la0-f50.google.com with SMTP id gf5so3091352lab.37
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 04:42:15 -0700 (PDT)
Date: Fri, 1 Aug 2014 15:55:02 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140801155502.4fcd12112b4bd492fc0b729f@gmail.com>
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
Subject: 'commands: add hwclock' partially  apllied!
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha!

I have just got recent barebox 'next' branch with this commit:

commit 7154e7cdb970a1ff4a7105daf57fc92ff4b8e63c
Author: Antony Pavlov <antonynpavlov@gmail.com>
Date:   Wed Jul 30 00:10:20 2014 +0400

    commands: add hwclock
    =

    The hwclock command allows to query or set the hardware clock (RTC).
    =

    Barebox' 'hwclock' command uses busybox' 'date' compatible
    time format ccyymmddHHMM[.SS]:
    =

      # /bin/busybox date -s 201407292005.41 ; /bin/date
      Tue Jul 29 20:05:41 MSK 2014
      Tue Jul 29 20:05:41 MSK 2014
    =

    Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

 commands/Kconfig  | 8 ++++++++
 commands/Makefile | 1 +
2 files changed, 9 insertions(+)

This commit miss  commands/hwclock.c  file.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
