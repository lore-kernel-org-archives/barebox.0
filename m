Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.webware-experts.de ([80.78.166.106])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9DMt-0008Un-5T
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 11:01:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by www.webware-experts.de (Postfix) with ESMTP id D621D1B69229
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 13:01:55 +0200 (CEST)
Received: from www.webware-experts.de ([127.0.0.1])
 by localhost (webwarexs.private [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0UfHTAnQDRo for <barebox@lists.infradead.org>;
 Wed,  5 Sep 2012 13:01:55 +0200 (CEST)
Received: from [192.168.3.131] (p57bb9106.dip0.t-ipconnect.de [87.187.145.6])
 by www.webware-experts.de (Postfix) with ESMTPSA id 54E381B6921E
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 13:01:55 +0200 (CEST)
Message-ID: <50473122.90906@webware-experts.de>
Date: Wed, 05 Sep 2012 13:01:54 +0200
From: Norbert Roos <nroos@webware-experts.de>
MIME-Version: 1.0
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel> <50471A79.6070707@webware-experts.de>
 <1346838098.3625.10.camel@lws-weitzel> <504722D8.1050409@webware-experts.de>
 <20120905105323.GE26594@pengutronix.de>
In-Reply-To: <20120905105323.GE26594@pengutronix.de>
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
Subject: Re: MLO doesn't work, rest is ok
To: barebox@lists.infradead.org

On 09/05/2012 12:53 PM, Sascha Hauer wrote:

> What gcc version do you have?

gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)

Is there something which i could quickly check in the MLO, a checksum 
for example? Only if you know something, otherwise i can look it up in 
the OMAP manual, what he is doing to accept the MLO.

As i said, it seems he doesn't like the MLO, because he's skipping to 
the next boot source..

Norbert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
