Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yv8t3-0006iO-3K
 for barebox@lists.infradead.org; Wed, 20 May 2015 18:38:37 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1432063402.14341.126.camel@andreilinux>
 <20150520061901.GK6325@pengutronix.de>
Date: Wed, 20 May 2015 20:37:02 +0200
In-Reply-To: <20150520061901.GK6325@pengutronix.de> (Sascha Hauer's message of
 "Wed, 20 May 2015 08:19:01 +0200")
Message-ID: <87twv7hz8x.fsf@belgarion.home>
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
Subject: Re: drivers/mtd/nand/nand_mrvl_nfc.c
To: Andrei Yakimov <ayakimov@iptec-inc.com>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Hi Andrei,
>
> +Cc Robert Jarzmik <robert.jarzmik@free.fr>
>
> On Tue, May 19, 2015 at 12:23:22PM -0700, Andrei Yakimov wrote:
>> Please,
>>  change 
>>   case NAND_CMD_PARAM:
>>         host->buf_count = 256;
>> To:
>>   host->buf_count = 768;
>> 
>> If first copy of parameter page corrupted you will not able
>> to use ONFI flash.
>
> Thanks for noting. However, like many other opensource projects we
> communicate changes and change requests with formalized patches. Please
> generate one using git format-patch or similar and send it to the list.
> I'll happily make that change then.

Same from me, I'll happily review a patch.
May I add also that host->ndcb3 and host->data_size deserve the same change
within the NAND_CMD_PARAM case statement.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
