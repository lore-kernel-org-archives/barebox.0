Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqi0H-0006Ow-TF
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:54:11 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Mon, 16 Jul 2012 11:53:57 +0200
Message-Id: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH 0/2] Misc Karo TX51 fixes
To: barebox@lists.infradead.org

The Karo TX51 port in the master tree is currently not booting. These patches
fix it by removing the 'kallsyms' config option.

Another issue fixed is unreliable resetting of the ethernet phy chip.

Christian Kapeller (2):
  tx51: ensure eth phy resets properly by driving reset pin explicitly.
  tx51: Disable kallsyms. It prevents the board from booting.

 arch/arm/boards/karo-tx51/tx51.c    |    8 +++++++-
 arch/arm/configs/tx51stk5_defconfig |    1 -
 2 files changed, 7 insertions(+), 2 deletions(-)

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
