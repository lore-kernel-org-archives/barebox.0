Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RtOd8-0005yP-DM
 for barebox@lists.infradead.org; Fri, 03 Feb 2012 19:17:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by hbe.hbelightingsystems.com (Postfix) with ESMTP id 14F6748180C7
 for <barebox@lists.infradead.org>; Fri,  3 Feb 2012 20:16:55 +0100 (CET)
Received: from hbe.hbelightingsystems.com ([127.0.0.1])
 by localhost (hbe.hbelightingsystems.com [127.0.0.1]) (amavisd-new, port 10024)
 with SMTP id OIeCdTsttcmt for <barebox@lists.infradead.org>;
 Fri,  3 Feb 2012 20:16:56 +0100 (CET)
Received: from [192.168.1.4] (ip51ce2bef.speed.planet.nl [81.206.43.239])
 (Authenticated sender: erwin@hbelightingsystems.com)
 by hbe.hbelightingsystems.com (Postfix) with ESMTP id 41134481801C
 for <barebox@lists.infradead.org>; Fri,  3 Feb 2012 20:16:54 +0100 (CET)
Message-ID: <4F2C32C1.2080708@erwinrol.com>
Date: Fri, 03 Feb 2012 20:17:21 +0100
From: Erwin Rol <mailinglists@erwinrol.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: linking error x86 barebox
To: barebox@lists.infradead.org

Hey all,

when I try to compile barebox for x86 with GCC 4.6.2 I get the following 
error at the linking stage ;

i686-n270-linux-gnu-ld: section .eh_frame loaded at 
[0000000000018c10,00000000000219eb] overlaps section .barebox_initcalls 
loaded at [0000000000018c10,0000000000018c63]

Any hints on where to start looking ?

- Erwin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
