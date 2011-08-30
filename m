Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QyHIn-0005TL-20
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 05:56:01 +0000
Received: by bke17 with SMTP id 17so5532858bke.36
	for <barebox@lists.infradead.org>; Mon, 29 Aug 2011 22:55:58 -0700 (PDT)
Message-Id: <a1a671b84ae652cef9c8d8fd04f8893e4d906645.1314683390.git.fercerpav@gmail.com>
In-Reply-To: <3c2cf8578f00f7200d39dc396856cb8a63e48d4d.1314683390.git.fercerpav@gmail.com>
References: <3c2cf8578f00f7200d39dc396856cb8a63e48d4d.1314683390.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Tue, 30 Aug 2011 09:39:05 +0400
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
Subject: [RFC][PATCH 3/3] spi: indicate in the docs that per-transfer bpw
	setting is not supported
To: barebox@lists.infradead.org

Currently it's not implemented by any driver so add a note to the
documentation.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 include/spi/spi.h |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 948e050..9d01d06 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -37,7 +37,8 @@ struct spi_board_info {
  *	powers of two bytes (e.g. 20 bit samples use 32 bits).
  *	This may be changed by the device's driver, or left at the
  *	default (0) indicating protocol words are eight bit bytes.
- *	The spi_transfer.bits_per_word can override this for each transfer.
+ *	The spi_transfer.bits_per_word can override this for each transfer
+ *	(FIXME: not currently implemented).
  * @irq: Negative, or the number passed to request_irq() to receive
  *	interrupts from this device.
  * @controller_state: Controller's runtime state
-- 
1.5.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
