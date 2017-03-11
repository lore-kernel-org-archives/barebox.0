Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmhgF-0000Up-Ds
 for barebox@lists.infradead.org; Sat, 11 Mar 2017 14:07:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 11 Mar 2017 15:07:02 +0100
Message-Id: <20170311140706.8851-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 0/4] upstream led blinking rework
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Sascha Hauer (4):
  led: Allow blinking/flashing on led level
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
