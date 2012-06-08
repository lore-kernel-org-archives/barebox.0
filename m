Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([2001:a60:0:70:0:1:25:1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sd0la-00053G-NR
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 15:06:25 +0000
From: Marek Vasut <marex@denx.de>
Date: Fri, 8 Jun 2012 17:06:13 +0200
References: <1339103098-32102-1-git-send-email-s.hauer@pengutronix.de>
 <1339103098-32102-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1339103098-32102-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201206081706.13549.marex@denx.de>
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
Subject: Re: [PATCH 3/4] mtd nand: add mxs-nand driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, wsa@pengutronix.de, Wolfram Sang <w.sang@pengutronix.de>

Dear Sascha Hauer,

> From: Wolfram Sang <w.sang@pengutronix.de>
> 
> Based on the U-Boot version. Changed to kernel style register layout, added
> MX23 support (WIP!), made MMU aware and adapted to barebox.

Can you split the changes so it's not such a block of code, hard to review ? 
Possibly to "kernel style register layout" (which I believe is stupid anyway, 
using struct based access is less error prone and more clear), "mx23 support" 
and "mmu awareness" (whatever that is).

> Signed-off-by: Marek Vasut <marek.vasut@gmail.com>
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Best regards,
Marek Vasut

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
