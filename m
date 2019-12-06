Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idC3E-0004Sa-Am
 for barebox@lists.infradead.org; Fri, 06 Dec 2019 11:45:37 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Fri,  6 Dec 2019 12:45:29 +0100
Message-Id: <20191206114529.13561-1-rhi@pengutronix.de>
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
Subject: [PATCH] README: add section about contributing to barebox
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Signed-off-by: Roland Hieber <rhi@pengutronix.de>

---
  How meta. :-)
---
 README | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/README b/README
index dada97cab32a..d8077d21b618 100644
--- a/README
+++ b/README
@@ -225,6 +225,21 @@ are the release rules:
   people.
 
 
+Contributing
+------------
+
+For any questions regarding Barebox, send a mail to the mailing list at
+<barebox@lists.infradead.org>. The archives for this list are available
+publicly at <http://lists.infradead.org/pipermail/barebox/> and
+<https://www.mail-archive.com/barebox@lists.infradead.org/>.
+
+The same list should also be used to send patches. Barebox uses a similar
+process as the Linux kernel, so most of the Linux guide for submitting patches
+<https://www.kernel.org/doc/html/latest/process/submitting-patches.html> also
+applies to Barebox (except the step for selecting your recipient - we don't
+have a MAINTAINERS file, instead all patches go to the list).
+
+
 License
 -------
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
