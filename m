Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXm5c-0001x4-Nu
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 06:34:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 08:34:02 +0200
Message-Id: <1397025244-31641-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Fix inb/outb definitions for ppc/mips
To: barebox@lists.infradead.org

The recent addition of iospace operations to the ns16550 driver break
mips and ppc compilation. The following fixes this.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      ppc: io: Add _IO_BASE define
      mips: io: include generic io.h

 arch/mips/include/asm/io.h | 2 ++
 arch/ppc/include/asm/io.h  | 1 +
 2 files changed, 3 insertions(+)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
