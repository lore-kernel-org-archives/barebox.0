Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmyjJ-0000Ep-8X
 for barebox@lists.infradead.org; Sun, 12 Mar 2017 08:19:57 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sun, 12 Mar 2017 09:19:20 +0100
Message-Id: <20170312081924.10179-1-o.rempel@pengutronix.de>
In-Reply-To: <20170311140706.8851-1-o.rempel@pengutronix.de>
References: <20170311140706.8851-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 0/4] upstream led blinking rework
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v1:
 - merge blinking/flashing and led_blink_pattern patches
 - remove new unsued variables from structs
 - add sanity check in the led command to avoid simultan -b anf -f options

changes v2:
 - reword commit message in "led: add blinking/flashing..." patch

Sascha Hauer (4):
  led: add blinking/flashing and led_blink_pattern interface
  led: Add blink/flash to led command
  led: trigger: Use led triggers
  led-trigger: rework

 commands/led.c             |  44 ++++++++++++-
 commands/trigger.c         |  54 ++++++++--------
 drivers/led/core.c         | 102 ++++++++++++++++++++++++++++-
 drivers/led/led-triggers.c | 157 ++++++++++++++++++++++++++++-----------------
 include/led.h              |  17 ++++-
 5 files changed, 287 insertions(+), 87 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
