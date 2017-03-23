Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cr4Ik-0001Zk-WB
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 15:05:25 +0000
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <aa01e3d6-5a0b-9c65-4af9-21f0fac12f4c@eurekelettronica.it>
Date: Thu, 23 Mar 2017 16:04:42 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Information regarding iMX6 QuadPlus and iMX6 DualLite
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,
I was looking around to have a common Barebox binary to bootup two 
boards based on iMX6 SoC.

The PCB are at 99.8% the same.
PCB#0 has iMX6QP and a VDDCore of 1.38V (LDO enabled)
PCB#1 has iMX6DL and a VDDCore of 1.32V (LDO enabled)

I was wondering how other boards (like Nitrogen6x) does for booting.

As soon as my boards have the same DDR Memory routing and types, the oly 
thing I can think is the different memory address space for DDR controller.

In fact, the Nitrogen6x boards, differs from the #include of the ddr 
controller (one is for dual-lite, the other for quad).

But I do not found any switch between choosing one Soc or another.
Where is done the startup entry?
And the maximum clock speed??? Those SoC has different clock maximum 
speed, so I think someone has to tell it to run @800 Mhz or @1Ghz. Is 
this true?

Are those stuff the only things that matters?

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
