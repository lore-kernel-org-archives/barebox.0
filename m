Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-16.arcor-online.net ([151.189.21.56])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bMapI-0006LZ-J1
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 13:00:45 +0000
Received: from mail-in-03-z2.arcor-online.net (mail-in-03-z2.arcor-online.net
 [151.189.8.15])
 by mx.arcor.de (Postfix) with ESMTP id 3rp46V1hFWz6Bxl
 for <barebox@lists.infradead.org>; Mon, 11 Jul 2016 14:24:50 +0200 (CEST)
Received: from mail-in-11.arcor-online.net (mail-in-11.arcor-online.net
 [151.189.21.51])
 by mail-in-03-z2.arcor-online.net (Postfix) with ESMTP id 357001F678B
 for <barebox@lists.infradead.org>; Mon, 11 Jul 2016 14:24:50 +0200 (CEST)
Received: from webmail22.arcor-online.net (webmail22.arcor-online.net
 [151.189.8.137])
 by mail-in-11.arcor-online.net (Postfix) with ESMTP id 3rp46V1Hqfz40jH
 for <barebox@lists.infradead.org>; Mon, 11 Jul 2016 14:24:50 +0200 (CEST)
Date: Mon, 11 Jul 2016 14:24:50 +0200 (CEST)
From: iw3gtf@arcor.de
Message-ID: <1481832949.59258.1468239890158.JavaMail.ngmail@webmail22.arcor-online.net>
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
Subject: problem configuring backlight brightness levels in device tree
To: barebox@lists.infradead.org

Hi,

I was trying to configure a pwm backlight on an embedded arm board
and I think I've found a minor problem.

In the source file 'drivers/video/backlight-pwm.c', in the function pwm_backlight_parse_dt()
you set the number of brightness values to:

pwm_backlight->backlight.brightness_max = length / sizeof(u32);

and then loop through the array with:

for (i = 0; i <=  pwm_backlight->backlight.brightness_max; i++)

to find the max of the array.

I think the '<=' should be a '<' otherwise you access an uninitialized value
one past the end of the array; this actually does not directly crash barebox
but the whole brightness values are scaled wrong.

giorgio


Giorgio, iw3gtf@arcor.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
