Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTyhw-0001nK-Pv
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 17:37:34 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu,  1 Nov 2012 18:37:16 +0100
Message-Id: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 0/2] Y-Modem implementation change
To: plagnioj@jcrosoft.com, antonynpavlov@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Hi everyone,

This patchset aims at changing the Y-Modem protocol implementation.
You have already seen the RFC version, this is the next version, which :
 - provides a much more tested version
 - is ready for review

The following comments have been taken into account :
 - Antony: testing on a serial line
 - Sascha: split between protocol and commands
 - Jean-Christophe: kermit protocol change

So before doing the real review, could I ask of you :
 - Antony: could you redo your test over a serial line by applying only
           the first patch so that you can compare loady and loady2 ?
           Don't use "loady2 -g", as Y-Modem/G protocol requires a 
           lossless line (USB), and a serial line cannot guarantee it.
 - Sascha: does the split command/protocol suit you ?
 - Jean-Christophe: I left the loadb implementation as it is. The goal
                    of the patch is to change X-Modem and Y-Modem(G)
                    implementation, not kermit. Could you test that I
                    have not created a regression of loadb ?

Cheers.

--
Robert

Robert Jarzmik (2):
  commands: change Y-Modem implementation
  commands: remove old Y-Modem implementation

 commands/Makefile   |    4 +-
 commands/loadb.c    |  102 +------
 commands/loads.c    |    1 -
 commands/loadxy.c   |  238 ++++++++++++++++
 commands/xymodem.c  |  552 ++++++++++++++++++++++++++++++++++++
 commands/xyzModem.c |  785 ---------------------------------------------------
 include/xymodem.h   |   25 ++
 include/xyzModem.h  |  109 -------
 8 files changed, 826 insertions(+), 990 deletions(-)
 create mode 100644 commands/loadxy.c
 create mode 100644 commands/xymodem.c
 delete mode 100644 commands/xyzModem.c
 create mode 100644 include/xymodem.h
 delete mode 100644 include/xyzModem.h

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
