Delivery-date: Mon, 08 Sep 2025 12:08:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnl-000bdt-1W
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 12:08:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYnk-0006WP-HS
	for lore@pengutronix.de; Mon, 08 Sep 2025 12:08:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T+70hT7tpggQkhKo06OSoXnEy/E/azwAVifTU5TDs+o=; b=XmU7iSrWtYVubK0/xZKIlb8pd1
	Cd37ypp0JhjC3o0ltubRbbK9seE5uuTk/3+m7ip86yhAFx0r4FlSGyZ7aKnRhNqFzMbHx3TEHIR5M
	gx4tbH7KjBCVf4MP4VZT4CpUTncpb+Ks0TfSElNgeEnfVVvLqFGBJdJJ4HgoAPhCjA8LLfSUBJRjV
	J3EelbXbGl+Z2+ZsxadD7yaKqbPSs7wvndh2UrbYs0lHwdmkw4Xl7HjX5jaJUTQyPWodS5SVicJ9x
	qOumb5T2+Ojq0JcrkfbL2iPx+1zEcRVeIozaqgf9Gp7BrEhVjhA6OHjE1+VXdGwfQIbFtnZYNvxV3
	M5uBJnDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYnE-0000000GGgO-0vd3;
	Mon, 08 Sep 2025 10:08:12 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvY97-0000000G17z-2Su9
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 09:26:47 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-625e1ef08eeso3062389a12.1
        for <barebox@lists.infradead.org>; Mon, 08 Sep 2025 02:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757323603; x=1757928403; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T+70hT7tpggQkhKo06OSoXnEy/E/azwAVifTU5TDs+o=;
        b=B2+CO+3/YdVs577nWvgk+jERF/ZLNuuw1pp0WngD8oq4yNNAREUekrATmlBl8gMMCV
         TCVGDp3MSCbqaD9O1op0berp0WHDITO2gJZpiBxDbpN+/PojdpYHFxUyy8ANfvme1lQc
         0zEEhX0kTpoHx4yXISqK5eeGnvK/7FddHMLGs1UAueiKZiPALBOM8NnfUGjXKS3ri5cX
         bj1SZiQ0W3o+u0iv8VxD/nUdPc7/nz5MWQneOavZvhU3asyLNYu8FKR/zam1uQ7FD4UL
         soaws0JBi19a/koKGIRtQmNCzHRBXcmOdLjI/xWoYFxQRhg3pnEHnjnTMYuMB9u7lWZb
         /Dvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757323603; x=1757928403;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T+70hT7tpggQkhKo06OSoXnEy/E/azwAVifTU5TDs+o=;
        b=buQ2J3oZX+/8D8h3W7Lt+mQvhdiXrlgWGFFQ7AeT3l/eJTsT95n96K/Tc+gn4tgBS2
         G8h3O2utYIEX4f77gyaH8WERNqJX3cY8q1SqJ+qjDJabcaoIdj6wpTsQdlsbJFQtovTm
         TgXTIN7HmsAq9IOrnM1nMp+tmW+p5YbNr2xgfBGgCN8Uw/mBUzKu4pkyCFxj11s9ZjfY
         drCsVCo+YvpA8nkcvwpFi0Rzt0HquW6pnczJs350rv9OOzYGxYxEXjuH390A1DFERPu2
         PNO0N6Na0W3o3fdsLAbYLSJjt2P5sbAC3svAspQ4BVHG5brBtRZSdx8Zkz1Z7F1aZN0W
         ar9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVa/tshjcgAtaHEqdmxFBgbVCtFPBYLRFSioYGKRAtBmX97u60w9gJ6IZ/luVuz8xcoldeAZntd@lists.infradead.org
X-Gm-Message-State: AOJu0YyN2/O3kgdYwJiANfR1lw7pFz3hJRQLt+F+G9oOoQQVq3Xsi5A3
	Ikq8JaPJ7K4usqBoc1tpIU7xoevRI624fqR5ZWOLtqsY3f75Z1UfLd7px0ftM4z52gNT5G76fls
	U4mnk
