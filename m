Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdrUD-0001bp-Vz
 for barebox@lists.infradead.org; Fri, 13 Jul 2018 06:23:27 +0000
Date: Fri, 13 Jul 2018 08:23:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180713062314.bvqzcxvdssdyzo2r@pengutronix.de>
References: <20180610070408.1088-1-akurz@blala.de>
 <20180611064820.llv6l57yfgp4te6l@pengutronix.de>
 <alpine.DEB.2.20.1807110422260.25504@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1807110422260.25504@blala.de>
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
Subject: Re: [PATCH] i.MX: iomuxv3: restore NO_PAD_CTRL semantic
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 11, 2018 at 04:48:28AM +0000, Alexander Kurz wrote:
> Hi Sascha,
> I have sent this fix last month, but the problem is still present in
> v2018.07 and next. Did this patch get lost somehow, should I re-send it?
> There is also a patch "DTS ARM: i.MX50: resolve warning" that I also miss 
> in next.
> Thanks, Alexander

You're the second one to say that I have lost a patch, and you are also
right. Something must have gone wrong. Applied now.

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
