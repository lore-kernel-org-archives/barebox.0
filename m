Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfbPV-0003OC-Ig
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 19:10:35 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1354215786-25615-1-git-send-email-s.hauer@pengutronix.de>
 <1354215786-25615-2-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 03 Dec 2012 20:10:08 +0100
In-Reply-To: <1354215786-25615-2-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Thu, 29 Nov 2012 20:03:06 +0100")
Message-ID: <87y5hfymsv.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/2] mtd core: call driver write function with complete
 buffer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> mtd->write is supposed to loop around pages internally, no need
> to do this in mtd_write. This fixes a huge write performance drop
> with the m25p80 driver when it was converted to a mtd driver recently.
> Since mtd->writesize is 1 for this driver mtd_write ended up doing
> single byte writes on the flash.

Both patches look good to me.
Of course they change a bit the behaviour, as previously mtd_write() was
skipping "all 0xff" pages writes, and it doesn't do it anymore. But I don't see
any negative impact out of my head here.

As they are already in -next, no need for an Acked-by :)

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