X-Gm-Gg: ASbGncvAuevmxqCMAQfby8JEDDqQeNGyPWckV4a6Qftq9xNy56F1LW0jDGXzKxnPtzz
	1XieUlwBc2vwCd38BTfmyuXI6KVmPPT3ekpOlOLbu26IEoUAQwJrqR80s1m11FsZeNxxCHKFJyK
	OHsOh7Torjn7FJmfUFtu8BexhyJI1QAzuEOCkVlVpU3zACMme9vP2X6Xyz3VDcPsdcRRv1BRZZV
	nZzT06f4Agb1pFR6FOwUrVzBQoqIog/8H6TaLsUHit9Isa9RUYHsCbd5RRvzQ6A+AgQb0qT5Ice
	n+Dl4EWTmcPwbRbu0Sd/h/pLIuKTaVBmWhG0UhqN8AE+cAJcyKRLgpUhLezPKj/Ud8mjrrPDSkz
	4PbF3oaqSTUZ03O032Rgd4O0pM79aUvhEYYZ6Rm1yv91FpVlYJCcnS8LJernT+fk=
X-Google-Smtp-Source: AGHT+IGoYsIJDpIz+LnqGB1M5n/ceN7YovUcO1+kBYlY6nODtymOZEkoRqc28vaP/b17iPsxq1GCsg==
X-Received: by 2002:a05:6402:d0d:b0:620:d826:b4c3 with SMTP id 4fb4d7f45d1cf-6237531ac6dmr6707234a12.0.1757323603185;
        Mon, 08 Sep 2025 02:26:43 -0700 (PDT)
Received: from wkz-x13 (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-620e3289db2sm7564296a12.4.2025.09.08.02.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 02:26:42 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <d321b000-bdbc-479e-886a-568299aebcf1@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-2-tobias@waldekranz.com>
 <96be67c8-e10e-40f7-9945-76ccfa8d0aac@pengutronix.de>
 <87wm6e2vdp.fsf@waldekranz.com>
 <d321b000-bdbc-479e-886a-568299aebcf1@pengutronix.de>
Date: Mon, 08 Sep 2025 11:26:42 +0200
Message-ID: <87ms752t2l.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_022645_872750_064E3AF2 
X-CRM114-Status: GOOD (  37.79  )
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

On fre, sep 05, 2025 at 18:28, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Hi,
>
> On 9/4/25 3:35 PM, Tobias Waldekranz wrote:
>> On tor, sep 04, 2025 at 13:00, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> Hello Tobias,
>>>
>>> On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
>>>> Add an implementation of libc's standard strtok(3), which is useful
>>>> for tokenizing strings.
>>>
>>> strtok was previously removed in favor of strsep as it doesn't suffer
>>> from re-entrancy issues (poller and bthreads can run during delays). If
>>> you want to allow escapes, there's also strsep_unescaped.
>> 
>> Aha, my bad. I did not realize that there was more than one thread of
>> execution.
>
> The pollers are run during delay loops for stuff like feeding a
> watchdog, blinking a heartbeat LED or polling network link state.
> Bthreads are currently only used for the USB mass storage gadget[1] and
> out-of-tree for baredoom, so it can be played while booting..

V-e-r-y cool way to demo Barebox, BTW :)

