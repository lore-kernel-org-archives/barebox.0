Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwjXM-0002OR-06
	for barebox@lists.infradead.org; Thu, 25 Aug 2011 23:40:40 +0000
Received: by gyh20 with SMTP id 20so2601407gyh.36
	for <barebox@lists.infradead.org>; Thu, 25 Aug 2011 16:40:37 -0700 (PDT)
Message-ID: <4E56DD74.4070102@gmail.com>
Date: Thu, 25 Aug 2011 16:40:36 -0700
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Autocomplete fix
To: barebox@lists.infradead.org

Autocomplete fixed: now working also to autocomplete file names as first 
argument.

i.e.:

# ./en<TAB> completes to # ./env/

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
  common/complete.c |   13 +++++++++----
  1 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 46ba871..543e649 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -71,6 +71,7 @@ static int command_complete(struct string_list *sl, 
char *instr)
  {
  	struct command *cmdtp;
  	char cmd[128];
+	int found = 0;

  	for_each_command(cmdtp) {
  		if (!strncmp(instr, cmdtp->name, strlen(instr))) {
@@ -78,10 +79,11 @@ static int command_complete(struct string_list *sl, 
char *instr)
  			cmd[strlen(cmdtp->name)] = ' ';
  			cmd[strlen(cmdtp->name) + 1] = 0;
  			string_list_add(sl, cmd);
+			found = 1;
  		}
  	}

-	return 0;
+	return(found);
  }

  static int tab_pressed = 0;
@@ -116,13 +118,16 @@ int complete(char *instr, char **outstr)

  	instr = t;

-	/* get the completion possibilities */
  	if ((t = strrchr(t, ' '))) {
  		t++;
  		file_complete(&sl, t);
  		instr = t;
-	} else
-		command_complete(&sl, instr);
+	} else {
+		if(!command_complete(&sl, instr)){	
+			file_complete(&sl, instr);
+		}
+	}
+		

  	pos = strlen(instr);

-- 
1.7.6.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
