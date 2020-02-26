Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-3.e-mind.com ([188.94.192.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vJy-0002cX-Tf
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 11:57:48 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-3.e-mind.com (Postfix) with ESMTP id 072A3843884
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 11:57:40 +0000 (UTC)
Received: from submit-3.e-mind.com ([127.0.0.1])
 by localhost (submit-3.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHvKbm58L25N for <barebox@lists.infradead.org>;
 Wed, 26 Feb 2020 12:57:39 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-3.e-mind.com (Postfix) with SMTP id 60F99843047
 for <barebox@lists.infradead.org>; Wed, 26 Feb 2020 12:57:12 +0100 (CET)
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <4f2b01e0-ad01-d130-5c8e-9c3acac58770@eurek.it>
Date: Wed, 26 Feb 2020 12:57:11 +0100
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
Subject: Barebox as first and second stage bootloader
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Hello,
I was wondering if it possible to program Barebox (2020.01 or later) as 
first and second stage bootloader using the STM32 Programmer CLI tool.

I have the stm32mp157 evk-dk2 and I would like to have a working 
bootloader (running from SDRAM) via USB programming.

I do not know how the OTP Fuses are set for trusted boot or simple SPL.
I suppose they are TF-A for first stage bootloader and SPL for the 
second one.

The images built by Barebox (start_stm32mp157c_dk2.pblb[.stm32] and 
barebox-stm32mp157c-dk2.img) are suitable to be used as first stage 
bootloader running from internal SRAM and the .img as the second stage 
bootloader running from external SDRAM DDR???

Is there somebody who is working with STM32 Cube Programmer or DFU-Utils 
to obtain this boot??

Regards,
Gianluca Renzi
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
