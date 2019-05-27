Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001nC-Mn
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000222-Q9
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Dc-SK
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:34 +0200
Message-Id: <20190527095744.5923-9-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 08/18] scripts: bareboximd: remove usage of loff_t
To: barebox@lists.infradead.org

loff_t is Linux-specific and unneeded at this place, as sizes are usually
denoted with a size_t. As the signedness of max_size isn't relied on
anywhere, replace it with a size_t.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/bareboximd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 7d4cbeb9a83f..81a59ec63c23 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -58,7 +58,7 @@ int imd_command_setenv(const char *variable_name, const char *value)
 	return -EINVAL;
 }
 
-static int read_file_2(const char *filename, size_t *size, void **outbuf, loff_t max_size)
+static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
 {
 	off_t fsize;
 	ssize_t rsize;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
