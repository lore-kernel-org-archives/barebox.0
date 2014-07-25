Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAb59-00032F-JB
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 08:42:29 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XAb4n-0005Xk-G7
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 10:42:05 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1XAb4n-0004qK-Ea
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 10:42:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Jul 2014 10:42:01 +0200
Message-Id: <1406277724-4370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ext4 fixes from U-Boot
To: barebox@lists.infradead.org

The following are some ext4 fixes taken from U-Boot.

----------------------------------------------------------------
Sascha Hauer (3):
      fs: ext4: fix "invalid extent block" error
      fs: ext4: use EXT2_BLOCK_SIZE instead of fs->blksz
      fs: ext4: le32_to_cpu() used on a 16-bit field

 fs/ext4/ext4_common.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
