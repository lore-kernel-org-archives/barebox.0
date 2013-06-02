Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f179.google.com ([209.85.217.179])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjHP8-0001vV-K3
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 23:09:39 +0000
Received: by mail-lb0-f179.google.com with SMTP id w20so235198lbh.10
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2013 16:09:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1370188044.845875578@f297.mail.ru>
References: <1370178849-37125-1-git-send-email-monaka@monami-ya.com>
 <1370188044.845875578@f297.mail.ru>
Date: Mon, 3 Jun 2013 08:02:03 +0900
Message-ID: <CAJBvFxMPRRJNEJjeb5XNeEfatN5-XT56knNJioT=ycsN1PP6WQ@mail.gmail.com>
From: Masaki Muranaka <monaka@monami-ya.jp>
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
Subject: Re: [PATCH] Remove ftstc(). It is declared but not implemented.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hello,

It's easy to check by using whois service whether monami-ya.com and
monami-ya.jp are owned by same company...
Ok. I'll use monami-ya.jp in this project. I'm going to resend the patch.
Please inform me when I should fix my environment.

2013/6/3 Alexander Shiyan <shc_work@mail.ru>:
>> ---
>>  include/stdio.h | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/include/stdio.h b/include/stdio.h
>> index 5c091a8..ff2572e 100644
>> --- a/include/stdio.h
>> +++ b/include/stdio.h
>> @@ -101,7 +101,6 @@ static inline void putchar(char c)
>>  int  fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
>>  int  fputs(int file, const char *s);
>>  int  fputc(int file, const char c);
>> -int  ftstc(int file);
>>  int  fgetc(int file);
>>
>>  #endif /* __STDIO_H */
>> --
>
> Here (and in some other pathes) is missing Signed-off-by line.
> Additionally, I want to focus on the fact that the address of From and Signed-off-by differ.
> Git documentation says not to have been used aliases.
> So, I think this field should be equal in the future.
>
> ---



-- 
--
Masaki Muranaka
Monami-ya LLC, Japan.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
