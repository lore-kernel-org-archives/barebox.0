Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eckelmann.de ([217.19.183.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ip9-0005Bn-UF
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 09:40:37 +0000
From: "Mainz, Roland" <R.Mainz@eckelmann.de>
Date: Mon, 2 Sep 2019 09:40:26 +0000
Message-ID: <7954aa66b7cd4e0583b8f96e6ee3292b@eckelmann.de>
Content-Language: de-DE
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
Subject: barebox bug, sh [ -c /dev/nand0.var.ubi.blablablub ] returns |true|
 even if there is no "blablablub" partition on "var" volume
To: "customers.eckelmann@pengutronix.de" <customers.eckelmann@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "Arne Wichmann (arne.wichmann@thinventions.de)" <arne.wichmann@thinventions.de>, =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>


Hi!

----

Quick&dirty bug report:

- Version: barebox 2018.05.0-20190221-1-EAG_3.00-gf70df96 #1 Mon Sep 2 09:03:05 CEST 2019
- Hardware: Eckelmann/EAG Quantron

Problem:
The barebox sh's "test"/"[" shell builtin returns "true" for /dev/nand0.var.ubi.blablablub even if there is no "blablablub" partition on the "var" volume.

Example:
-------- snip --------
barebox:/ ls -l /dev
crw-------         153600 fb0
cr--------              0 full
crw-------             32 imx_iim_bank0
crw-------             32 imx_iim_bank1
crw-------             32 imx_iim_bank2
crw-------            256 mc34704
crw-------     4294967295 mem
crw-------      134217728 nand0
crw-------        1048576 nand0.barebox
crw-------        1048576 nand0.barebox.bb
crw-------      133955584 nand0.bb
crw-------        1048576 nand0.environment
crw-------        1048576 nand0.environment.bb
cr--------        4194304 nand0.oob
crw-------      138412032 nand0.raw
crw-------       83886080 nand0.root
crw-------       83886080 nand0.root.bb
crw-------       45744128 nand0.var
crw-------       45481984 nand0.var.bb
c---------              0 nand0.var.ubi
crw-------       23617536 nand0.var.ubi.rw
crw-------       15110144 nand0.var.ubi.stat
c-w-------              0 null
cr--------              0 prng
crw-------      134217728 ram0
c-w-------              0 serial4-1
cr--------              0 zero
barebox:/ ls -l /dev/nand0.var.ubi.blablablub                                               
ls: /dev/nand0.var.ubi.blablablub: No such file or directory
barebox:/ ls -l /dev/nand0.var.ubi.blablablub                        
ls: /dev/nand0.var.ubi.blablablub: No such file or directory
barebox:/ if [ -c /dev/nand0.var.ubi.blablablub ] ; then echo wrong ; else echo "right" ; fi
wrong
barebox:/ if [ -f /dev/nand0.var.ubi.blablablub ] ; then echo wrong ; else echo "right" ; fi
right
-------- snip --------

----

Mfg,
Roland Mainz
-- 
Roland Mainz, MAA/CAS
Eckelmann AG, Berliner Str. 161, 65205 Wiesbaden
Telefon +49/611/7103-661, Fax +49/611/7103-133
r.mainz@eckelmann.de

Eckelmann Group - Source of inspiration



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
