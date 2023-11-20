Delivery-date: Mon, 20 Nov 2023 11:52:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r51sl-001P0g-2Z
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 11:52:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r51sl-0001yL-PM
	for lore@pengutronix.de; Mon, 20 Nov 2023 11:52:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rjZF84Q1KMw78D2gKKXNG9P18whpsdTn8F6AQmC/yfk=; b=ulWfgh33qtb/DyK9mKHOKOqpnJ
	fw0U7KJoPHtkTFhkSUH49sokKrXH0roMQjSsPJ6K/X/e9x9KnWxxEDP/kN+tNy3xL0TSlGkxt0vdT
	1NztzFYhzYumwN7AvXRNzYNlF8W7LlUWNmeVEs4SK3ABbo5ve93j+qVLPvWV9vnLH7UQGTN3sDDQz
	iyk5HCEq8OIStXJDtVMg8fMJauItuWwMFXq5gvU8I0ATVctDOgzTGs5zeu/4sr6eVtPaAtZ86Mhlw
	XtEEJEg54FcgMHeP0BKOZ1i5lahELm/fCLcBgB7HgUWBktRbzFyFcaM+VVtDARGTBFrpMDEVUUBnL
	rLGoQgHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r51rW-00Bp98-16;
	Mon, 20 Nov 2023 10:50:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r51rR-00Bp7x-19
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 10:50:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r51rQ-0001ac-5l; Mon, 20 Nov 2023 11:50:36 +0100
Message-ID: <2084fc4f-83d4-803a-d3db-c5e8d3401be7@pengutronix.de>
Date: Mon, 20 Nov 2023 11:50:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
 <20231120083750.3967831-2-a.fatoum@pengutronix.de>
 <e23250cb-47e7-e727-68b6-152aea7d876b@kalrayinc.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <e23250cb-47e7-e727-68b6-152aea7d876b@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_025037_424423_60D7CFC6 
X-CRM114-Status: GOOD (  23.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC 2/3] libfile: implement read_fd counterpart to
 read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 20.11.23 10:49, Yann Sionneau wrote:
> Hello Ahmad,
> 
> On 11/20/23 09:37, Ahmad Fatoum wrote:
>> Files opened with O_TMPFILE have no name, so read_file can't be used
>> with them. Therefore add a read_fd function, which slurps all a file's
>> contents into a buffer.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>   include/libfile.h |  2 ++
>>   lib/libfile.c     | 44 ++++++++++++++++++++++++++++++++++++++++++++
>>   2 files changed, 46 insertions(+)
>>
>> diff --git a/include/libfile.h b/include/libfile.h
>> index a353ccfa9ea9..423e7ffec5b7 100644
>> --- a/include/libfile.h
>> +++ b/include/libfile.h
>> @@ -12,6 +12,8 @@ char *read_file_line(const char *fmt, ...);
>>     void *read_file(const char *filename, size_t *size);
>>   +void *read_fd(int fd, size_t *size);
>> +
>>   int read_file_2(const char *filename, size_t *size, void **outbuf,
>>           loff_t max_size);
>>   diff --git a/lib/libfile.c b/lib/libfile.c
>> index e53ba08415a2..c257baaa2733 100644
>> --- a/lib/libfile.c
>> +++ b/lib/libfile.c
>> @@ -306,6 +306,50 @@ void *read_file(const char *filename, size_t *size)
>>   }
>>   EXPORT_SYMBOL(read_file);
>>   +/**
>> + * read_fd - read from a file descriptor to an allocated buffer
>> + * @filename:  The file descriptor to read
>> + * @size:      After successful return contains the size of the file
>> + *
>> + * This function reads a file descriptor from offset 0 until EOF to an
>> + * allocated buffer.
>> + *
>> + * Return: The buffer containing the file or NULL on failure
>> + */
>> +void *read_fd(int fd, size_t *out_size)
>> +{
>> +    off_t off;
>> +    ssize_t ret;
>> +    size_t size;
>> +    void *buf;
>> +
>> +    off = lseek(fd, SEEK_CUR, 0);
>> +    if (off >= 0) {
>> +        size = off;
>> +        off = lseek(fd, SEEK_SET, 0);
>> +    }
>> +    if (off < 0) {
>> +        ret = off;
>> +        goto close_fd;
>> +    }
>> +
>> +    buf = malloc(size + 3);
> 
> Maybe check the return value from malloc()?

Yes, I should.

> 
> Also, it's not clear to me why this +3 is needed and the 3 extra \0, maybe an in-code comment would help?

I added a comment in the fixup that I just sent.

Thanks for the review,
Ahmad

> 
>> +    ret = read_full(fd, buf, size);
>> +    if (ret < 0) {
>> +        free(buf);
>> +        goto close_fd;
>> +    }
>> +
>> +    memset(&buf[size], '\0', 3);
>> +    *out_size = size;
>> +
>> +close_fd:
>> +    close(fd);
>> +
>> +    return ret < 0 ? NULL : buf;
>> +}
>> +EXPORT_SYMBOL(read_fd);
>> +
>>   /**
>>    * write_file - write a buffer to a file
>>    * @filename:    The filename to write
> 
> Regards,
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



