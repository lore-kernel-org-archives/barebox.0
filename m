Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxhNT-0006Tl-2s
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 16:06:44 +0000
Received: by lahg1 with SMTP id g1so1476056lah.36
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2012 08:06:40 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CALQ+5adPFLiwehAoeLoDKwzU5KLhQmMs92GxsT62yDYfppk+aA@mail.gmail.com>
References: <CALQ+5adUP4qyf8+82s2NK6R3LbvjteuE-bkQ0iUdMG7X2LtxFQ@mail.gmail.com>
 <20120215120911.GB3852@pengutronix.de>
 <CALQ+5adPFLiwehAoeLoDKwzU5KLhQmMs92GxsT62yDYfppk+aA@mail.gmail.com>
From: Igor Trevisan <igt1972@gmail.com>
Date: Wed, 15 Feb 2012 17:06:20 +0100
Message-ID: <CALQ+5afbnpgknmM_Accu0a9Tp4pb1c0v85p6wLmYuemOXcVrFA@mail.gmail.com>
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
Subject: Re: iMX27 clock settings
To: barebox@lists.infradead.org

Hi,

we found a problem in the pover supply chain.
We fixed this and now the board that was unstable seems to work properly.
Pushing on the frequency we probably made a hidden problem come to light.
So I think I can also confirm that the new settings to make the iMX27 working
@400MHz should be correct.
Thanks again to all the guys out there for their precious and kind
suggestions and support! :)
I.

-- 
"Don't find fault, find a remedy."
(Henry Ford)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
