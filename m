Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWg7-0007vB-E0
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 12:20:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2019 14:20:47 +0200
Message-Id: <20191021122047.12204-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191021122047.12204-1-a.fatoum@pengutronix.de>
References: <20191021122047.12204-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] commands: passwd: suggest sandbox for offline password
 generation
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Users might want to generate the password while the target is offline.
We don't provide a dedicated host tool for that, but barebox sandbox can
be used. Document this possibility.

While at it, remove a misplaced single quite and slash in the help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 0189b4715bb9..a6db52ae54b7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1389,8 +1389,10 @@ config CMD_PASSWD
 	help
 	  Set password
 
-	  'Interactively asks for a password. The digest of this password will be
-	  stored in /env/etc//passwd. This is then used by the 'login' command.
+	  Interactively asks for a password. The digest of this password will be
+	  stored in /env/etc/passwd. This is then used by the 'login' command.
+
+	  Passwords can be generated on the host machine using barebox sandbox.
 
 	  Entering an empty string will disable the password function.
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
