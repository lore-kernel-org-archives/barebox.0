Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUoFG-0002Y4-SR
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 22:30:23 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Mon, 20 Dec 2010 23:30:03 +0100
Message-ID: <m362uodqms.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: my IXP4xx-related and other patches
To: barebox@lists.infradead.org

Hello,

I've been working a bit on IXP4xx support lately and it seems I'm at the
point I can now boot Barebox on a Goramo Multilink routers
(IXP425-based). It requires several patches (will post them shortly) and
NPE microcode files from Intel (or from elsewhere, the regular non-VLAN
microcode v. 2.4 is needed, i.e., same as with Linux).

The binary microcode must be appended to Barebox at correct offsets for
the NPE driver to find it, details are in board support file
(arch/arm/boards/multilink/multilink.c):

#define BAREBOX_START        0x00000
#define BAREBOX_LENGTH       0x34000
#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
#define NPE_A_LENGTH         0x05000
#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
#define NPE_B_LENGTH         0x03000
#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
#define NPE_C_LENGTH         0x04000
#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
#define NPE_ENV0_LENGTH      0x20000

when passed to Linux:
Creating XXX MTD partitions on "IXP4XX-Flash.0":
0x000000000000-0x000000034000 : "barebox"
0x000000034000-0x000000039000 : "NPE-A"
0x000000039000-0x00000003c000 : "NPE-B"
0x00000003c000-0x000000040000 : "NPE-C"
0x000000040000-0x000000060000 : "env0"

User-available flash area starts at 0x60000.

All this IXP4xx code is big-endian only. Too much work with LE (NPE
coprocessors would need buffer byte swapping, flash (EXP bus) would need
16-bit word swapping etc). Big-endian Barebox can load both LE and BE
Linux anyway ("bootz" only at the moment).

It should be easily applicable to other IXP42x-based platforms.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
