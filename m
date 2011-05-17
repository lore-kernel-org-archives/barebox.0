Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMIqn-0006YZ-1Q
	for barebox@lists.infradead.org; Tue, 17 May 2011 11:54:10 +0000
Received: by wyb28 with SMTP id 28so368890wyb.36
	for <barebox@lists.infradead.org>; Tue, 17 May 2011 04:54:07 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Tue, 17 May 2011 13:53:54 +0200
Message-Id: <1305633234-27771-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] sandbox: allow lseek on host files
To: barebox@lists.infradead.org

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 arch/sandbox/board/hostfile.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index e460d0a..b049baa 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -66,6 +66,7 @@ static void hf_info(struct device_d *dev)
 static struct file_operations hf_fops = {
 	.read  = hf_read,
 	.write = hf_write,
+	.lseek = dev_lseek_default,
 };
 
 static int hf_probe(struct device_d *dev)
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
