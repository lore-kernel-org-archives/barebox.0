Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NnV8M-0006I2-Gu
	for barebox@lists.infradead.org; Fri, 05 Mar 2010 10:51:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id E2961BF0CE
	for <barebox@lists.infradead.org>; Fri,  5 Mar 2010 11:50:55 +0100 (CET)
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 05 Mar 2010 11:51:50 +0100
Message-ID: <1267786310.19729.11.camel@lws-weitzel>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [Patch] hush exit code fix
To: barebox@lists.infradead.org

hush: pass return code from exit command within if statement

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
diff --git a/common/hush.c b/common/hush.c
index cf6704b..ae09374 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -535,10 +535,9 @@ static int run_pipe_real(struct pipe *pi)
        if (pi->num_progs == 1)
                child = & (pi->progs[0]);
        if (pi->num_progs == 1 && child->group) {
-               int rcode;
                debug("non-subshell grouping\n");
-               rcode = run_list_real(child->group);
-               return rcode;
+               run_list_real(child->group);
+               return last_return_code;
        } else if (pi->num_progs == 1 && pi->progs[0].argv != NULL) {
                for (i=0; is_assignment(child->argv[i]); i++) { /* nothing */ }
                if (i!=0 && child->argv[i]==NULL) {



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
