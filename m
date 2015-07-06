Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC4et-0004vP-04
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 11:33:59 +0000
Received: by lagx9 with SMTP id x9so150802988lag.1
 for <barebox@lists.infradead.org>; Mon, 06 Jul 2015 04:33:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150706113113.GO18700@pengutronix.de>
References: <CABQt-UkHumKVU+-tEjj2moz_S8vbdeYDtY7CfJqA-qZbrWiyWw@mail.gmail.com>
 <20150706113113.GO18700@pengutronix.de>
Date: Mon, 6 Jul 2015 13:33:35 +0200
Message-ID: <CABQt-UnAkB=Jfe67OhWuh6MTTdQYvH1nSjqn5JdhWM3rvKJHPg@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: Re: [PATCH] digest: digest doesn't return an error if the signature
 length is incorrect
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

I'm working on it :) (I am currently working on how to use git
send-email for the next patch).

Thank you for the handiwork!

--
Philippe LEDUC
ledphilippe@gmail.com


2015-07-06 13:31 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Fri, Jul 03, 2015 at 08:47:26AM +0200, Philippe Leduc wrote:
>> Hi,
>>
>> I noticed that digest return 0 even if the signature length is
>> detected as incorrect. This patch also fix the documentation that
>> seems obsolete (I considered that the patch was simply enough to make
>> two corrections, but tell me if I should propose two patch).
>>
>>
>> Subject: [PATCH] digest: digest doesn't return an error if the
>> signature length is incorrect
>>
>> fix: digest return no error even if the digest length is wrong
>> fix: documentation error (-v -> -s / -V -> -S)
>>
>> Signed-off-by: Philippe Leduc <ledphilippe@gmail.com>
>
> Applied with the fixup Marc suggested. Your mailer wraps the lines, I
> had to apply this one manually. Please have a look if you can fix that
> next time.
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
