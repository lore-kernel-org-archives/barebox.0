Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NPiLV-0001Qz-UR
	for barebox@lists.infradead.org; Tue, 29 Dec 2009 20:07:14 +0000
Received: from relay2-v.mail.gandi.net (relay2-v.mail.gandi.net
	[217.70.178.76])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id E5302519DE
	for <barebox@lists.infradead.org>; Tue, 29 Dec 2009 20:38:49 +0100 (CET)
Received: from d4rwin.no-ip.org (235.Red-88-19-187.staticIP.rima-tde.net
	[88.19.187.235])
	by relay2-v.mail.gandi.net (Postfix) with ESMTP id 1EB72135D0
	for <barebox@lists.infradead.org>; Tue, 29 Dec 2009 20:38:19 +0100 (CET)
Date: Tue, 29 Dec 2009 20:34:11 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20091229193411.GB5093@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fix path specs in arch/arm/mach-arm.dox
To: barebox@lists.infradead.org

Fix incorrect path specs in the documentation for adding an ARM based
CPU (MACH) to the tree

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

--

diff --git a/arch/arm/mach-arm.dox b/arch/arm/mach-arm.dox
index 76b6883..758df3f 100644
--- a/arch/arm/mach-arm.dox
+++ b/arch/arm/mach-arm.dox
@@ -40,12 +40,12 @@ target address is the first C instruction in barebox. At this point of time:\n
 
 Lets call the new MACH new_cpu.
 
- - create a new subdirectory in /arch/arm/new_cpu
- - create a new subdirectory in /include/asm-arm/new_cpu
- - add CPU specific definitions into /include/asm-arm/new_cpu/
- - add /arch/arm/new_cpu/Kconfig
- - add /arch/arm/new_cpu/Makfile
- - add other CPU specific code into /arch/arm/new_cpu/
+ - create a new subdirectory in /arch/arm/mach-new_cpu
+ - create a new subdirectory in /arch/arm/mach-new_cpu/include
+ - add CPU specific definitions into /arch/arm/mach-new_cpu/include
+ - add /arch/arm/mach-new_cpu/Kconfig
+ - add /arch/arm/mach-new_cpu/Makfile
+ - add other CPU specific code into /arch/arm/mach-new_cpu/
  - modify /arch/arm/Kconfig
  - modify /arch/arm/Makfile

-- 
Matthias Kaehlcke
Embedded Linux Developer
Barcelona

             You must have a plan. If you don't have a plan,
               you'll become part of somebody else's plan
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
