Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVxZO-0004L3-CD
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 08:34:48 +0000
Date: Wed, 17 Feb 2016 09:34:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217083424.GQ19372@pengutronix.de>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-4-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455672559-25061-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 03/18] [RFC] at91: Make IS_ERR work for I/O pointers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2016 at 05:29:04PM -0800, Andrey Smirnov wrote:
> Having this functionality partially "broken" opens the door for subtle
> bugs in peripheral drivers for AT91 platform since it not straight out
> obvious that IS_ERR might return a false positive.
> 
> It also makes it much harder to judge the correctness of the driver
> code, for example it is perfectly fine to use IS_ERR in at91-i2c.c since
> I2C controller's register file is located at 0xFFFA_C000 (which it
> doesn't but that's the subject for another patch), however one couldn't
> help but wonder how the code it sam9_smc.c could possibly work given how
> that module is located at 0xFFFF_EC00.

0x100000000 - MAX_ERRNO is still bigger than 0xFFFFEC00, so this should
work.

The workaround you suggest is sooo ugly, do we really need this? How
many places are really affected by false positives in IS_ERR_VALUE?

Another solution, although a job for someone familiar with coccinelle
would be to change the prototype of dev_request_mem_region to

int dev_request_mem_region(struct device_d *dev, int num, void __iomem **base);

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
