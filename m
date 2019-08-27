Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-2.e-mind.com ([188.94.192.46])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bgV-0007jz-SB
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 13:39:04 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-2.e-mind.com (Postfix) with ESMTP id DBF208479EB
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 13:38:45 +0000 (UTC)
Received: from submit-2.e-mind.com ([127.0.0.1])
 by localhost (submit-2.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dkb0oaJBcj-t for <barebox@lists.infradead.org>;
 Tue, 27 Aug 2019 15:38:45 +0200 (CEST)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-2.e-mind.com (Postfix) with SMTP id A34B38357B2
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:38:45 +0200 (CEST)
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <4c123056-bf80-deb6-f0d7-6c1a928946dd@eurek.it>
Date: Tue, 27 Aug 2019 15:38:46 +0200
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
Subject: MMC hardware partitioning
To: barebox@lists.infradead.org

Hello everyone!
I am wondering if there is some way to enable the partition protection 
for eMMC partition (usually to avoid data corruption due to a powerloss) 
in Barebox, as seen is mmc command in the bootloader counterpart U-Boot 
(as reference see u-boot/cmd/mmc.c ).

Any help will be very thankful.

P.S. I am using two barebox versions 2013.03.0 and 2017.06, but I am 
able to write a custom command/driver to make it working on Barebox.

Best regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
