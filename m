Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-000104-Bv
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:09:58 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCq-0005eI-1P
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:32 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:43 +0100
Message-Id: <28b9f3fa38cffe9b26094d6d945e63f92803e2d4.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 7/9] doxygen: Enable LONGHELP output in generated output
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 Doxyfile |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/Doxyfile b/Doxyfile
index 89151e3..9d556b3 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -1070,7 +1070,8 @@ INCLUDE_FILE_PATTERNS  =
 PREDEFINED             = \
 			DOXYGEN_SHOULD_SKIP_THIS \
 			CONFIG_CMD_DEVINFO \
-			CONFIG_NET_TFTP_PUSH
+			CONFIG_NET_TFTP_PUSH \
+			CONFIG_LONGHELP
 
 # If the MACRO_EXPANSION and EXPAND_ONLY_PREDEF tags are set to YES then
 # this tag can be used to specify a list of macro names that should be expanded.
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
