Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-13.arcor-online.net ([151.189.21.53])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNhSb-0001ou-Nr
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 14:17:54 +0000
Received: from mail-in-20-z2.arcor-online.net (mail-in-20-z2.arcor-online.net
 [151.189.8.85])
 by mx.arcor.de (Postfix) with ESMTP id 3rqyT44WyWz4YsK
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:28 +0200 (CEST)
Received: from mail-in-16.arcor-online.net (mail-in-16.arcor-online.net
 [151.189.21.56])
 by mail-in-20-z2.arcor-online.net (Postfix) with ESMTP id 968A9840568
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:28 +0200 (CEST)
Received: from itng-giorgio.wgast.mobotix.net (wwl-pub.mobotixserver.de
 [213.183.84.172]) (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-16.arcor-online.net (Postfix) with ESMTPA id 3rqyT40Y36z4q78
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:26 +0200 (CEST)
From: iw3gtf@arcor.de
Date: Thu, 14 Jul 2016 16:17:14 +0200
Message-Id: <20160714141718.20121-1-iw3gtf@arcor.de>
In-Reply-To: <20160713051805.GZ20657@pengutronix.de>
References: <20160713051805.GZ20657@pengutronix.de>
In-Reply-To: <20160713051805.GZ20657@pengutronix.de>
References: <20160713051805.GZ20657@pengutronix.de>
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
Subject: [PATCH 0/4] fixes some problems found in the backligth-pwm
 implementation.
To: barebox@lists.infradead.org

This serie fixes some problems found in the backligth-pwm implementation.

root (4):
  video/backlight-pwm: fixed a loop index going out of range.
  video/backlight-pwm: fix the value of 'brightness_max'.
  video/backlight-pwm: code readability improvement.
  video/backlight-pwm: properly handle the case of an empty
    'brightness-levels' in the device tree.

 drivers/video/backlight-pwm.c | 31 ++++++++++++++++++-------------
 1 file changed, 18 insertions(+), 13 deletions(-)

-- 
2.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
