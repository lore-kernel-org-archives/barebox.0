Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gLOBh-0004KD-UZ
 for barebox@lists.infradead.org; Sat, 10 Nov 2018 08:00:16 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 10 Nov 2018 08:59:49 +0100
Message-Id: <20181110075954.32746-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 0/5] random fixes 
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Some random fixes for issues found by https://app.codacy.com

Oleksij Rempel (5):
  commands: keystore: init s_len
  ddr_spd: remove unused array
  video/ssd1307fb: fix potential memory leak on error
  clk: imx: cpu: avoid use after free on error
  of: partition: set ret for error cases

 commands/keystore.c       | 2 +-
 common/ddr_spd.c          | 2 --
 drivers/clk/imx/clk-cpu.c | 4 +++-
 drivers/of/partition.c    | 4 ++--
 drivers/video/ssd1307fb.c | 8 ++++++--
 5 files changed, 12 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
