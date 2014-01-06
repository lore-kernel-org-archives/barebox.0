Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W06Mo-0004oi-Kl
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 09:21:03 +0000
Received: from Edmond.local (unknown [210.23.18.184])
 by mail1.g1.pair.com (Postfix) with ESMTPSA id 60CED2AACC
 for <barebox@lists.infradead.org>; Mon,  6 Jan 2014 04:20:40 -0500 (EST)
Message-ID: <52CA7565.7060808@kosagi.com>
Date: Mon, 06 Jan 2014 17:20:37 +0800
From: Sean Cross <xobs@kosagi.com>
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
Subject: Porting Barebox to i.MX6QDL "Novena"
To: barebox@lists.infradead.org

Hi,

After talking with people at 30C3, I've decided to try moving from
U-Boot to Barebox.  I've got things building to the point where I have a
single ">" character being printed (after reading an earlier SOM porting
message), but I'm starting to grasp at straws now when it comes to
bringing DDR up.

Novena has an SO-DIMM slot.  In U-Boot, we wrote a hook for setup_ddr()
that got the SO-DIMM's SPD via I2C, performed calibration, and returned
with DDR all configured.

In Barebox, I'm running into some trouble:

    1) How do I access I2C routines from lowlevel.c?  I need to be able
to query the EEPROM on the DDR module itself to get its timing parameters.

    2) How much character printing can I get in lowlevel.c?  I notice
putc_ll() works, but puts_ll() doesn't, presumably because I have the
text offset incorrectly set.

    3) How much functionality can I have in ~96 KiB?  I believe that's
roughly the amount of space allowed in the OCRAM on an i.MX6DL once you
allow for code in ROM that's actually doing the loading.

    4) Failing that, is it possible to load some preboot code to set up
DDR?  I realize the traditional method is a hardcoded pokefile, but
since we support DDR3 modules, we can't rely on that.


Sean

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
