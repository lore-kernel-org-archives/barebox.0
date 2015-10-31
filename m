Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsVtK-0004wx-WC
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 13:08:19 +0000
Received: by lbbwb3 with SMTP id wb3so63722293lbb.1
 for <barebox@lists.infradead.org>; Sat, 31 Oct 2015 06:07:56 -0700 (PDT)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Sat, 31 Oct 2015 14:07:51 +0100
Message-Id: <1446296872-1592-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH] Improve PHY AutoNeg procedure
To: s.hauer@pengutronix.de, barebox@lists.infradead.org

While working with IMX6Q Embedsky E9 I've noticed the problem with
first attempt to run 'ifup eth0'. The root cause of the failure is in PHY
not setting bit '1.2 Link Status' at the same time as setting
bit '1.5 Auto-Negotiation Complete'. The delay between these changes
could be up to 4 ms. PHY is Realtek RTL8211E. The proposed change would
improve handling of similar situations.

Anton Bondarenko (1):
  net: phy: wait for link OK after successfull autonegotiation

 drivers/net/phy/phy.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
