Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpAj-0002c5-DJ
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:30:54 +0000
Date: Thu, 12 Feb 2015 09:30:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150212083029.GP12209@pengutronix.de>
References: <1423577638-27907-1-git-send-email-w.egorov@phytec.de>
 <1423577638-27907-2-git-send-email-w.egorov@phytec.de>
 <20150211073910.GF12209@pengutronix.de>
 <54DB279E.7070806@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54DB279E.7070806@phytec.de>
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
Subject: Re: [PATCH v3: For next 2/2] ARM: am33xx: Add support for reset
 reason detection
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 11, 2015 at 10:57:50AM +0100, Wadim Egorov wrote:
> 
> On 11.02.2015 08:39, Sascha Hauer wrote:
> >On Tue, Feb 10, 2015 at 03:13:58PM +0100, Wadim Egorov wrote:
> >>Also activate in defconfig.
> >>
> >>Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> >>+		break;
> >>+	case (1 << 1):
> >>+		reset_source_set(RESET_RST);
> >>+		break;
> >>+	case (1 << 0):
> >>+		reset_source_set(RESET_POR);
> >>+		break;
> >>+	default:
> >>+		reset_source_set(RESET_UKWN);
> >>+		break;
> >>+	}
> >>+
> >>+	return 0;
> >>+}
> >>+device_initcall(am33xx_detect_reset_reason);
> >No SoC specific initcall without testing if you're running on the
> >correct SoC please. Better call it from am33xx_init() which is only
> >executed on am33xx.
> >
> >Sascha
> Calling it from am33xx_init() was also my idea in the first place.
> AFAIK you have to call reset_source_set() after coredevice_initcall().
> So it is not possible to call it from am33xx_init().

Could you try this patch? It shoud resolve this issue.

Sascha

------------------------8<---------------------------------

From a6efde9c06046111cfe2ad92bb38430674a893b7 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:27:35 +0100
Subject: [PATCH] reset_source: make safe to call earlier

reset_source_init used to set the reset source to unknown in a
coredevice_initcall. This means if reset_source_set() has been called
earlier the value would have been overwritten. Fix this by calling
globalvar_add_simple() each time reset_source_set() is called.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/reset_source.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index 946670b..0147b5c 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -40,14 +40,14 @@ void reset_source_set(enum reset_src_type st)
 {
 	reset_source = st;
 
-	setenv("global.system.reset", reset_src_names[st]);
+	globalvar_add_simple("system.reset", reset_src_names[reset_source]);
 }
 EXPORT_SYMBOL(reset_source_set);
 
 /* ensure this runs after the 'global' device is already registerd */
 static int reset_source_init(void)
 {
-	globalvar_add_simple("system.reset", reset_src_names[RESET_UKWN]);
+	reset_source_set(reset_source);
 
 	return 0;
 }
-- 
2.1.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
