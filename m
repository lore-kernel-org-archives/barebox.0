Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNoAJ-0002DT-O5
	for barebox@lists.infradead.org; Thu, 24 Dec 2009 13:55:48 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id nBODtdDb017897
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 24 Dec 2009 07:55:41 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 24 Dec 2009 19:25:36 +0530
Message-Id: <1261662937-31474-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 0/1] Exclude code based on config
To: barebox@lists.infradead.org

When trying to build with Networking support enabled;
but without selecting any protocol, i encountered
this error:

premi # make
make[1]: `arch/arm/include/asm/mach-types.h' is up to date.
  CHK     include/linux/version.h
  CHK     include/linux/utsrelease.h
  SYMLINK include/config.h -> board/omap/config.h
  LD      barebox
commands/built-in.o: In function `do_tftpb':
help.c:(.text.do_tftpb+0x64): undefined reference to `TftpStart'
make: *** [barebox] Error 1

This 'mistake' led me to making the changes in the following
patch.

Sanjeev Premi (1):
  net: Exclude code based on selected protocol

 commands/net.c |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
