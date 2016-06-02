Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjA-00022D-4Z
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:28 +0000
Received: by mail-pf0-x229.google.com with SMTP id b124so26593425pfb.0
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:29 -0700
Message-Id: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 00/22] e1000 code cleanup and iNVM support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

Here's the second version of the patchset, changes since v1:

 - Reworked register offset remapping as per Trent's suggestion


Andrey Smirnov (22):
  e1000: Split driver into multiple files
  e1000: Include <net.h> in e1000.h
  e1000: Convert E1000_*_REG macros to functions
  e1000: Fix a bug in e1000_detect_gig_phy
  e1000: Remove unnecessary variable
  e1000: Do not read same register twice
  e1000: Remove unneeded i210 specific register code
  e1000: Consolidate register offset fixups
  e1000: Remove 'use_eewr' parameter
  e1000: Remove 'page_size'
  e1000: Simplify EEPROM init for e1000_80003es2lan
  e1000: Simplify EEPROM init for e1000_igb
  e1000: Consolidate SPI EEPROM init code
  e1000: Consolidate Microwire EEPROM init code
  e1000: Fix a bug in e1000_probe()
  e1000: Remove unnecessary intialization
  e1000: Refactor Flash/EEPROM reading code
  e1000: Properly release SW_FW_SYNC semaphore bits
  e1000: Add EEPROM access locking for i210
  e1000: Add a "poll register" function
  e1000: Expose i210's iNVM as a cdev
  e1000: Expose i210's external flash as MTD

 drivers/net/Makefile       |    2 +-
 drivers/net/e1000.c        | 4455 --------------------------------------------
 drivers/net/e1000.h        | 2093 ---------------------
 drivers/net/e1000/e1000.h  | 2217 ++++++++++++++++++++++
 drivers/net/e1000/eeprom.c | 1471 +++++++++++++++
 drivers/net/e1000/main.c   | 3702 ++++++++++++++++++++++++++++++++++++
 drivers/net/e1000/regio.c  |   70 +
 7 files changed, 7461 insertions(+), 6549 deletions(-)
 delete mode 100644 drivers/net/e1000.c
 delete mode 100644 drivers/net/e1000.h
 create mode 100644 drivers/net/e1000/e1000.h
 create mode 100644 drivers/net/e1000/eeprom.c
 create mode 100644 drivers/net/e1000/main.c
 create mode 100644 drivers/net/e1000/regio.c

-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
