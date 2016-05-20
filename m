Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f66.i.mail.ru ([94.100.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3fUw-0002NA-QW
 for barebox@lists.infradead.org; Fri, 20 May 2016 08:09:32 +0000
Received: from [217.119.30.118] (ident=mail)
 by f66.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1b3fUY-0007Aq-Fn
 for barebox@lists.infradead.org; Fri, 20 May 2016 11:09:07 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Fri, 20 May 2016 11:09:06 +0300
Message-ID: <1463731746.897415417@f66.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?Q29uc29sZSBub3Qgd29yayB3aXRoIENPTkZJR19DT05TT0xFX0FDVElWQVRF?=
 =?UTF-8?B?X0ZJUlNU?=
To: =?UTF-8?B?YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn?= <barebox@lists.infradead.org>

Hello.

Patch 05261801e9cde103b3c4df843472027c007531da changes input subsystem.
If the CONFIG_CONSOLE_ACTIVATE_FIRST is set and barebox config contain
one serial console and one input device (GPIO buttons, for example), the console stops working.
Currently I haven't found a solution for this, but the CONFIG_CONSOLE_ACTIVATE_ALL
solve the problem.

Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
