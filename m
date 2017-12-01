Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPw-0003OI-C6
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 24/27] defaultenv: Add README for new network config
Date: Fri,  1 Dec 2017 12:22:53 +0100
Message-Id: <20171201112256.20196-25-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Network configuration has changed. In case somebody looks
to the old /env/network/ directoy place a README there to add
a pointer how the new configuration is done.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/network/README | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 defaultenv/defaultenv-2-base/network/README

diff --git a/defaultenv/defaultenv-2-base/network/README b/defaultenv/defaultenv-2-base/network/README
new file mode 100644
index 0000000000..4b47807a1a
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/network/README
@@ -0,0 +1,3 @@
+Network configuration is now done with nvvars, see
+Documentation/user/networking.rst. Files in this directory are not needed
+anymore.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
