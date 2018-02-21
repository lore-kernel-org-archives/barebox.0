Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x22a.google.com ([2a00:1450:400c:c0c::22a])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoUAU-0000w4-1h
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 13:10:44 +0000
Received: by mail-wr0-x22a.google.com with SMTP id m5so4347146wrg.1
 for <barebox@lists.infradead.org>; Wed, 21 Feb 2018 05:10:31 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180213075552.hbn2gay3w6p3xhi3@pengutronix.de>
References: <20180208132301.24921-1-aleksander@aleksander.es>
 <20180208132301.24921-8-aleksander@aleksander.es>
 <20180213075552.hbn2gay3w6p3xhi3@pengutronix.de>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Feb 2018 14:10:09 +0100
Message-ID: <CAAP7ucLDWHCijGOfR2YB_Y0RkeaBiwXgmaHiFkwSfA+kZP_RMA@mail.gmail.com>
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
Subject: Re: [RFC PATCH v2 7/8] ratp: new md and mw commands
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> read and write memory files without needing to do custom string
>> parsing on the data returned by the console 'md' and 'mw' operations.
>>
>> The request and response messages used for these new operations are
>> structured in the same way:
>>
>>  * An initial fixed-sized section includes the fixed-sized
>>    variables (e.g. integers), as well as the size and offset of the
>>    variable-length variables.
>>
>>  * After the initial fixed-sized section, the buffer is given, which
>>    contains the variable-length variables in the offsets previously
>>    defined and with the size previously defined.
>>
>> The message also defines separately the offset of the buffer
>> w.r.t. the start of the message. The endpoint reading the message will
>> use this information to decide where the buffer starts. This allows to
>> extend the message format in the future without needing to break the
>> message API, as new fields can be appended to the fixed-sized section
>> as long as the buffer offset is also updated to report the new
>> position of the buffer.
>>
>> E.g. testing with ratp-barebox-cli:
>>
>>   $ ratp-barebox-cli -t /dev/ttyUSB2 --md "/dev/pic_eeprom_rdu,0x107,5" --timeout 1000
>>   Sending md request: read '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
>>   00:00:00:00:00
>
> It would be good to have to pointer to libratp and ratp-barebox-cli in
> Documentation/user/remote-control.rst.
>

I'll add the info, ok.

> What's your plan for the bbremote tool? It's a bit unfortunate to have
> the new features only available in an external tool.
>

Yeah, I knew you were going to say that :) So, don't know. Didn't want
to spend much time on it because the new commands (md, mw, reset)
could directly be run with bbremote as "bbremote run ..." and you
would get the same output just with a different format. The benefit of
the binary API is clear in libratp-barebox, i.e. to integrate it into
applications that would make use of those operations without requiring
formatting output for the human eye. The ratp-barebox-cli and bbremote
support of the commands with the binary API would just be a
convenience. I actually only developed the support for the new
commands in the cli to make sure the library worked, as a way of
testing it. That said, if you want I can try to implement them in
bbremote as well and provide the same kind of output that you'd see in
ratp-barebox-cli; it would at least be a way of testing the API
directly within barebox without requiring any external tool.

>> +static int do_ratp_mem_md(const char *filename,
>> +                       loff_t start,
>> +                       loff_t size,
>> +                       uint8_t *output)
>> +{
>> +     int r, now, t;
>> +     int ret = 0;
>> +     int fd;
>> +     void *map;
>> +
>> +     fd = open_and_lseek(filename, O_RWSIZE_1 | O_RDONLY, start);
>
> It would be nice to support different read/write widths. Not every
> memory is readable in byte size chunks. But this could be added later
> aswell, I just saw that the way you defined the messages allows it to
> add additional fields later.

Yes, the binary message API should allow extending the format with
additional fields. But now that you said that, I may actually include
the width in the format, will check that.

>> +     if (fd < 0)
>> +             return 1;
>
> Is '1' the right return value here? It goes into a variable named
> 'errno' which looks wrong.
>

Oh, probably not. I'll review that.

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
