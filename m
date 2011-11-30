Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RVqD6-0007q3-72
 for barebox@lists.infradead.org; Wed, 30 Nov 2011 19:52:52 +0000
Received: by faan17 with SMTP id n17so1123052faa.36
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2011 11:52:49 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 30 Nov 2011 22:52:46 +0300
Message-ID: <CAA4bVAGTM99RvF5XufvLSw0sEp6cRmyDRwBvj9rdN7bM+8eb-w@mail.gmail.com>
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

  We still have a problem: the option CONFIG_CMD_MD5SUM=3Dy breaks build.

  Here is the log:

$ date --utc
Wed Nov 30 19:42:41 UTC 2011
$ git clone --branch next git://git.pengutronix.de/git/barebox.git
barebox.git.next
Cloning into 'barebox.git.next'...
$ cd barebox.git.next
$ make ARCH=3Darm versatilepb_defconfig
#
# configuration written to .config
#
$ grep CMD_MD5SUM -i .config
# CONFIG_CMD_MD5SUM is not set
$ sed "s/# CONFIG_CMD_MD5SUM.*/CONFIG_CMD_MD5SUM=3Dy/" -i .config
$ make ARCH=3Darm oldconfig
scripts/kconfig/conf --oldconfig Kconfig
#
# configuration written to .config
#
$ grep CMD_MD5SUM -i .config
CONFIG_CMD_MD5SUM=3Dy
$ make -j 2 ARCH=3Darm CROSS_COMPILE=3Darm-versatile-linux-gnueabi-
scripts/kconfig/conf --silentoldconfig Kconfig
  Generating include/generated/mach-types.h
  CHK     include/generated/version.h
  UPD     include/generated/version.h
...
  CC      lib/random.o
  CC      lib/show_progress.o
make[1]: *** No rule to make target `lib/md5.o', needed by
`lib/built-in.o'.  Stop.
make[1]: *** Waiting for unfinished jobs....
  CC      lib/process_escape_sequence.o
  CC      net/eth.o
make: *** [lib] Error 2
make: *** Waiting for unfinished jobs....

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
