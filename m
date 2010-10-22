Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Kkd-0002cK-HF
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:59 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:08 +0200
Message-Id: <1287765924-1856-17-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 16/32] doc: fix wrongly named parameter
To: barebox@lists.infradead.org

Silence this warning:

lib/parameter.c:85: Warning: argument `value' of command @param is not found in the argument list of dev_set_param(struct device_d *dev, const char *name, const char *val)
lib/parameter.c:85: Warning: The following parameters of dev_set_param(struct device_d *dev, const char *name, const char *val) are not documented:
  parameter val

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 lib/parameter.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 0aa4193..379a057 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -86,7 +86,7 @@ int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
  * dev_set_param - set a parameter of a device to a new value
  * @param dev	The device
  * @param name	The name of the parameter
- * @param value	The new value of the parameter
+ * @param val	The new value of the parameter
  */
 int dev_set_param(struct device_d *dev, const char *name, const char *val)
 {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
