Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([213.84.116.84])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SZME7-0007XQ-P5
 for barebox@lists.infradead.org; Tue, 29 May 2012 13:12:44 +0000
Received: from [192.168.1.166] (erd943.prtnl [192.168.1.166])
 by protonic.xs4all.nl (Postfix) with ESMTP id 193CB2836F
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 14:44:34 +0200 (CEST)
Message-ID: <4FC4C582.6020003@protonic.nl>
Date: Tue, 29 May 2012 14:48:02 +0200
From: Robin van der Gracht <robin@protonic.nl>
MIME-Version: 1.0
References: <758281337957559@web30f.yandex.ru>
In-Reply-To: <758281337957559@web30f.yandex.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Imx28 sdram initialisation?
Cc: barebox@lists.infradead.org


Hello,

Currently i'm working on our new board, equipped with a imx287 processor,
using the 'karo-tx28' and  'freescale-mx28-evk' bsp as reference for our 
own bsp.

But I can't find sdram initialisation, lowlevel routines, or dcd support 
for imx28.
So i'm wondering how and where this is done for the boards mentioned before.

Reguards,

-- 
Robin van der Gracht
Protonic Holland.
tel.: +31 (0) 229 212928
fax.: +31 (0) 229 210930
Factorij 36 / 1689 AL Zwaag


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
