Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIMXK-0003ip-Ov
	for barebox@lists.infradead.org; Mon, 24 Oct 2011 15:34:03 +0000
Received: by eye3 with SMTP id 3so6928039eye.36
	for <barebox@lists.infradead.org>; Mon, 24 Oct 2011 08:33:59 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 24 Oct 2011 19:33:59 +0400
Message-ID: <CAA4bVAHzXtzvbt0n6uYx3hP79iQMSrZaMK920t8LfBFkyNLE8A@mail.gmail.com>
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
Subject: lib/md5.o build problem
To: barebox <barebox@lists.infradead.org>

Hi!

I can't build barebox with md5sum command.

Here is the log:

$ date
Mon Oct 24 19:29:51 MSD 2011
$ git clone --branch next git://git.pengutronix.de/git/barebox.git
barebox.git.next
$ cd barebox.git.next
$ make ARCH=3Darm versatilepb_defconfig
$ sed "s/# CONFIG_CMD_MD5SUM.*/CONFIG_CMD_MD5SUM=3Dy/" -i .config
$ make ARCH=3Darm oldconfig
$ make -j 2 ARCH=3Darm CROSS_COMPILE=3Darm-realview-linux-gnueabi-
...
  CC      lib/show_progress.o
  CC      lib/decompress_unlzo.o
make[1]: *** No rule to make target `lib/md5.o', needed by
`lib/built-in.o'.  Stop.
make[1]: *** Waiting for unfinished jobs....
  CC      lib/process_escape_sequence.o
make: *** [lib] Error 2
make: *** Waiting for unfinished jobs....
  LD      fs/built-in.o

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
