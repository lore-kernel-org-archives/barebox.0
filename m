Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi5-0002BG-CH
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:45 +0000
Received: by mail-we0-f177.google.com with SMTP id x48so1619182wes.22
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:22 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:30 +0200
Message-Id: <1401440856-6145-5-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 04/10] parameters: only show possible enumerations if there
 are any
To: barebox@lists.infradead.org

Enumeration values will only be shown if there are at least two of them.
With only one enumeration, it was just repeating what was previously printed
anyway.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 lib/parameter.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/parameter.c b/lib/parameter.c
index baa2b15..b1f9aa3 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -362,6 +362,9 @@ static void param_enum_info(struct param_d *p)
 	struct param_enum *pe = to_param_enum(p);
 	int i;
 
+	if (pe->num_names <= 1)
+		return;
+
 	printf(" (");
 
 	for (i = 0; i < pe->num_names; i++) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
