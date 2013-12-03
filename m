Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vny5m-0002cC-3A
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 22:05:19 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1385997765-19218-1-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 03 Dec 2013 23:04:45 +0100
In-Reply-To: <1385997765-19218-1-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Mon, 2 Dec 2013 16:22:45 +0100")
Message-ID: <87vbz57fr6.fsf@free.fr>
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

> Do not call mtd_ioctl for mtdraw devices. mtd_ioctl will derefence
> the priv pointer to a struct mtd_info whereas with mtdraw devices it will be
> a struct mtdraw pointer. We do not need ioctls for mtdraw devices, so drop
> it instead of fixing it.

Very true for the fix.
As to whether we need ioctls for raw mtd devices, we're loosing bad block
operations and memgetinfo.

Unfortunately that's a flaw with my split of core.c/mtdraw.c. The complete fix
would be to have mtd_ioctl split into :
 - mtd_ioctl : would call 
              _mtd_ioctl(struct mtd_info *info, int request, void *buf)
 - _mtd_ioctl : current code of ioctl handling
And add :
 - mtdraw_ioctl: would call _mtd_ioctl()

For the time being your patch is perfectly fine. Do you want me to add the split
+ mtdraw_ioctl() ? That's not a too big amount of work.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
