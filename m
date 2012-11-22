Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbRpF-0006en-36
 for barebox@lists.infradead.org; Thu, 22 Nov 2012 08:08:00 +0000
Date: Thu, 22 Nov 2012 16:06:14 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121122080614.GE3022@greatfirst.com>
References: <1353566987-20609-1-git-send-email-zzs213@126.com>
 <20121122072503.GT8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121122072503.GT8327@game.jcrosoft.org>
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
Subject: Re: [PATCH] read cfi device id according the bus width
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

> I said factorize not duplicate
>
> and you need to handle all the with not only 8 and 16
>
I check the kernel code, th id defined in cfi_private is "int",
but in barebox is a ushort.

When width is 32, How to save the id?

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
