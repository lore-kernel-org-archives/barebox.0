Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcamA-0006Tt-Cy
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 10:48:59 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
 <1324072234-31634-4-git-send-email-robert.jarzmik@free.fr>
 <20111219094932.GC27267@pengutronix.de>
Date: Mon, 19 Dec 2011 11:48:49 +0100
In-Reply-To: <20111219094932.GC27267@pengutronix.de> (Sascha Hauer's message
 of "Mon, 19 Dec 2011 10:49:32 +0100")
Message-ID: <8739cgg7la.fsf@free.fr>
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
Subject: Re: [PATCH V2 3/8] drivers/mtd: transfer NAND notions to MTD core
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Fri, Dec 16, 2011 at 10:50:29PM +0100, Robert Jarzmik wrote:
>
>>  
>>  if MTD
>>
>> +config MTD_WRITE
>> +	bool
>> +	default y
>> +	prompt "Support writing to MTD devices"
>> +
>> +config MTD_READ_OOB
>> +	bool
>> +	default y
>> +	prompt "Create a device for reading the OOB data"
>> +
>
> This one is a rename...
>
>>  
>> -config NAND_READ_OOB
>> -	bool
>> -	default y
>> -	prompt "create a device for reading the OOB data"
>> -
>
> from this one, but not all references to it were renamed.
Arg. I see it now. I'll amend this patch.

> This revealed a bug which was present before this patch. The following
> fixes this, see the commit log for more details. Can you rebase your
> series on this patch?
Of course.

> Otherwise your series seems to work properly.
Ok, great. Do you want me to resend the whole serie, or provide you a pull
request with this patchset rebased on barebox.git/next, and your patch, and then
this serie ?

FWIW, I checked erase/read/write on mtdraw and mtd, and with the docg3
everything works fine. If I understand correctly, you tested with a NAND you've
got, which is great as a non-regression test :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
