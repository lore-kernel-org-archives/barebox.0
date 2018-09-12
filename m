Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g05TN-0004gE-8w
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 13:46:27 +0000
Received: by mail-wm0-x22e.google.com with SMTP id o18-v6so2523187wmc.0
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 06:46:13 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 12 Sep 2018 15:45:43 +0200
Message-Id: <20180912134550.3970-1-aleksander@aleksander.es>
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
Subject: [PATCH v2 0/7] RATP i2c and GPIO support
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, Aleksander Morgado <aleksander@aleksander.es>

This series of patches implements support for i2c and GPIO operations via RATP. 

It addresses most of the comments from the first series review, except for Sascha's suggestion to implement name resolving for the i2c buses and Andrey's suggestion to prepare a new helper method to initialize the i2c_client structure. I already have a patch for the latter, but will send it for review once these have been accepted and merged, as it's really a bit orthogonal to the whole RATP logic.

Another different w.r.t. v1 apart from addressing the comments is the review is that I made the RATP i2c support depend on CONFIG_I2C and the RATP GPIO support on CONFIG_GENERIC_GPIO. That was missing, and was breaking build if RATP was selected but no i2c or GPIO support was included in the build.

Comments welcome!

Aleksander Morgado (7):
  ratp: implement i2c read/write support
  bbremote: implement i2c read/write support
  ratp: implement support for GPIO commands
  bbremote: implement support for GPIO operations
  ratp: use __packed instead of the full form
  ratp: use pr_ macros to print messages
  ratp: fix incorrect whitespaces in method calls

 common/ratp/Kconfig          |  15 ++
 common/ratp/Makefile         |   2 +
 common/ratp/getenv.c         |  12 +-
 common/ratp/gpio.c           | 144 ++++++++++++++++++
 common/ratp/i2c.c            | 284 +++++++++++++++++++++++++++++++++++
 common/ratp/md.c             |  24 +--
 common/ratp/mw.c             |  24 +--
 common/ratp/reset.c          |  10 +-
 include/ratp_bb.h            |  10 ++
 scripts/remote/controller.py |  60 ++++++++
 scripts/remote/main.py       |  74 +++++++++
 scripts/remote/messages.py   | 179 ++++++++++++++++++++++
 12 files changed, 806 insertions(+), 32 deletions(-)
 create mode 100644 common/ratp/gpio.c
 create mode 100644 common/ratp/i2c.c

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
