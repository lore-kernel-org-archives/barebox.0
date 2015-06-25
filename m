Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z81gc-0002rb-4f
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 07:35:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z7zo6-0005rj-1I
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 07:34:38 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z81gE-0006I9-M3
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 09:34:38 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 25 Jun 2015 09:34:32 +0200
Message-Id: <1435217677-9525-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv3] Change barebox regarding "machine-restart",
 "reset cause detection" und "watchdog usage"
To: barebox@lists.infradead.org

This is V3 of this patch set. Changes from v2:

- call globalvar_add_simple_enum() only once
- restart_remove_handler() has no return value now
- change the remaining reset_cpu() calls to the new API

Currently the architectures in barebox using a fixed approach to restart the
machine: they just provide a cpu_reset() function and are done. Every
architecture then does what the developer has selected in order to reset the
CPU, the SoC or the whole machine.

This approach is nice and simple but can fail. For example on a machine where
some kind of power management changes power supply voltages in order to save
power. Everything works with reduced clock speeds and voltages. It works until
a warm start is triggered and the SoC and it clocks are reset to their POR
defaults - but not the external power supply. In this case a restart feature
is required with a wider scope - which resets the power supplies back to their
POR values.

To honor the scope of a restart feature is the intention of this patch series.
And while a machine restart needs such a scope the use of a watchdog needs
such a scope as well. And at the end of this topic, the detection of the reset
cause also.

BTW: everything works in a reliable manner only, if the kernel honors these
scopes as well.

Patch 2/5 removes the reset_cpu() function barebox wide and replaces it by
registering an architecture dependend restart feature including a scope.
Patch 5/5 adds a new driver to handle the DA9055 PMIC which can act as a reset
cause detection, a watchdog and a restart unit. It is an example for a unit
which has a machine wide scope for all of these three featured.

Comments are welcome
Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
