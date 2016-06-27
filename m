Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHRl3-00068k-4W
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 08:19:06 +0000
References: <1466826780-23656-1-git-send-email-zzs213@126.com>
 <20160627074748.GX20657@pengutronix.de>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <5770E163.2090500@126.com>
Date: Mon, 27 Jun 2016 16:18:43 +0800
MIME-Version: 1.0
In-Reply-To: <20160627074748.GX20657@pengutronix.de>
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
Subject: Re: [PATCH] fix IORESOURCE_MEM_xxx usage in dm9k driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> This seems to fix platform data based probe but breaks device tree
> support. The culprit is in:
>
> d818f02 net: dm9k: add device tree support
>
> I believe this should be like the attached patch. Could you confirm this
> works for you?
>
> Sascha
>

Yes. it works for me.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
