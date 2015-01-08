Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0200.hostedemail.com ([216.40.44.200]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9Al4-0005aS-9Q
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 10:56:07 +0000
Received: from filter.hostedemail.com (unknown [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 9389E6B52B
 for <barebox@lists.infradead.org>; Thu,  8 Jan 2015 10:55:42 +0000 (UTC)
Received: from sdcapont (176-227-142-86.ip.skylogicnet.com [176.227.142.86])
 (Authenticated sender: andy.pont@sdcsystems.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA
 for <barebox@lists.infradead.org>; Thu,  8 Jan 2015 10:55:39 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
Date: Thu, 8 Jan 2015 10:55:30 -0000
Message-ID: <007401d02b31$a3c409b0$eb4c1d10$@pont@sdcsystems.com>
MIME-Version: 1.0
Content-Language: en-gb
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: andy.pont@sdcsystems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Boot speed on 600MHz AM3354
To: barebox@lists.infradead.org

Hello,

We have a custom hardware platform that uses a 600MHz TI AM3354 and stores
U-Boot-SPL, U-Boot and the Linux kernel in an SPI NOR flash device with the
intent of using Falcon mode to boot the kernel directly.

I have found that the performance is very poor when it comes to the system
boot and in particular reading the kernel from the SPI flash device.  We are
currently investigating that but we are also looking at whether Barebox may
be a better alternative based on comments made by Michael Opdenacker in a
presentation at ELC2014.

Does anyone have a feel, or actual figures, on how much faster Barebox would
be over U-Boot for this kind of platform?

Thanks,

Andy.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
