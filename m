Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a99hF-0007is-Oj
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 10:52:38 +0000
Date: Wed, 16 Dec 2015 11:52:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151216105214.GV11966@pengutronix.de>
References: <1449873185.26955.138.camel@rtred1test09.kymeta.local>
 <1449873460.26955.140.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449873460.26955.140.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] environment: Support env from file in a file-system
 via device tree
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Dec 11, 2015 at 10:37:34PM +0000, Trent Piepho wrote:
> From d8f4428244b3c7009a6ef7d5a97a00747cd19472 Mon Sep 17 00:00:00 2001
> From: Trent Piepho <tpiepho@kymetacorp.com>
> Date: Fri, 11 Dec 2015 14:19:34 -0800
> Subject: [PATCH 2/2] socfpga: Find partition with environment via device tree

The subject in this mail is wrong. The correct subject is here, but 'git
am' takes the one from the mail.

I thought over it and I am fine with the approach of putting the
filename as an additional property into the barebox,environment node.

Also I am fine with the "of_path: Fix bug with partitions, simply code"
patch, only I can not find the commitish that broke the partition code.

I somewhat lost track over your outstanding patches. Could you resend
all of them in a single series?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
