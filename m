Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gRu-0005Zo-4M
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:19:55 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:19:41 +0200
Message-Id: <20190822061941.6093-6-ahmad@a3f.at>
In-Reply-To: <20190822061941.6093-1-ahmad@a3f.at>
References: <20190822061941.6093-1-ahmad@a3f.at>
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
Subject: [PATCH 5/5] commands: fix unaligned accesses of aliased commands on
 amd64
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

If a command has aliases (e.g. edit and sedit), register_command
allocates a new struct command for the alias. As struct command has a
alignment of 64 specified on __x86_64__, this new allocation needs to
observe the alignment lest unaligned access could occur. I don't think
it's likely that GCC would generate SIMD code here that expects a 64 byte
alignment, but heed UBSan's advice and use xmemalign with the appropriate
alignment.

Fixes: 8c14b97758 ("svn_rev_477")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
I am not sure about this, because I don't understand why there was a 64
bit alignment in the x86_64 linker script in the first place.
The fix is trivial though, so even if it's only a theoretical, lets have
it? 
---
 common/command.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/command.c b/common/command.c
index d9cc4a6d4887..09655e9e78d5 100644
--- a/common/command.c
+++ b/common/command.c
@@ -106,7 +106,7 @@ int register_command(struct command *cmd)
 	if (cmd->aliases) {
 		const char * const *aliases = cmd->aliases;
 		while(*aliases) {
-			struct command *c = xzalloc(sizeof(struct command));
+			struct command *c = xmemalign(__alignof__(*c), sizeof *c);
 
 			memcpy(c, cmd, sizeof(struct command));
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
