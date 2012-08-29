Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www.webware-experts.de ([80.78.166.106])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6i5r-0001SA-K2
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 13:14:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by www.webware-experts.de (Postfix) with ESMTP id 1003B1B3337E
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 15:13:58 +0200 (CEST)
Received: from www.webware-experts.de ([127.0.0.1])
 by localhost (webwarexs.private [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNGGSp+y5d-u for <barebox@lists.infradead.org>;
 Wed, 29 Aug 2012 15:13:57 +0200 (CEST)
Received: from [192.168.3.131] (p57bb93ab.dip0.t-ipconnect.de [87.187.147.171])
 by www.webware-experts.de (Postfix) with ESMTPSA id 9F9251B33373
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 15:13:57 +0200 (CEST)
Message-ID: <503E1591.8090904@webware-experts.de>
Date: Wed, 29 Aug 2012 15:13:53 +0200
From: Norbert Roos <nroos@webware-experts.de>
MIME-Version: 1.0
References: <503CC976.6090006@webware-experts.de>
 <20120829062913.GL26594@pengutronix.de>
In-Reply-To: <20120829062913.GL26594@pengutronix.de>
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
Subject: Re: What is TEXT_BASE?
To: barebox@lists.infradead.org

Hello,

On 08/29/2012 08:29 AM, Sascha Hauer wrote:

> TEXT_BASE is the address barebox will be linked at. Normally this is
> somewhere near the end of SDRAM, but could be also in some internal SRAM
> in special cases. If you use the pcm049_defconfig it should be
> configured correctly already.

Ok, thanks, i didn't know there are those configs.

Now it's building and produces some files. Is there somewhere an 
explanation what the files are and what i should do with them in the 
next step? In my case with an OMAP based board? I would have expected at 
least the "MLO" file, but there are just the barebox files..

I don't intend to get personal teaching lessons here, but the whole 
documentation is somehow - suboptimal. I am writing down the steps i'm 
doing, so in return i could add a howto or tutorial or something like that.

bye
Norbert


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
