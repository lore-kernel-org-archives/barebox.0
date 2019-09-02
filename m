Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4klk-0005dH-CD
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 11:45:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Sep 2019 13:44:57 +0200
Message-Id: <20190902114459.12171-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/2] Fix buffer overflows in nfs code
To: Barebox List <barebox@lists.infradead.org>

These patches fix possible buffer overflows in the nfs code. We take a
32bit value read from an incoming network packet as length argument to
memcpy without boundary checking. The patches add the necessary boundary
checks. The patches can be backported to any past version, let me know
if you are interested in any specific version.

Sascha Hauer (2):
  net: nfs: Fix possible buffer overflow
  fs: nfs: Fix possible buffer overflow

 fs/nfs.c  | 4 ++++
 net/nfs.c | 5 ++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
