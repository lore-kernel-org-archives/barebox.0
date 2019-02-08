Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gs8Ov-0003Sn-N4
 for barebox@lists.infradead.org; Fri, 08 Feb 2019 15:49:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F3B0927E05A3
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2019 16:49:09 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id R_mT7L9LSjYd for <barebox@lists.infradead.org>;
 Fri,  8 Feb 2019 16:49:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A9E5527E05A4
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2019 16:49:09 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hIxBAWQW-Oln for <barebox@lists.infradead.org>;
 Fri,  8 Feb 2019 16:49:09 +0100 (CET)
Received: from junon.lin.mbt.kalray.eu (unknown [192.168.37.161])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 969E027E05A3
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2019 16:49:09 +0100 (CET)
From: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <05f625c3-e8ab-157c-2c48-d82d5fc5953a@kalray.eu>
Date: Fri, 8 Feb 2019 16:49:09 +0100
MIME-Version: 1.0
Content-Language: en-US
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
Subject: mci: SDHC generic driver? refactor dove-sdhci?
To: barebox@lists.infradead.org

Hello,

I've written a driver for snps,dw-mshc, which is compatible with SDHC spec.

Basically I've just copy pasted the dove-sdhci.c one and modified a few 
lines to add:

* support for host_v4 mode

* 64 bit addressing

* 64-bit SDMA

* PIO mode

* Support for 10-bit clock divider (max divider of 2046 instead of 256)

Chosing between SDMA and PIO is done with Kconfig defines at compile 
time. It's either one or the other.

Since snps,dw-mshc and dove-sdhci share the same code, because both 
respect SDHC spec I would propose to rename dove-sdhci.c into sdhci.c 
and remove all dove mentions inside.

Then write a dove-sdhci.c which registers via the sdhci generic layer 
and same thing for dw-mshc.

This allows lot of code sharing between SDHC compatible devices and also 
eases a lot the writing of new drivers.

Would that be OK?

Thanks!

Best regards,

-- 

Yann


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
