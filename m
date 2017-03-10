Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmDgS-0001BG-Gb
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 06:05:53 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 10 Mar 2017 07:05:20 +0100
Message-Id: <20170310060523.25810-1-o.rempel@pengutronix.de>
In-Reply-To: <20170309175832.20213-2-o.rempel@pengutronix.de>
References: <20170309175832.20213-2-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 0/3] upstream console_countdown related work
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v3:
 - make console_countdown_timeout_abort static bool

changes v2:
 - add my Signed-of-by

Marc Kleine-Budde (3):
  console_countdown: width to of countdown to 4 digits
  console_countdown: add possibility to abort countdown by external
    commands
  fastboot: abort autoboot timeout when fastboot gadget is activated

 commands/timeout.c              |  8 ++++++--
 common/console_countdown.c      | 19 +++++++++++++++++--
 drivers/usb/gadget/f_fastboot.c |  3 +++
 include/console_countdown.h     |  2 ++
 4 files changed, 28 insertions(+), 4 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
