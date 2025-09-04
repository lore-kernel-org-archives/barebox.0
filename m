Delivery-date: Thu, 04 Sep 2025 18:29:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuCpx-0086dM-0K
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 18:29:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuCpv-0004cd-Kc
	for lore@pengutronix.de; Thu, 04 Sep 2025 18:29:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EeGUZJGqzLt89TqpolU/vUzhW7Hshs69Tq53p6jzhKA=; b=QTiX79nZRqt8Nb8uWT6mcK2Bk0
	Y+pv/UvpezrufH10AY7MvI4kigNqSBo2odVgvE43GBElh6AzjNIeRqM+D6nFuxYP4H55UBppcAX9v
	FVixks1I1mbPugn68a505x20DEixLWKIZTt7cVkvbVHzq8amkZAexHoEeMCKMzkQLOlZIdf9xvJWP
	o+oZXh7FELcrZPyV55ZAEJ9EsUPE25zcMYe7dz0WljOP37cK5EqkiivvBjVIrtmUJ2jhanTxkpUz7
	BSOm/v877VE+MdSshyJ7L4RC2cvrmHWBQkZwEswhMzPima+vprWMBOmtYofcpjfnA1AEfLYRXVFLg
	D1jh+BgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuCoz-0000000Cw9z-0Ox0;
	Thu, 04 Sep 2025 16:28:25 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuA7h-0000000Bvc8-2MMD
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 13:35:35 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-55f6f434c96so904794e87.2
        for <barebox@lists.infradead.org>; Thu, 04 Sep 2025 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756992931; x=1757597731; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EeGUZJGqzLt89TqpolU/vUzhW7Hshs69Tq53p6jzhKA=;
        b=pxjFyVg0HdaTL79SMIXJqQ8zWKgRpMeC0HcQDq8LGhxWIf2lod99wGJ750/FskYu6r
         GigWCS3xVRXWZGDjqEYXVnsHXZa9neQZC1e2n9X8zuKQIixCy1QA08uTO0pXDgl1Cc8c
         vdB4KP3Pq3QtLWOZv5hGXTGlLiw02L8pQdIjxE67KWFccZiA9uTOvZBsgcVIgUpFsaTl
         OdR3zKHsyYout3EvQYNoq4pIAZ3YO/ylYFuglMoq+eWXa7Zm6sgojq7gVV1pSKADxRYq
         0rnO4kCV2Zy71O7cEDn/vr5OOper1tu/6rHHMrIEwA8XVMnhZ8D1J6+PN8AM5zeaUnoj
         v3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756992931; x=1757597731;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EeGUZJGqzLt89TqpolU/vUzhW7Hshs69Tq53p6jzhKA=;
        b=gO5QF+aORZRqi6OzV0dSW3B66/ksFuAqdw9gO/on9Q+fJWLPMKHco3McK0UZ4VqUDZ
         iPpulmXhFiztLodgUyV4VEYBkOfQXo2rc3S1NBVTakoSnbU6f41J82C70KntehyprpEf
         tv0Sv9cHQCcFI6NYeLB877BBI8tDIi1cvcW3640qKKxg/mrfQ4EuCSufM22umQD3fdZS
         oML/aym9OhDr8EiEFr3WNh+LDCH7BN+t9fjvfh2fk6jgN8u84ZZKXsfXGLyzFZ3gK7g7
         zqF97690JVKLfdKnlwLdaLMsdIKwSLwFI885fkXCMFCIGUI4LuAWEGX0QfEObBM2kJEf
         BZxw==
X-Forwarded-Encrypted: i=1; AJvYcCVfFWvyUmS0VuGgAhoSMcZYxmulKf9hQFihCHOsTYMqamnqm5B7reLXOln8WNNmBYUePZsZUuIq@lists.infradead.org
X-Gm-Message-State: AOJu0YwAT3RIWDPwYIPxhe8v0+HpbYJdSYq3Kq4t5PSbMNTzU269tPYg
	JD3LEv3PJh+KEgUGbHTWRsd46Uql+2a3D/LpuHQr34cNenl6Zrcj/b2kAb+3K0ZaZW84w1KX6oK
	SLzir
X-Gm-Gg: ASbGncsww2UeWiJGL4RkxfPbC5Wr6aKtPWsNLiwQX+c2HftgZXNenAwhggkHsdtb+vx
	rfTmMM9DV/z1KVDWxBSxHNvFgT+NczxW2JQ4Ew00WUdyMb9mGgcs7fY5g0d3IqBJ7BDxSEna8jf
	GIArew0fmYvB05ESJn1jqHd0yIlKeynjIZipdgw0v04FMw2ocyAWH3oPJdGS63KI2LmrTaHZB9p
	4zeUqOqj5YKrsdLuAaKWD3D4CYcFg+lOJf7fNx0pVnQCiZ4/xDWShJlHBiSb/TzsrRiu2QbRDUn
	8Cpi0JslpUT7SfZd1r0ms9rP9m9X1gnGrpjaVBY5hrw+0DMC3NaP1xJoBgpfdBPdrEazShnyF4T
	gYs2Qq3PWXgIZlRFNUBAe5zDIh1qFq15vqOFxSkKn1LTf9dE5rGay46sXlL7CDE8=
