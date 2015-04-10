Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ygb96-0003My-QL
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 15:47:05 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 10 Apr 2015 17:37:57 +0200
Message-Id: <1428680277-14139-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1428680277-14139-1-git-send-email-r.schwebel@pengutronix.de>
References: <1428680277-14139-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: rename powerpc manual to .rst
To: barebox@lists.infradead.org

Fixes:
Documentation/boards/powerpc.rst:6: WARNING: toctree glob pattern u'boards/powerpc/*' didn't match any documents

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 .../{Phytec-phyCORE-MPC5200-Tiny => Phytec-phyCORE-MPC5200-Tiny.rst}      | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/boards/powerpc/{Phytec-phyCORE-MPC5200-Tiny => Phytec-phyCORE-MPC5200-Tiny.rst} (100%)

diff --git a/Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny b/Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny.rst
similarity index 100%
rename from Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny
rename to Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny.rst
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
