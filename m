Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STsvq-0006Ui-3m
 for barebox@lists.infradead.org; Mon, 14 May 2012 10:55:14 +0000
Received: by lbbgg6 with SMTP id gg6so4007079lbb.36
 for <barebox@lists.infradead.org>; Mon, 14 May 2012 03:55:10 -0700 (PDT)
Message-ID: <4FB0E488.50107@gmail.com>
Date: Mon, 14 May 2012 16:55:04 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336988285-6192-1-git-send-email-agalakhov@gmail.com>
 <201205141201.05779.jbe@pengutronix.de>
In-Reply-To: <201205141201.05779.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/7] Support most Samsung SoCs in S3C serial driver
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

> Seems there should follow some more text? ;)
> 
> As this patch seems mostly like the patch from my S3C6410 repository, you can 
> also add my:
> 
> Signed-off-by: Juergen Beisewrt <kernel@pengutronix.de>
> 
>> [...]
> 
> jbe
> 

Sorry, just wrong subject :) I forgot to remove 1/7 :)

I decided to change your version a little bit to remove explicit #ifdef
ARCH_something from the driver's code. Most likely more CPUs like Exynos
will follow, ant they all are alike. I hope this code will fit them
without further changes.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
