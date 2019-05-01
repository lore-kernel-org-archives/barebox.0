Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr780104.outbound.protection.outlook.com
 ([40.107.78.104] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLmXl-0003XU-Fm
 for barebox@lists.infradead.org; Wed, 01 May 2019 10:32:55 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Wed, 1 May 2019 10:32:47 +0000
Message-ID: <BYAPR16MB27449301E98456E00CC0EE32913B0@BYAPR16MB2744.namprd16.prod.outlook.com>
Content-Language: en-US
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
Subject: cortex-a9 boot issue
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I have added support for a cortex-a9 off the master branch. 

I am seeing an issue to boot to the prompt found in the function hyp_install. The assembly code is as follows:
	mrs	r12, cpsr
	and	r12, r12, #MODE_MASK

	@ Save the initial CPU state
	adr	r0, .L__boot_cpu_mode_offset
	ldr	r1, [r0]
	str	r12, [r0, r1]   ===> I get an exception here because the register r12 is being written to [r0 + r1] which points to the SPI NOR  boot flash.

Commenting out the call to all functions calling hyp_install, barebox does get to the prompt. 

Is there something I could be missing that would put the __boot_cpu_mode variable in a writable area?

Cheers,
Renaud


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
