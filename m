Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lyn-0002XZ-Pt
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:56:07 +0000
Received: by lfaz4 with SMTP id z4so102032263lfa.0
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 23:55:43 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 23 Nov 2015 10:55:34 +0300
Message-Id: <1448265336-15862-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [just RFC 0/2] serial: ns16550: add Ralink UART support
To: barebox@lists.infradead.org

Please dont apply this patchseries! It's for review only!

This patchseries adds support for ns16550-like UART
used in Ralink/Mediatek SoCs. This UART uses non-standard
register addresses.

This patchseries was tested on MT7620N SoC.

Antony Pavlov (2):
  serial: ns16550: introduce custom divisor latch setter
  serial: ns16550: add Ralink UART support

 drivers/serial/Kconfig          |  8 ++++
 drivers/serial/serial_ns16550.c | 88 +++++++++++++++++++++++++++++++++++++++--
 2 files changed, 93 insertions(+), 3 deletions(-)

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
