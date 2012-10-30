Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTItK-0008Ju-NN
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 20:58:31 +0000
Received: by mail-ee0-f49.google.com with SMTP id c1so408491eek.36
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 13:58:27 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 30 Oct 2012 22:00:25 +0100
Message-Id: <1351630826-3133-1-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH/RFC] Introduce nandsim command
To: barebox@lists.infradead.org

Introduce nandsim command for develop/test nand mtd software.
Based on the nandsim kernel module. Don't know the version anymore.

The data which nandsim holds are in malloc space.
The original module can use a file to operate on this.
I removed this implementation, because it used the page-cache and I don't
have a page-cache in barebox.

I used nandsim in the following szenario:
	- barebox sandbox system with -i command to get a /dev/fd# device.
	- in barebox system you can use 'cp /dev/fd# /dev/nandsim#.
	- do some testing things on /dev/nandsim#
	- afterwards writeback with /dev/nandsim# /dev/fd#

This works for example with a envfs image.
Maybe I will add to synchronize with /dev/fd#(or another file) directly on changes.

It needs a high malloc space and a high max argument number for commands.

Please look at help text to see all parameters. I don't test all of these.

I added two parameters to supply a random seed and to manipulate a
bitflip_chance per page.
To manipulate the bitflip_chance is not a nice solution at the moment.

I send this patches, because maybe somebody can use it
to test things with ubiformat.

The nandsim implementation is not done yet!

Alexander Aring (1):
  nandsim: add nandsim command

 commands/Kconfig   |   11 +
 commands/Makefile  |    1 +
 commands/nandsim.c | 2495 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 2507 insertions(+)
 create mode 100644 commands/nandsim.c

-- 
1.8.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
