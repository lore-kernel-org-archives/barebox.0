Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TWYEU-00063t-9Z
 for barebox@lists.infradead.org; Thu, 08 Nov 2012 19:57:47 +0000
Received: by mail-ia0-f177.google.com with SMTP id x26so2192854iak.36
 for <barebox@lists.infradead.org>; Thu, 08 Nov 2012 11:57:44 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <87pq3pt1zh.fsf@free.fr>
References: <1352276585-20262-1-git-send-email-antonynpavlov@gmail.com>
 <87pq3pt1zh.fsf@free.fr>
Date: Thu, 8 Nov 2012 23:57:44 +0400
Message-ID: <CAA4bVAF68HGdDqgtUCvxTiJJnGjb2j2sziQpLNY4e-fMFJOwcw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] make new y-modem (PATCH v2) work on big-endian CPU
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 8 November 2012 03:41, Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> Antony Pavlov <antonynpavlov@gmail.com> writes:
>
>> apply this commit after that one:
>>
>>     Author: Robert Jarzmik <robert.jarzmik@free.fr>
>>     Date:   Sun Nov 4 18:55:23 2012 +0100
>>
>>         commands: change Y-Modem implementation
>> ---
>>  lib/xymodem.c |   13 +++++++------
>>  1 file changed, 7 insertions(+), 6 deletions(-)
>>
>> diff --git a/lib/xymodem.c b/lib/xymodem.c
>> index 1469a9a..0e82ce2 100644
>> --- a/lib/xymodem.c
>> +++ b/lib/xymodem.c
>> @@ -257,8 +257,8 @@ static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
>>       uint64_t timeout)
>>  {
>>       ssize_t rc, data_len = 0;
>> -     unsigned char hdr, seqs[2], crcs[2];
>> -     int crc = 0, hdr_found = 0;
>> +     unsigned char hdr, seqs[2];
>> +     uint16_t crc = 0, hdr_found = 0;
>>       uint64_t start = get_time_ns();
>>
>>       while (!hdr_found) {
>> @@ -308,12 +308,13 @@ static ssize_t xy_read_block(struct xyz_ctxt *proto, struct xy_block *blk,
>>
>>       switch (proto->crc_mode) {
>>       case CRC_ADD8:
>> -             rc = xy_gets(proto->cdev, proto->fifo, crcs, 1, timeout);
>> -             crc = crcs[0];
>> +             rc = xy_gets(proto->cdev, proto->fifo,
>> +                             (unsigned char *)&crc, 1, timeout);
> This doesn't look good to me.
> In big-endian arch, suppose you read 0xab as the crc.
> In that case, won't crc be equal to 0xab00 instead of 0x00ab in this code ? If
> that's the case, the previous code was right ...
>
>>               break;
>>       case CRC_CRC16:
>> -             rc = xy_gets(proto->cdev, proto->fifo, crcs, 2, timeout);
>> -             crc = be16_to_cpu(*(uint16_t *)crcs);
>> +             rc = xy_gets(proto->cdev, proto->fifo,
>> +                             (unsigned char *)&crc, 2, timeout);
>> +             crc = be16_to_cpu(crc);
>
> Does that mean that the code up there doesn't work on big endian ? I'm really
> puzzled, as the sender sends in big endian, the xy_gets() receives the bytes
> into crcs[2], and the be16_to_cpu() should be a no-op ...
>
> I think that we should do this simpler :
>   crc = crcs[0] << 8 + crcs[1]
>
> I'll put that into my github branch for testing.

I have just tested the commits from your github 'xymodem' branch on my
big-endian and little-endian MIPS boards.

It works perfect!

Tested-by: Antony Pavlov <antonynpavlov@gmail.com>

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
