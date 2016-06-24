Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGJ56-0005dA-St
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 04:51:05 +0000
Received: by mail-yw0-x242.google.com with SMTP id v77so13649379ywg.2
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 21:50:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160622134913.7719306547ef43001d163c71@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
 <20160622134913.7719306547ef43001d163c71@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 21:50:43 -0700
Message-ID: <CAHQ1cqFr6pgRf1O7EYYwhK7Bo3jvqteL9nuLeyQp2VGUFmDP+Q@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Wed, Jun 22, 2016 at 3:49 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Tue, 21 Jun 2016 21:39:29 -0700
> Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
>> Add 'fbtest' - a command to produce test patterns on a screen
>                                                     ^^^^^^^^^^^ "on A screen" here
>
>
> ...
>
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -1417,6 +1417,15 @@ config CMD_SPLASH
>>                 -b COLOR      background color in 0xttrrggbb
>>                 -o            render offscreen
>>
>> +config CMD_FBTEST
>> +     bool
>> +     depends on VIDEO
>> +     select 2D_PRIMITIVES
>> +     prompt "FB test"
>> +     help
>> +       Framebuffer test command that allows to produce a number of
>> +       test patterns on the screen.
>                         ^^^^^^^^^^^^^ "on THE screen" here
>
> Can you fix this inconsistency, please?
>

Sure, will fix in v2.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