X-Google-Smtp-Source: AGHT+IHj2ev5lfJniRmYV28ZS164rLSlqQ0WRIP1yNdEnVqIjg9tz9FCwsDCauQyEiyDRf++gww29g==
X-Received: by 2002:a05:6512:608b:b0:55f:6831:6eef with SMTP id 2adb3069b0e04-55f7089c58amr5383067e87.8.1756992931245;
        Thu, 04 Sep 2025 06:35:31 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9c7esm1217147e87.65.2025.09.04.06.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:35:30 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <96be67c8-e10e-40f7-9945-76ccfa8d0aac@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-2-tobias@waldekranz.com>
 <96be67c8-e10e-40f7-9945-76ccfa8d0aac@pengutronix.de>
Date: Thu, 04 Sep 2025 15:35:30 +0200
Message-ID: <87wm6e2vdp.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_063533_838841_5565247A 
X-CRM114-Status: GOOD (  29.20  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] string: add strtok/strtokv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On tor, sep 04, 2025 at 13:00, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hello Tobias,
>
> On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
>> Add an implementation of libc's standard strtok(3), which is useful
>> for tokenizing strings.
>
> strtok was previously removed in favor of strsep as it doesn't suffer
> from re-entrancy issues (poller and bthreads can run during delays). If
> you want to allow escapes, there's also strsep_unescaped.

Aha, my bad. I did not realize that there was more than one thread of
execution.

strsep() is not quite the same thing though, I am really after the
strtok()'s behavior of skipping empty tokens. How would you feel about
adding strtok_r() instead?

>> Also, add a version that will collect all tokens from a string into an
>> array, which is useful in situations where you need to know how many
>> tokens there are, and when a token's relative position in the order is
>> significant.
>
> We have the inverse as strjoin, but not this. Maybe call it strsplit
> instead?

If you accept my strtok_r() suggestion, do you still think strsplit() is
a better name, or is there value in signaling the underlying strtok()
behavior?

> Cheers,
> Ahmad
>
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  include/string.h |  2 ++
>>  lib/string.c     | 66 ++++++++++++++++++++++++++++++++++++++++++++++++
>>  2 files changed, 68 insertions(+)
>> 
>> diff --git a/include/string.h b/include/string.h
>> index 71affe48b6..c8df8540d8 100644
>> --- a/include/string.h
>> +++ b/include/string.h
>> @@ -8,6 +8,8 @@
>>  void *mempcpy(void *dest, const void *src, size_t count);
>>  int strtobool(const char *str, int *val);
>>  char *strsep_unescaped(char **, const char *, char *);
>> +char *strtok(char *str, const char *delim);
>> +int strtokv(char *str, const char *delim, char ***vecp);
>>  char *stpcpy(char *dest, const char *src);
>>  bool strends(const char *str, const char *postfix);
>>  
>> diff --git a/lib/string.c b/lib/string.c
>> index 73637cd971..be7e65eb45 100644
>> --- a/lib/string.c
>> +++ b/lib/string.c
>> @@ -593,6 +593,72 @@ char *strsep_unescaped(char **s, const char *ct, char *delim)
>>          return sbegin;
>>  }
>>  
>> +/**
>> + * strtok - extract tokens from string
>> + * @str:	string to split
>> + * @delim:	set of delimiter characters
>> + *
>> + * The strtok() function breaks up a string into zero or more nonempty
>> + * tokens.  On the first call, the string to be parsed should be
>> + * specified in @str.  In each subsequent call that should parse the
>> + * same string, @str must be NULL.
>> + *
>> + * @delim specifies a set of bytes that delimit the tokens in the
>> + * string.
>> + *
>> + * Each call to strtok() returns a pointer to a string containing the
>> + * next token.  This is done by replacing the first delimiter with a
>> + * NUL character, the operation is thus destructive to the string. If
>> + * no more tokens are found, strtok() returns NULL.
>> + */
>> +char *strtok(char *str, const char *delim)
>> +{
>> +	static char *cursor;
>> +
>> +	if (str)
>> +		cursor = str;
>> +
>> +	if (!cursor)
>> +		return NULL;
>> +
>> +	cursor += strspn(cursor, delim);
>> +	if (*cursor == '\0') {
>> +		cursor = NULL;
>> +		return NULL;
>> +	}
>> +
>> +	return strsep(&cursor, delim);
>> +}
>> +EXPORT_SYMBOL(strtok);
>> +
>> +/**
>> + * strtokv - split string into array of tokens based on a delimiter set
>> + * @str:	string to split
>> + * @delim:	set of delimiter characters
>> + * @vecp:	array of tokens
>> + *
>> + * Split @str into tokens delimited by @delim, using strtok(), and
>> + * store the allocated token array in @vecp, which the caller is
>> + * responsible for freeing.
>> + *
>> + * Return: The number of tokens in the array.
>> + */
>> +int strtokv(char *str, const char *delim, char ***vecp)
>> +{
>> +	char *tok, **vec = NULL;
>> +	int cnt = 0;
>> +
>> +
>> +	for (tok = strtok(str, delim); tok; tok = strtok(NULL, delim)) {
>> +		vec = xrealloc(vec, (cnt + 1) * sizeof(*vec));
>> +		vec[cnt++] = tok;
>> +	}
>> +
>> +	*vecp = vec;
>> +	return cnt;
>> +}
>> +EXPORT_SYMBOL(strtokv);
>> +
>>  #ifndef __HAVE_ARCH_STRSWAB
>>  /**
>>   * strswab - swap adjacent even and odd bytes in %NUL-terminated string
>
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


