Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua3yI-00006l-Bp
 for barebox@lists.infradead.org; Wed, 08 May 2013 12:59:55 +0000
Received: from isonoe.hi.pengutronix.de ([10.1.0.76])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ua3xw-0006j1-AK
 for barebox@lists.infradead.org; Wed, 08 May 2013 14:59:28 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 8 May 2013 14:57:07 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201305081457.07670.jbe@pengutronix.de>
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
Subject: MXS: fix SoC detecting
To: barebox@lists.infradead.org

The missing 'break' statement lets look an i.MX23 like an i.MX28.
    
Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index cdf9275..fcb26f7 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -101,6 +101,7 @@ static void mxs_silicon_revision(void)
 		case 0x3: revision = SILICON_REVISION_1_3; break;
 		case 0x4: revision = SILICON_REVISION_1_4; break;
 		}
+		break;
 	case HW_DIGCTL_CHIPID_MX28:
 		product = "i.MX28";
 		switch (rev) {

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
