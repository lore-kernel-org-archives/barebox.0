Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-000102-9M
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:09:55 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCq-0005eI-06
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:32 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:42 +0100
Message-Id: <3ef0ea7905f52a82090cf4dc0e1a76ccdecc8bf6.1320141619.git.mark.vels@team-embedded.nl>
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
Subject: [PATCH 6/9] docs: Enable BAREBOX_CMD_HELP_TEXT() in generated
	documentation
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 include/command.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/include/command.h b/include/command.h
index e221546..9a90e0b 100644
--- a/include/command.h
+++ b/include/command.h
@@ -95,7 +95,7 @@ static const __maybe_unused char cmd_##_name##_help[] =
 #define BAREBOX_CMD_HELP_USAGE(_name) "Usage: " _name
 #define BAREBOX_CMD_HELP_SHORT(_text) _text
 #define BAREBOX_CMD_HELP_OPT(_opt, _desc) _opt "\t" _desc
-#define BAREBOX_CMD_HELP_TEXT(_text)
+#define BAREBOX_CMD_HELP_TEXT(_text) _text
 #define BAREBOX_CMD_HELP_END ;
 
 #ifdef CONFIG_LONGHELP
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
