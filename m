Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoLXV-00034x-V9
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 01:16:34 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 20 Oct 2015 01:15:44 +0000
Message-ID: <1445303748.13196.89.camel@rtred1test09.kymetacorp.com>
Content-Language: en-US
Content-ID: <99DDA5EDF75836478FF7E3E81CE1D27D@kymetacorp.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: In flash vs compiled environment for omap, rasp-pi, socfpga
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On most boards, it seems the in flash environment is at some fixed
location, and board code will create /dev/env0 from it using
devfs_add_partition().  But a few boards don't work this way, and
instead use a file located in a FAT filesystem in a flash partition.
This is done for omap, raspberry-pi, and socfpga.  The ROM bootloader
supporting partition tables probably has a lot to do with adding this
feature.

It looks like the ability to load the env from a FAT file was first
added in a7b2114, "ARM omap4: panda board", in 2011.  In this patch it
was made to depend on CONFIG_DEFAULT_ENVIRONMENT.

But DEFAULT_ENVIRONMENT is "Compile in default environment".  It causes
the default environment to be compiled into the barebox binary, to be
used if the in flash env can not be used for some reason.  It's an
orthogonal issue to where in flash the environment should come from, a
fixed sector or a file in FAT partition.  It's possible to compile in or
not compile in a default env with either method of storing the flash
env.

So why does loading the env from a FAT partition depend on
DEFAULT_ENVIRONMENT?  It does in the omap and socfpga code, but in the
rasp-pi code it doesn't.

If one tries to build socfpga with DEFAULT_ENVIRONMENT off, you get no
env at all, i.e. a broken barebox.  The env code tries to load
from /dev/env0, which doesn't exist since there is no board code to
create it for socfpga.  And no compiled in default since that was turned
off.

If you turn it on, then you get the env in the FAT partition.  But you
also get the env compiled into the barebox binary.  If there are large
FPGA images stored in the env, this is very undesirable!  A too large
barebox binary would seem to be the primary reason compiling in the env
is supposed to be an optional setting.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
