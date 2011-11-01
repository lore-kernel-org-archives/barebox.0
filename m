Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-000103-Bo
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:09:58 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCp-0005eI-Uk
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:31 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:40 +0100
Message-Id: <c1e5708f02c730d9a3d8cf891b4d08e2a8eda557.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 4/9] trivial: fix doxygen error in dlink-dir-320.dox
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox b/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
index d0f5869..1db135b 100644
--- a/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
+++ b/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
@@ -19,7 +19,7 @@ You must setup tftp-server on host 192.168.0.1.
 Put your barebox.bin to tftp-server directory
 (usual /tftpboot or /srv/tftp).
 Connect your DIR-320 to your tftp-server network via
-one of four <LAN> sockets.
+one of four &lt;LAN&gt; sockets.
 
 Next, setup network on DIR-320 and run barebox.bin, e.g.:
 @verbatim
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
