Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RNa-0003Pw-5u
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:24:19 +0000
Date: Wed, 29 Jan 2014 10:23:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140129092353.GH16215@pengutronix.de>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 01/12] ARM: animeo_ip: Use __iomem specifier for memory
 pointer
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

from this series I applied:

ARM: uncompress: Remove unused variable

cleanup

ARM: animeo_ip: Use __iomem specifier for memory pointer
ARM: at91: irq_fixup: Use __iomem specifier for memory pointer
ARM: i.MX: external_nand_boot: Use __iomem specifier for memory pointer
ARM: i.MX: esdctl: Use __iomem specifier for memory pointer
ARM: i.MX: esdctl-v4: Use __iomem specifier for memory pointer

These are cases in which registers are accessed and __iomem should be
used.

For the remaining I am unsure as it's RAM that's accessed there. I don't
think these should have __iomem.

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
