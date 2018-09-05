Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.129])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxRBR-0001rB-Uk
 for barebox@lists.infradead.org; Wed, 05 Sep 2018 06:20:59 +0000
From: <Oleg.Karfich@wago.com>
Date: Wed, 5 Sep 2018 06:20:38 +0000
Message-ID: <1536128432-21031-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH 0/2] add support for pca955x i2c led drivers
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Hi,

this series adds support for the pca955x i2c-bus led drivers. The driver is
ported from the linux kernel and is reduced for locking and gpio support (could
not be tested by us, so we leave it out). Documentation is already there [1].

We tested this driver on our board with the led driver in [2].

[1] dts/Bindings/leds/leds-pca955x.txt
[2] https://www.nxp.com/docs/en/data-sheet/PCA9552.pdf

Oleg Karfich (2):
  led: add pca955x led support
  led: use max led value in case of led trigger

 drivers/led/Kconfig       |   9 +
 drivers/led/Makefile      |   1 +
 drivers/led/core.c        |   4 +-
 drivers/led/led-pca955x.c | 421 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 434 insertions(+), 1 deletion(-)
 create mode 100644 drivers/led/led-pca955x.c

-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
