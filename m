Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdThX-0006Lp-0J
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 21:27:53 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
 <1324303449-30045-3-git-send-email-robert.jarzmik@free.fr>
 <20111221110032.GS27267@pengutronix.de>
Date: Wed, 21 Dec 2011 22:27:40 +0100
In-Reply-To: <20111221110032.GS27267@pengutronix.de> (Sascha Hauer's message
 of "Wed, 21 Dec 2011 12:00:32 +0100")
Message-ID: <87vcp9aa43.fsf@free.fr>
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
Subject: Re: [PATCH V3 2/8] drivers/mtd: cosmetic changes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> -#ifdef CONFIG_NAND_OOB_DEVICE
>> -static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
>> +#ifdef CONFIG_NAND_READ_DEVICE
>> +static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count,
>> +			     ulong offset, ulong flags)
>
> You change the name of the Kconfig variable here. This shouldn't be here
> and breaks read_oob support.
True, but that was eliminated by a further patch (split of main mtd device from
oob device). Still, I removed that hunk for V4.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
