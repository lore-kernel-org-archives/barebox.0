Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9WcL-0005J2-DU
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 10:48:50 +0000
Received: by lagh6 with SMTP id h6so48527284lag.2
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2015 03:48:26 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id d7sm1156226lae.48.2015.06.29.03.48.25
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jun 2015 03:48:25 -0700 (PDT)
Date: Mon, 29 Jun 2015 13:55:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150629135501.344827695c942d496959aa1e@gmail.com>
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
Subject: Fw: next: sandbox: arch/sandbox/os/common.c:31:18: fatal error:
 init.h: No such file or directory
To: barebox@lists.infradead.org

Sorry!

I have forgotten to add barebox@list.infradead.org to CC.

Begin forwarded message:

Date: Mon, 29 Jun 2015 13:11:12 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, Juergen Borleis <jbe@pengutronix=
.de>
Subject: next: sandbox: arch/sandbox/os/common.c:31:18: fatal error: init.h=
: No such file or directory


Hi!

It looks like sandbox barebox from next branch is broken.

How to reproduce the problem

$ cd barebox.git
$ git checkout next
$ git show -1
commit 5e98d4ec2d434e20a4044ec5d5897ae7b51f9411
Merge: 9175369 3c36a73
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Jun 29 07:25:47 2015 +0200

    Merge branch 'for-next/watchdog' into next

$ unset ARCH
$ unset CROSS_COMPILE
$ make sandbox_defconfig
...
$ make

...
  CC      arch/sandbox/os/common.o
arch/sandbox/os/common.c:31:18: fatal error: init.h: No such file or direct=
ory
 #include <init.h>
                  ^
compilation terminated.

git-bisect reports that

0c142e405712586ed8074ce0166c515e158cc986 is the first bad commit
commit 0c142e405712586ed8074ce0166c515e158cc986
Author: Juergen Borleis <jbe@pengutronix.de>
Date:   Thu Jun 25 09:34:34 2015 +0200

    System restart: add a scope value to the system restart feature

--=A0
Best regards,
=A0 Antony Pavlov


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
