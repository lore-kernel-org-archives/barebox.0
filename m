Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-111.126.com ([220.181.15.111])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYpmD-0001Va-15
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 03:06:02 +0000
Date: Thu, 15 Nov 2012 10:40:18 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121115024018.GA30674@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: why eth0 not in /dev
To: barebox <barebox@lists.infradead.org>

When barebox starts, devinfo can show eth0's info
like this

9200-EK:/dev devinfo eth0
resources:
driver: none
bus: platform

Parameters:
          ipaddr = 192.168.0.109
         ethaddr =
         gateway =
         netmask =
        serverip =

But I can't see it in /dev, Why?

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
