Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjICY-0002rH-KX
 for barebox@lists.infradead.org; Thu, 11 Jun 2020 08:04:44 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu, 11 Jun 2020 10:02:03 +0200
Message-Id: <20200611080207.6482-4-cleger@kalray.eu>
In-Reply-To: <20200611080207.6482-1-cleger@kalray.eu>
References: <20200611080207.6482-1-cleger@kalray.eu>
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
Subject: [PATCH v5 3/7] common: elf: check number of elf program headers
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

An elf file without program headers should not be loaded. Add a check
for such cases.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/elf.c b/common/elf.c
index 0e92661e1..bd97858c8 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -119,6 +119,11 @@ static int elf_check_image(struct elf_image *elf)
 		return -ENOEXEC;
 	}
 
+	if (!elf_hdr_e_phnum(elf, elf->buf)) {
+		pr_err("No phdr found.\n");
+		return -ENOEXEC;
+	}
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
