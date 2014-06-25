Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wzh96-0001eU-TS
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 06:57:29 +0000
Date: Wed, 25 Jun 2014 08:57:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140625065706.GN15686@pengutronix.de>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
 <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
 <53A966DF.6050208@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53A966DF.6050208@gmail.com>
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
Subject: Re: [RFC 2/2] dns325: initial support for D-Link DNS-325
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 24, 2014 at 01:54:07PM +0200, Sebastian Hesselbarth wrote:
> On 06/22/2014 10:34 PM, Alexander Aring wrote:
> >This patch add a basic support for the D-Link DNS-325.
> >
> >Currently only booting via uart with kwboot is supported. The barebox
> >kwboot utility doesn't work at the moment. Use kwboot utility from u-boot
> >instead.
> >
> >Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> >---
> >I got the kwbimage values from u-boot with change to work with the
> >barebox kwboot utility. There is also a bug in u-boot kwbimage file
> >which enables 256 MB on chip select 0 and 1. But the DNS-325 has 256
> >MB on chip select 0 only. This is fixed in this kwbimage file.
> 
> Alexander,
> 
> I posted a bunch of MVEBU related patches I had in my private branches.
> Can you respin your DNS-325 patch based on those?
> 
> Sascha already applied
>  "Marvell MVEBU assorted fixes and cleanup" and
>  "Convert MVEBU SoCs to DT and PBL_MULTI_IMAGE"
> but they haven't appeared on barebox/next. You can wait a day or two
> or apply above series yourself. The other 3 pending patch sets are
> just more improvements but shouldn't (directly) influence your dns-325
> support patches.

All mvebu patches should now be in -next.

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
