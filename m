Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22e.google.com ([2607:f8b0:4001:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZHH6M-0006B2-L8
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 19:51:51 +0000
Received: by igr7 with SMTP id 7so22247797igr.0
 for <barebox@lists.infradead.org>; Mon, 20 Jul 2015 12:51:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150714050815.GM18700@pengutronix.de>
References: <1436746187-8652-1-git-send-email-asmirnov@kymetacorp.com>
 <20150714050815.GM18700@pengutronix.de>
Date: Mon, 20 Jul 2015 12:51:29 -0700
Message-ID: <CAHQ1cqGyY6JcqUp1R5qwwrP6g+FEGG4YDZit16vXxuCpiAt+YA@mail.gmail.com>
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
Subject: Re: [PATCH] lib: libfile: Do not ignore errors in close()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>>       free(rw_buf);
>>       if (srcfd > 0)
>> -             close(srcfd);
>> +             err1 = close(srcfd);
>>       if (dstfd > 0)
>> -             close(dstfd);
>> +             err2 = close(dstfd);
>
> I agree that an error on closing the destination is an error for
> copy_file, but is an error on closing the source file an error for
> copy_file? We read everything from the source, so errors while closing
> the file should not be relevant.

I guess it depends on one's interpretation of what "success" means for
execution of copy_file(). I personally interpret it as: "the function
accomplished what is was supposed to do and all of the operations that
had to be done in order to do that completed without any errors", but
I can see how that being defined as "the function accomplished it's
main purpose with some possible minor failures" could work too. Since
I expect a call to close() to not fail for 99% of the time I don't see
any harm in checking for errors from both calls, but I don't feel very
strongly about the subject so if you want it I can remove the extra
check.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