>> strsep() is not quite the same thing though, I am really after the
>> strtok()'s behavior of skipping empty tokens.
>
> Ah, right. strsep is used in a loop, where it's just an extra check to
> skip empty tokens.
>
>> How would you feel about adding strtok_r() instead?
>
> You are not using anyways though, so what does it matter compared to
>
> while ((token = strsep(&sep, delims))) {
>         if (!*token)
>                 continue;
>
> ?

I just thought it might be a good hint for future readers: "we're
following strtok() semantics here". Anyway, it is not important, I'll
drop it in v2.

>>>> Also, add a version that will collect all tokens from a string into an
>>>> array, which is useful in situations where you need to know how many
>>>> tokens there are, and when a token's relative position in the order is
>>>> significant.
>>>
>>> We have the inverse as strjoin, but not this. Maybe call it strsplit
>>> instead?
>> 
>> If you accept my strtok_r() suggestion, do you still think strsplit() is
>> a better name, or is there value in signaling the underlying strtok()
>> behavior?
>
> I can see the argument that strjoin(strsplit(s)) should be s.
>
> Ok, let's keep it at strtokv. Some final bikeshedding: Would it be
> cleaner to return the string argument and have the length be the pointer
> argument?

Agreed, the array does seem like the "primary" return value. I'll swap
them for v2.

> [1]: Implementing stackful coroutines was less of a hassle than
> rewriting a complex state machine implemented as a kthread..
>
> Cheers,
> Ahmad
>
>> 
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>>>> ---
>>>>  include/string.h |  2 ++
>>>>  lib/string.c     | 66 ++++++++++++++++++++++++++++++++++++++++++++++++
>>>>  2 files changed, 68 insertions(+)
>>>>
>>>> diff --git a/include/string.h b/include/string.h
>>>> index 71affe48b6..c8df8540d8 100644
>>>> --- a/include/string.h
>>>> +++ b/include/string.h
>>>> @@ -8,6 +8,8 @@
>>>>  void *mempcpy(void *dest, const void *src, size_t count);
>>>>  int strtobool(const char *str, int *val);
>>>>  char *strsep_unescaped(char **, const char *, char *);
>>>> +char *strtok(char *str, const char *delim);
>>>> +int strtokv(char *str, const char *delim, char ***vecp);
>>>>  char *stpcpy(char *dest, const char *src);
>>>>  bool strends(const char *str, const char *postfix);
>>>>  
>>>> diff --git a/lib/string.c b/lib/string.c
>>>> index 73637cd971..be7e65eb45 100644
>>>> --- a/lib/string.c
>>>> +++ b/lib/string.c
>>>> @@ -593,6 +593,72 @@ char *strsep_unescaped(char **s, const char *ct, char *delim)
>>>>          return sbegin;
>>>>  }
>>>>  
>>>> +/**
>>>> + * strtok - extract tokens from string
>>>> + * @str:	string to split
>>>> + * @delim:	set of delimiter characters
>>>> + *
>>>> + * The strtok() function breaks up a string into zero or more nonempty
>>>> + * tokens.  On the first call, the string to be parsed should be
>>>> + * specified in @str.  In each subsequent call that should parse the
>>>> + * same string, @str must be NULL.
>>>> + *
>>>> + * @delim specifies a set of bytes that delimit the tokens in the
>>>> + * string.
>>>> + *
>>>> + * Each call to strtok() returns a pointer to a string containing the
>>>> + * next token.  This is done by replacing the first delimiter with a
>>>> + * NUL character, the operation is thus destructive to the string. If
>>>> + * no more tokens are found, strtok() returns NULL.
>>>> + */
>>>> +char *strtok(char *str, const char *delim)
>>>> +{
>>>> +	static char *cursor;
>>>> +
>>>> +	if (str)
>>>> +		cursor = str;
>>>> +
>>>> +	if (!cursor)
>>>> +		return NULL;
>>>> +
>>>> +	cursor += strspn(cursor, delim);
>>>> +	if (*cursor == '\0') {
>>>> +		cursor = NULL;
>>>> +		return NULL;
>>>> +	}
>>>> +
>>>> +	return strsep(&cursor, delim);
>>>> +}
>>>> +EXPORT_SYMBOL(strtok);
>>>> +
>>>> +/**
>>>> + * strtokv - split string into array of tokens based on a delimiter set
>>>> + * @str:	string to split
>>>> + * @delim:	set of delimiter characters
>>>> + * @vecp:	array of tokens
>>>> + *
>>>> + * Split @str into tokens delimited by @delim, using strtok(), and
>>>> + * store the allocated token array in @vecp, which the caller is
>>>> + * responsible for freeing.
>>>> + *
>>>> + * Return: The number of tokens in the array.
>>>> + */
>>>> +int strtokv(char *str, const char *delim, char ***vecp)
>>>> +{
>>>> +	char *tok, **vec = NULL;
>>>> +	int cnt = 0;
>>>> +
>>>> +
>>>> +	for (tok = strtok(str, delim); tok; tok = strtok(NULL, delim)) {
>>>> +		vec = xrealloc(vec, (cnt + 1) * sizeof(*vec));
>>>> +		vec[cnt++] = tok;
>>>> +	}
>>>> +
>>>> +	*vecp = vec;
>>>> +	return cnt;
>>>> +}
>>>> +EXPORT_SYMBOL(strtokv);
>>>> +
>>>>  #ifndef __HAVE_ARCH_STRSWAB
>>>>  /**
>>>>   * strswab - swap adjacent even and odd bytes in %NUL-terminated string
>>>
>>> -- 
>>> Pengutronix e.K.                  |                             |
>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>> 
>
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |


