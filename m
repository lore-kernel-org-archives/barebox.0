Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiHI-0000V6-QG
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:50:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:50:03 +0100
Message-Id: <1325512207-16501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: tlsf patches
To: barebox@lists.infradead.org

The following are some improvements to the tlsf support, most notably
the support for the meminfo command.

Sascha

Sascha Hauer (3):
      tlsf: enable assertions
      tlsf: implement malloc_stats
      tlsf: remove unused stuff from tlsfbits.h

 common/tlsf.c        |   17 ++---
 common/tlsf_malloc.c |   25 +++++++-
 common/tlsfbits.h    |   55 +++++++++++++++
 include/tlsfbits.h   |  180 --------------------------------------------------
 4 files changed, 85 insertions(+), 192 deletions(-)
 create mode 100644 common/tlsfbits.h
 delete mode 100644 include/tlsfbits.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
