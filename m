Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([2a01:e0c:1:1599::13])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoK0Q-0001fD-5W
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 21:29:16 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1385997765-19218-1-git-send-email-s.hauer@pengutronix.de>
 <87vbz57fr6.fsf@free.fr> <20131204163251.GQ24559@pengutronix.de>
Date: Wed, 04 Dec 2013 22:28:43 +0100
In-Reply-To: <20131204163251.GQ24559@pengutronix.de> (Sascha Hauer's message
 of "Wed, 4 Dec 2013 17:32:51 +0100")
Message-ID: <87r49s71bo.fsf@free.fr>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: mtdraw: drop ioctl callback for mtdraw device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Tue, Dec 03, 2013 at 11:04:45PM +0100, Robert Jarzmik wrote:
> For MEMGETINFO we can directly call into _mtd_ioctl(), but for
> MEM[SG]ETBADBLOCK the offsets would have to be corrected first. Is this
> worth the effort? Otherwise we could do something like:
>
> int mtdraw_ioctl(struct cdev *cdev, int request, void *buf)
> {
> 	struct mtd_info *mtd = to_mtd(cdev);
>
> 	switch (request) {
> 	case MEMGETINFO:
> 		return mtd_memgetinfo(mtd, buf);
> 	default:
> 		return -EINVAL;
> 	}
> }

Yes, that looks like the right thing to do.
I don't think MEM[GS]ETBADBLOCK are used anywhere at this time for raw
devices. And I'm not convinced it is worth the effort just as you.

And let's be pragmatic : is somebody needs the badblock ioctls, he'll add them
:) By now, I'm happy with your patch.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
