Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIUu9-000071-GD
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 10:43:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200914130640.21416-1-s.hauer@pengutronix.de>
 <20200914130640.21416-4-s.hauer@pengutronix.de>
 <da8f70a1-921f-ad94-ffb1-855eb4004f86@pengutronix.de>
 <20200915071215.GZ4498@pengutronix.de>
 <5e8911d3-2fe2-f2c7-09da-c971d97e8ff3@pengutronix.de>
 <20200915131219.GP4498@pengutronix.de>
 <7d170c31-d117-0493-6487-364de7b285b9@pengutronix.de>
Message-ID: <ba7d4bbf-4229-e27f-3702-4618b7a41905@pengutronix.de>
Date: Wed, 16 Sep 2020 12:43:11 +0200
MIME-Version: 1.0
In-Reply-To: <7d170c31-d117-0493-6487-364de7b285b9@pengutronix.de>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] fs: free unused dentries
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello,

On 9/15/20 3:28 PM, Ahmad Fatoum wrote:
> Just tried on the build server; could you try to run nv autoboot=abort; reset instead?

Small update: THis affects non-sandbox as well. I have observed broken reset on the
stm32mp1.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
