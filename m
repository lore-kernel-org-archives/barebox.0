Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOv2-00019p-Ul
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 10:32:10 +0000
Received: by mail-qk1-x730.google.com with SMTP id c16so22186012qko.6
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 02:31:58 -0800 (PST)
MIME-Version: 1.0
From: Frederick Gotham <cauldwell.thomas@gmail.com>
Date: Fri, 17 Jan 2020 10:31:56 +0000
Message-ID: <CALtZhhPbqBmyHUDqb+mg=JfAP1GioitSSE0d119ACf9kw5J_CQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: cauldwell.thomas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Cannot get 'wd' to appear
To: barebox@lists.infradead.org

I'm running embedded Linux on a quadcore x86_64 machine, and I'm using
Buildroot.

If I go into the "menuconfig" for Barebox, I find;

WATCHDOG
RAVE_SP_WATCHDOG
WATCHDOG_AR9344
WATCHDOG_BCM2835
WATCHDOG_DAVINCI
WATCHDOG_DW
WATCHDOG_IMX
WATCHDOG_IMX_RESET_SOURCE
WATCHDOG_JZ4740
WATCHDOG_MXS28
WATCHDOG_OMAP
WATCHDOG_ORION
WATCHDOG_POLLER

I don't see the driver for the watchdog timer inside my Intel CPU, but
for the time being I have enabled the module WATCHDOG.

I thought at the very least, if I enabled "WATCHDOG", then I would be
able to use the command "wd" at the command prompt, but this isn't so.
"wd" is an unrecognised command.

What do I have to do in order to get the "wd" command to work?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
