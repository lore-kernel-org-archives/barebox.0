Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x232.google.com ([2607:f8b0:4001:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkgDN-0000iO-Kt
 for barebox@lists.infradead.org; Tue, 21 Apr 2015 22:00:22 +0000
Received: by igbpi8 with SMTP id pi8so93600704igb.0
 for <barebox@lists.infradead.org>; Tue, 21 Apr 2015 14:59:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150421122823.GZ6325@pengutronix.de>
References: <1429533463-5625-1-git-send-email-andrew.smirnov@gmail.com>
 <20150421122823.GZ6325@pengutronix.de>
Date: Tue, 21 Apr 2015 14:59:55 -0700
Message-ID: <CAHQ1cqEphzZRwo=GUJnxoa8P+imfpoNp6FhVzsTt1SqPBcnw5g@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] firmware: socfpga: Fix a bug in
 fpgamgr_program_write_buf()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Apr 21, 2015 at 5:28 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Mon, Apr 20, 2015 at 05:37:43AM -0700, Andrey Smirnov wrote:
>> Fix a bug in fpgamgr_program_write_buf() where .rbf file whose length
>> is not a multiple of 4 would cause an integer overflow which would
>> result in infinite loop.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/firmware/socfpga.c | 24 +++++++++++++++++++-----
>>  1 file changed, 19 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
>> index a5dc607..71f260f 100644
>> --- a/drivers/firmware/socfpga.c
>> +++ b/drivers/firmware/socfpga.c
>> @@ -321,14 +321,28 @@ static int fpgamgr_program_write_buf(struct firmware_handler *fh, const void *bu
>>               size_t size)
>>  {
>>       struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
>> -     const uint32_t *buf32 = buf;
>> +     const uint8_t *buffer = buf;
>> +     uint32_t word;
>> +     size_t chunk_size;
>> +     size_t offset = 0;
>>
>>       /* write to FPGA Manager AXI data */
>> -     while (size) {
>> -             writel(*buf32, mgr->regs_data);
>> -             readl(mgr->regs + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
>> -             buf32++;
>> +     while (size >= sizeof(uint32_t)) {
>>               size -= sizeof(uint32_t);
>> +
>> +             word = *(uint32_t *)(buffer + offset);
>> +             offset += sizeof(uint32_t);
>> +
>> +             writel(word, mgr->regs_data);
>> +             readl(mgr->regs + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
>> +     }
>
> Can't the original loop body stay like it was before?

I haven't thought of that, but yeah it is a good idea. I will do that.

>
>> +
>> +     if (size) {
>> +             word = 0;
>> +             while (chunk_size--) {
>
> chunk_size is never initialized.
>
>> +                     word |= buffer[offset++];
>> +                     word <<= 8;
>
> The remaining data is never written.

Hmm, I could have sworn I tested this patch, but you are right this
code cannot be correct. I'll update it and test the code more
thoroughly this time.

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
