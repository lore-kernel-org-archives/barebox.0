Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGVku-0004a6-OJ
	for barebox@lists.infradead.org; Thu, 11 Nov 2010 11:55:53 +0000
Message-ID: <4CDBD9C5.7070009@flatfrog.com>
Date: Thu, 11 Nov 2010 12:55:49 +0100
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4CDA5DF9.7050906@flatfrog.com>
	<20101110151106.GT6017@pengutronix.de>
	<AANLkTikwqJckiphhidiSV=OysTQp5Jf-EWonmJTbp=Es@mail.gmail.com>
In-Reply-To: <AANLkTikwqJckiphhidiSV=OysTQp5Jf-EWonmJTbp=Es@mail.gmail.com>
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
Subject: Re: BeagleBoard sdrc init writes reserved values
To: Anand Gadiyar <gadiyar@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 2010-11-10 17:13, Anand Gadiyar wrote:
>>> Anyone knows where these settings come from?  Derived from an older
>>> version of the TRM?  (I'm thinking there may have been a feature that
>>> was discovered to be unreliable or not working as intended so it was
>>> removed from the docs.)
>>
>> I have no idea. I'm pretty sure though that the value has been copied
>> from some version of U-Boot or Xloader.
>>
>
> I agree - I think this is an accident - probably copied from older loader
> versions and introduced in the first version that went here.

Ok, thanks.  (We haven't seen any problems related to those settings, we 
just checked them out of curiosity since we noticed there was a 
difference between barebox/x-load/u-boot. )

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
