Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAC4u-0003zK-0Q
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 11:55:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Sep 2019 13:55:15 +0200
Message-Id: <20190917115518.14953-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190917115518.14953-1-a.fatoum@pengutronix.de>
References: <20190917115518.14953-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 3/6] filetype: support fastboot barebox_update with
 layerscape image
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We do not yet support USB on the Layerscape platforms, but when we do,
it's imaginable that we would want to export barebox_update targets over
Fastboot. Prepare for this by adding the layerscape images to those that
filetype_is_barebox_image returns true for.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 825bf25ad107..4966c5e068bd 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -460,6 +460,8 @@ bool filetype_is_barebox_image(enum filetype ft)
 	case filetype_mips_barebox:
 	case filetype_ch_image:
 	case filetype_ch_image_be:
+	case filetype_layerscape_image:
+	case filetype_layerscape_qspi_image:
 		return true;
 	default:
 		return false;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
