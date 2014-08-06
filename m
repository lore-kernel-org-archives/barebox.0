Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEu1e-0002lu-0B
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 05:44:40 +0000
Received: by mail-la0-f53.google.com with SMTP id gl10so1550736lab.12
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 22:44:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Aug 2014 09:44:04 +0400
Message-Id: <1407303846-15550-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
References: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] openrisc: add barebox.lds to .gitignore
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/openrisc/cpu/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/openrisc/cpu/.gitignore b/arch/openrisc/cpu/.gitignore
new file mode 100644
index 0000000..d116578
--- /dev/null
+++ b/arch/openrisc/cpu/.gitignore
@@ -0,0 +1 @@
+barebox.lds
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
