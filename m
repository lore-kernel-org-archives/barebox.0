Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp109.iad3a.emailsrvr.com ([173.203.187.109])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAywm-0001ZQ-PN
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:25:02 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 17 May 2017 14:24:21 +0100
Message-Id: <20170517132426.13367-1-abbotti@mev.co.uk>
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
Subject: [PATCH 1/6] commands: allow <cmd>_aliases[] to be const
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

Commands with aliases define an array of alias strings such as:

  static const char *<cmd>_aliases[] = { "<alias1>", NULL};

Although the elements are of type `const char *`, the elements
themselves are not `const`-qualified.  If the array is declared as:

  static const char * const <cmd>_aliases[] = { "<alias1>", NULL};

then the compiler warns about const qualifiers being discarded.  This is
because the `aliases` member of `struct command` is declared as `const
char *aliases;`.

Change the declaration of the `aliases` member of `struct command` to
`const char * const *aliases;` so that it can point to a `const` array
of `const char *`.  Also change the declaration of the `aliases`
variable in `register_command()` to avoid unnecessary type casts.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 common/command.c  | 2 +-
 include/command.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/command.c b/common/command.c
index 03c70834d..d9cc4a6d4 100644
--- a/common/command.c
+++ b/common/command.c
@@ -104,7 +104,7 @@ int register_command(struct command *cmd)
 	list_add_sort(&cmd->list, &command_list, compare);
 
 	if (cmd->aliases) {
-		char **aliases = (char**)cmd->aliases;
+		const char * const *aliases = cmd->aliases;
 		while(*aliases) {
 			struct command *c = xzalloc(sizeof(struct command));
 
diff --git a/include/command.h b/include/command.h
index 43ee454f2..0afc5c755 100644
--- a/include/command.h
+++ b/include/command.h
@@ -40,7 +40,7 @@ struct string_list;
  */
 struct command {
 	const char	*name;		/* Command Name			*/
-	const char	**aliases;
+	const char	* const *aliases;
 					/* Implementation function	*/
 	int		(*cmd)(int, char *[]);
 	int		(*complete)(struct string_list *sl, char *instr);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
