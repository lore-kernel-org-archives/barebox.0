Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyZTl-0005Te-GF
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 09:56:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1gyZTk-0001QD-0e
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 10:56:48 +0100
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
 <20190219120612.728-5-a.fatoum@pengutronix.de>
 <20190224123529.GA19669@ravnborg.org>
 <923d36b1-7656-279b-0204-ef553cc82747@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <975489a1-8e81-56ef-b066-7a7041f5b759@pengutronix.de>
Date: Tue, 26 Feb 2019 10:56:47 +0100
MIME-Version: 1.0
In-Reply-To: <923d36b1-7656-279b-0204-ef553cc82747@pengutronix.de>
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
Subject: Re: [PATCH 4/4] ARM: at91: remove duplicate get_ddram_size code
To: barebox@lists.infradead.org

Hello,

On 26/2/19 10:10, Ahmad Fatoum wrote:
> Thanks for the review!
> Sascha, if the series is otherwise ok, could you apply Sam's patch followed
> by mine as suggested? Thanks. 
> 

While talking the series over with sha, I spotted a typo in debug_ll.h.
I will prepare a v2 and send this out again.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
