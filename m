Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f41.google.com ([74.125.82.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TODEG-0003KQ-4Y
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 19:55:05 +0000
Received: by mail-wg0-f41.google.com with SMTP id ds1so144666wgb.0
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 12:55:01 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 16 Oct 2012 21:54:54 +0200
Message-Id: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 0/2] openrisc: cleanup generic board
To: barebox@lists.infradead.org

Franck Jullien (2):
  openrisc: switch to defaultenv-2 and change boardinfo
  openrisc: generic board cleanup

 arch/openrisc/Kconfig                   |    3 ++-
 arch/openrisc/boards/generic/config.h   |    7 +++----
 arch/openrisc/boards/generic/generic.c  |    2 +-
 arch/openrisc/configs/generic_defconfig |    4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
