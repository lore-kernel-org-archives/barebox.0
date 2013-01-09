Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TsvIs-0006LE-Lr
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 13:02:47 +0000
Message-ID: <50ED6A73.2060608@phytec.de>
Date: Wed, 09 Jan 2013 14:02:43 +0100
From: =?ISO-8859-15?Q?J=FCrgen_Kilb?= <J.Kilb@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ubiformat.c is missing
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, Wolfram Sang <w.sang@pengutronix.de>

Hi Sascha,
it seems that commit 5a29d4ae in master tree is missing the file =

ubiformat.c.

   CC      commands/ubi.o
make[1]: *** No rule to make target `commands/ubiformat.o', needed by =

`commands/built-in.o'.  Stop.
make: *** [commands] Error 2

could you please check this?

=3D=3D=3D
git show --stat 5a29d4ae
commit 5a29d4aea71336558e13eb6ad8e662781653ae56
Author: Wolfram Sang <w.sang@pengutronix.de>
Date:   Mon Dec 17 16:48:33 2012 +0100

     commands: add ubiformat

     Imported from mtd-utils and stripped down to needed functionality.
     Based on an older version (1.4.5.) since the newer do use MEMWRITE
     interfaces which we don't have in barebox (yet).

     Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

  commands/Kconfig  |    8 ++++++++
  commands/Makefile |    1 +
  2 files changed, 9 insertions(+), 0 deletions(-)
=3D=3D=3D


thanks,
J=FCrgen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
