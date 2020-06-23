Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnjFJ-0003M5-KM
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:45:54 +0000
Received: from vsmx002.vodafonemail.xion.oxcs.net (unknown [192.168.75.192])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTP id D1F98602E79
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2020 13:45:45 +0000 (UTC)
Received: from app-34.app.xion.oxcs.net (app-34.app.xion.oxcs.net [10.10.1.34])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTPA id B6AE06046E6
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2020 13:45:41 +0000 (UTC)
Date: Tue, 23 Jun 2020 15:45:38 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <925732743.424285.1592919941556@mail.vodafone.de>
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
Subject: reset / watchdog on an imx7d soc
To: barebox@lists.infradead.org

Hi,

I'm having problems with the reset command on an imx7d soc.

As far as I understand it, to reboot barebox on an imx7 the 'reset' command
invokes the watchdog1, forcing it to do its job:

in drivers/watchdog/imxwd.c:
static void imx21_soc_reset(struct imx_wd *priv)
...
		val |= IMX21_WDOG_WCR_WDA; /* do not assert ext-reset */

	imxwd_write(priv, IMX21_WDOG_WCR, val);
...


What I see is that shortly after the imxwd_write() call the soc hangs but it
doesn't reboot.

Can anyone confirm that the current barebox is able to restart an imx7 soc without
using external signals ?

Do I need to enable / configure some other soc controller ?

Currently I just enable the wdog1 in my device tree:

...
&wdog1 {
	status = "okay";
};
...

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
