Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxEf-0004Nh-6i
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:05:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Oct 2019 12:05:47 +0200
Message-Id: <20191014100547.17832-1-s.hauer@pengutronix.de>
In-Reply-To: <20191002185337.GB32491@ravnborg.org>
References: <20191002185337.GB32491@ravnborg.org>
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
Subject: [PATCH] command: Use array of pointers to commands
To: Barebox List <barebox@lists.infradead.org>

We used to store the commands as a linker array. One problem with this
is that on X86_64 for unknown reasons the linker uses a different struct
alignment than the compiler, so when we use the linker to compose the
array and the compiler to iterate over it we have to play tricks with
manually adjusting the alignment. The other problem is that we declare
the commands as const (and also put it in .rodata), but in fact we do
not treat it as const: we put the commands onto a list which modifies
the struct list_head list member of struct command.

With this patch we no longer put the command themselves into an array,
but instead create an array of pointers to the commands. This inherently
solves the second issue as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/command.c  |  8 ++++----
 include/command.h | 21 +++++++++------------
 2 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/common/command.c b/common/command.c
index d9cc4a6d48..49845938ae 100644
--- a/common/command.c
+++ b/common/command.c
@@ -149,12 +149,12 @@ EXPORT_SYMBOL(find_cmd);
  */
 static int init_command_list(void)
 {
-	struct command *cmdtp;
+	struct command * const *cmdtp;
 
-	for (cmdtp = &__barebox_cmd_start;
-			cmdtp != &__barebox_cmd_end;
+	for (cmdtp = __barebox_cmd_start;
+			cmdtp != __barebox_cmd_end;
 			cmdtp++)
-		register_command(cmdtp);
+		register_command(*cmdtp);
 
 	return 0;
 }
diff --git a/include/command.h b/include/command.h
index 0afc5c7550..7555d0053c 100644
--- a/include/command.h
+++ b/include/command.h
@@ -53,15 +53,10 @@ struct command {
 	const char	*help;		/* Help  message	(long)	*/
 	void		(*usage)(void);
 #endif
-}
-#ifdef __x86_64__
-/* This is required because the linker will put symbols on a 64 bit alignment */
-__attribute__((aligned(64)))
-#endif
-;
+};
 
-extern struct command __barebox_cmd_start;
-extern struct command __barebox_cmd_end;
+extern struct command * const __barebox_cmd_start[];
+extern struct command * const __barebox_cmd_end[];
 
 
 /* common/command.c */
@@ -89,10 +84,12 @@ int run_command(const char *cmd);
 
 #endif	/* __ASSEMBLY__ */
 
-#define BAREBOX_CMD_START(_name)							\
-extern const struct command __barebox_cmd_##_name;					\
-const struct command __barebox_cmd_##_name						\
-	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name)))) = {	\
+#define BAREBOX_CMD_START(_name)						\
+static struct command __barebox_cmd_##_name;					\
+const struct command *barebox_cmd_##_name 					\
+	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name))))	\
+			= &__barebox_cmd_##_name;				\
+static struct command __barebox_cmd_##_name = {					\
 	.name		= #_name,
 
 #define BAREBOX_CMD_END					\
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
