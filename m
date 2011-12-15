Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbDbF-0001gy-Pw
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 15:52:03 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
 <1323946179-9883-8-git-send-email-s.hauer@pengutronix.de>
 <87y5uevt77.fsf@free.fr> <20111215152133.GT27267@pengutronix.de>
Date: Thu, 15 Dec 2011 16:51:50 +0100
In-Reply-To: <20111215152133.GT27267@pengutronix.de> (Sascha Hauer's message
 of "Thu, 15 Dec 2011 16:21:33 +0100")
Message-ID: <87ty51x27d.fsf@free.fr>
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
Subject: Re: [PATCH 7/7] nand-bb: implement lseek in readonly mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> This one should work like expected:
>
> 	while (raw_pos < bb->raw_size) {
> 		off_t now = min(offset, bb->info.erasesize);
>
> 		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)raw_pos);
> 		if (ret < 0)
> 			return ret;
> 		if (!ret) {
> 			offset -= now;
> 			raw_pos += now;
> 		} else {
> 			raw_pos += bb->info.erasesize
> 		}
> 		if (!offset) {
> 			bb->offset = raw_pos;
> 			return __offset;
> 		}
> 	}
Yup, looks good.
If you wish, you can add my :
Reviewed-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
