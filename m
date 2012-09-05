Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.webware-experts.de ([80.78.166.106])
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Ekz-0007rr-4g
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:30:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by www.webware-experts.de (Postfix) with ESMTP id 6D6E71B69A31
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:30:50 +0200 (CEST)
Received: from www.webware-experts.de ([127.0.0.1])
 by localhost (webwarexs.private [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DcDbe7XXCE2X for <barebox@lists.infradead.org>;
 Wed,  5 Sep 2012 14:30:50 +0200 (CEST)
Received: from [192.168.3.131] (p57bb9106.dip0.t-ipconnect.de [87.187.145.6])
 by www.webware-experts.de (Postfix) with ESMTPSA id 12AFE1B69A26
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:30:50 +0200 (CEST)
Message-ID: <504745F8.604@webware-experts.de>
Date: Wed, 05 Sep 2012 14:30:48 +0200
From: Norbert Roos <nroos@webware-experts.de>
MIME-Version: 1.0
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel> <50471A79.6070707@webware-experts.de>
 <1346838098.3625.10.camel@lws-weitzel> <504722D8.1050409@webware-experts.de>
 <20120905105323.GE26594@pengutronix.de> <50473122.90906@webware-experts.de>
 <20120905111549.GG26594@pengutronix.de>
In-Reply-To: <20120905111549.GG26594@pengutronix.de>
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

On 09/05/2012 01:15 PM, Sascha Hauer wrote:

> Maybe you could try an older toolchain. There are some dark memories in
> my mind, but it could also be that my mind is fooling me...

Ok, i will try this..

> The MLO is generated from barebox.bin with the omap_signGP tool. It
> seems the header is 520byte in size. You could compare these between
> both images.

Both configuration headers are the same.

> I don't know though if this is enough for the OMAP ROM code
> to detect a valid image.

Meanwhile, i took a look at the MLO. The configuration header is ok, the 
image size in the GP header is correct, and the loading address is the 
same like in the working MLO. The first instruction in the image differs 
from the working one (the others too, of course).

So the MLO should at least get loaded and started.. strange.

Norbert


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
