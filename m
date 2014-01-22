Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66ds-0007GB-7z
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 22:51:28 +0000
Received: by mail-bk0-f51.google.com with SMTP id w10so100353bkz.10
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 14:51:01 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Wed, 22 Jan 2014 23:50:45 +0100
Message-Id: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 0/4] Asix AX88772B support
To: barebox@lists.infradead.org
Cc: Marek Vasut <marek.vasut@gmail.com>

This patch series picks up some changes from the linux kernel
to make Asix AX88772B based USB Ethernet dongles work.

Marek Vasut (2):
  net usb asix: Simplify condition in rx_fixup()
  net usb asix: Use only 11 bits of header for data size

Philipp Zabel (2):
  net usb asix: read MAC from EEPROM on AX88772B
  net usb asix: add AX88772B USB ID

 drivers/net/usb/asix.c | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

regards
Philipp

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
