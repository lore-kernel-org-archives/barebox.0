Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Uwy-0006Bv-9Y
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:28 +0000
Received: by mail-wg0-f43.google.com with SMTP id l18so7462133wgh.26
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:04 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:56:44 +0200
Message-Id: <1406015809-20711-1-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 0/5] misc documentation patches
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

This are some minor patches to the documention.

Holger Schurig (5):
  Documentation: remove "all all" in help's help text.
  Documentation: lowercase help short texts
  Documentation: only write changed *.rst files
  Documentation: change generated help lines
  Documentation: revamp dfu's help text

 Documentation/gen_commands.py    | 16 +++++++++++++++-
 commands/dfu.c                   | 15 +++++++++------
 commands/help.c                  |  2 +-
 commands/lspci.c                 |  2 +-
 common/Kconfig                   | 17 +++++++++++++++++
 drivers/ata/Kconfig              |  1 +
 drivers/input/Kconfig            |  2 +-
 drivers/net/Kconfig              |  4 ++++
 drivers/of/base.c                |  2 ++
 drivers/regulator/Kconfig        |  1 +
 drivers/usb/host/Kconfig         |  1 +
 drivers/video/imx-ipu-v3/Kconfig |  1 +

-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
