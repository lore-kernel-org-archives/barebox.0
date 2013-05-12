Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f172.google.com ([209.85.217.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubc6F-0007Cs-5C
 for barebox@lists.infradead.org; Sun, 12 May 2013 19:38:29 +0000
Received: by mail-lb0-f172.google.com with SMTP id y6so5717758lbh.3
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 12:38:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 May 2013 23:37:10 +0400
Message-Id: <1368387430-31533-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] ppc: boards: add barebox.lds to .gitignore
To: barebox@lists.infradead.org

Without this patch after compiling barebox
for a PowerPC board we have 'git status'
output looking like this:

  # Untracked files:
  #   (use "git add <file>..." to include in what will be committed)
  #
  #       arch/ppc/boards/pcm030/barebox.lds

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/ppc/boards/.gitignore |    1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/ppc/boards/.gitignore

diff --git a/arch/ppc/boards/.gitignore b/arch/ppc/boards/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/ppc/boards/.gitignore
@@ -0,0 +1 @@
+barebox.lds
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
