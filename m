Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLh5J-0000HE-JU
	for barebox@lists.infradead.org; Sun, 15 May 2011 19:34:38 +0000
Received: by wyb28 with SMTP id 28so3786453wyb.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 12:34:35 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun, 15 May 2011 21:34:27 +0200
Message-Id: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 0/5] [Nios2]: Differents fixes
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

There is some minor fixes.

Franck JULLIEN (5):
  [Nios2]: Update generic env/config
  [Nios2]: Fix typo in generic.c
  [Nios2]: Change system frequency in generic board
  [Nios2]: Fix compiler warning
  [Nios2]: Fix dma mapping end address

 arch/nios2/boards/generic/env/config  |    5 +++++
 arch/nios2/boards/generic/generic.c   |    4 ++--
 arch/nios2/boards/generic/nios_sopc.h |   12 ++++++------
 arch/nios2/include/asm/dma-mapping.h  |    2 +-
 drivers/net/altera_tse.c              |    2 +-
 5 files changed, 15 insertions(+), 10 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
