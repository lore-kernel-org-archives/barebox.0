Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22e.google.com ([2607:f8b0:400e:c02::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpxJK-0000Dg-TJ
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 09:39:31 +0000
Received: by mail-pd0-f174.google.com with SMTP id y13so4933044pdi.33
 for <barebox@lists.infradead.org>; Mon, 09 Dec 2013 01:39:07 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Mon,  9 Dec 2013 01:38:58 -0800
Message-Id: <1386581938-9663-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] scripts: add arch/x86/lib/barebox.lds to gitignore
To: barebox@lists.infradead.org

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/x86/lib/.gitignore |    2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 arch/x86/lib/.gitignore

diff --git a/arch/x86/lib/.gitignore b/arch/x86/lib/.gitignore
new file mode 100644
index 0000000..542522e
--- /dev/null
+++ b/arch/x86/lib/.gitignore
@@ -0,0 +1,2 @@
+barebox.lds
+
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
