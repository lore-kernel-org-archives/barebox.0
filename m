Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from hbe.hbelightingsystems.com ([213.239.196.253])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RtOty-0007KP-3K
 for barebox@lists.infradead.org; Fri, 03 Feb 2012 19:34:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by hbe.hbelightingsystems.com (Postfix) with ESMTP id E2AC348180C7
 for <barebox@lists.infradead.org>; Fri,  3 Feb 2012 20:34:22 +0100 (CET)
Received: from hbe.hbelightingsystems.com ([127.0.0.1])
 by localhost (hbe.hbelightingsystems.com [127.0.0.1]) (amavisd-new, port 10024)
 with SMTP id KpReWkPXyhDG for <barebox@lists.infradead.org>;
 Fri,  3 Feb 2012 20:34:20 +0100 (CET)
Received: from [192.168.1.4] (ip51ce2bef.speed.planet.nl [81.206.43.239])
 (Authenticated sender: erwin@hbelightingsystems.com)
 by hbe.hbelightingsystems.com (Postfix) with ESMTP id 93C40481801C
 for <barebox@lists.infradead.org>; Fri,  3 Feb 2012 20:34:22 +0100 (CET)
Message-ID: <4F2C36D8.30308@erwinrol.com>
Date: Fri, 03 Feb 2012 20:34:48 +0100
From: Erwin Rol <mailinglists@erwinrol.com>
MIME-Version: 1.0
References: <4F2C32C1.2080708@erwinrol.com>
In-Reply-To: <4F2C32C1.2080708@erwinrol.com>
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
Subject: Re: linking error x86 barebox
To: barebox@lists.infradead.org

On 3-2-2012 20:17, Erwin Rol wrote:
> Hey all,
>
> when I try to compile barebox for x86 with GCC 4.6.2 I get the following
> error at the linking stage ;
>
> i686-n270-linux-gnu-ld: section .eh_frame loaded at
> [0000000000018c10,00000000000219eb] overlaps section .barebox_initcalls
> loaded at [0000000000018c10,0000000000018c63]
>
> Any hints on where to start looking ?

by adding the "-f-no-*" versions of following options to gcc I can link, 
testing will be done tomorrow;

-funwind-tables
     Similar to -fexceptions, except that it will just generate any 
needed static data, but will not affect the generated code in any other 
way. You will normally not enable this option; instead, a language 
processor that needs this handling would enable it on your behalf.

-fasynchronous-unwind-tables
     Generate unwind table in dwarf2 format, if supported by target 
machine. The table is exact at each instruction boundary, so it can be 
used for stack unwinding from asynchronous events (such as debugger or 
garbage collector).

- Erwin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
