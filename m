Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OnQU9-00086z-TG
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 06:26:22 +0000
Date: Mon, 23 Aug 2010 08:26:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100823062620.GO27749@pengutronix.de>
References: <AANLkTimhfWcb+q0AzmJs=tW2-B59A8Hg4nU_KqfU7J-e@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimhfWcb+q0AzmJs=tW2-B59A8Hg4nU_KqfU7J-e@mail.gmail.com>
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
Subject: Re: YAFFS
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

Hello,

On Mon, Aug 23, 2010 at 10:17:05AM +0530, Nataraj S Narayan wrote:
> Hi
> 
> I am u-boot-at91.  My board is at91sam9263ek. Would like to know if barebox
> supports YAFFS2?

Barebox currently does not support YAFFS2.

> 
>  Need also an advice on going for Yaffs or Ubifs for Fs on NAND Flash?

We currently also do not support UBIFS. We only support UBI (the UBIFS
layer works on top of UBI)

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
