Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rcang-0006Wx-61
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 10:50:33 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
 <1324072234-31634-8-git-send-email-robert.jarzmik@free.fr>
 <20111219095035.GD27267@pengutronix.de>
Date: Mon, 19 Dec 2011 11:50:23 +0100
In-Reply-To: <20111219095035.GD27267@pengutronix.de> (Sascha Hauer's message
 of "Mon, 19 Dec 2011 10:50:35 +0100")
Message-ID: <87y5u8esy8.fsf@free.fr>
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
Subject: Re: [PATCH V2 7/8] mtd/drivers: split mtd mtdoob devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Fri, Dec 16, 2011 at 10:50:33PM +0100, Robert Jarzmik wrote:
>> Split /dev/mtd and /dev/mtdoob devices.
>> Remove from mtd structure the mtdoob character device.
>> 
>> diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
>> new file mode 100644
>> index 0000000..ba30c5b
>> --- /dev/null
>> +++ b/drivers/mtd/mtdoob.c
>> @@ -0,0 +1,100 @@
>> +/*
>> + * MTD oob device
>> + *
>> + * Copyright (C) 2011 Sasha Hauer
>
> s/Sasha/Sascha/
Really sorry for that.

I'll amend that one, and change the author to be you, as this is your code, not
mine. I haven't seen that until I read back from the mailing list.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
