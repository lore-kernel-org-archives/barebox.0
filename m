Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZFJ-0002yv-KT
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:04:34 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1NwZEo-00012j-QL
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 13:04:02 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NwZEo-0004ia-PF
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 13:04:02 +0200
Date: Tue, 30 Mar 2010 13:04:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100330110402.GJ2241@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1269855383-22716-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 06/12] add unlzo support
To: barebox@lists.infradead.org

On Mon, Mar 29, 2010 at 11:36:17AM +0200, Sascha Hauer wrote:
> @@ -28,3 +28,5 @@ obj-$(CONFIG_GENERIC_FIND_NEXT_BIT) += find_next_bit.o
>  obj-y			+= glob.o
>  obj-y			+= notifier.o
>  obj-y			+= copy_file.o
> +obj-y			+= lzo/
> +obj-y			+= decompress_unlzo.o

This should only be compiled when needed. Will change.

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
