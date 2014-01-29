Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8ZHi-0003xD-4q
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 17:50:47 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 65B78FF9EDB
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2014 18:56:35 +0100 (CET)
Date: Wed, 29 Jan 2014 18:51:30 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140129175130.GB9671@ns203013.ovh.net>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
 <20140129092353.GH16215@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140129092353.GH16215@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:23 Wed 29 Jan     , Sascha Hauer wrote:
> Hi Alexander,
> 
> from this series I applied:
> 
> ARM: uncompress: Remove unused variable
> 
> cleanup
> 
> ARM: animeo_ip: Use __iomem specifier for memory pointer
> ARM: at91: irq_fixup: Use __iomem specifier for memory pointer
> ARM: i.MX: external_nand_boot: Use __iomem specifier for memory pointer
> ARM: i.MX: esdctl: Use __iomem specifier for memory pointer
> ARM: i.MX: esdctl-v4: Use __iomem specifier for memory pointer
> 
> These are cases in which registers are accessed and __iomem should be
> used.
> 
> For the remaining I am unsure as it's RAM that's accessed there. I don't
> think these should have __iomem.
__iomem is for register access not ram access

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
