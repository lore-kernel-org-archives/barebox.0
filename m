Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ia0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TW0uV-0006Gx-7S
 for barebox@lists.infradead.org; Wed, 07 Nov 2012 08:22:56 +0000
Received: by mail-ia0-f177.google.com with SMTP id x26so921018iak.36
 for <barebox@lists.infradead.org>; Wed, 07 Nov 2012 00:22:53 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <87wqxytq00.fsf@free.fr>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <1352051724-16253-1-git-send-email-robert.jarzmik@free.fr>
 <20121104183659.GC29599@game.jcrosoft.org> <87mwyvvs7o.fsf@free.fr>
 <20121105182544.GB25679@game.jcrosoft.org> <878vafvq9b.fsf@free.fr>
 <20121105194907.GC25679@game.jcrosoft.org> <871ug7visp.fsf@free.fr>
 <20121106073458.GD25679@game.jcrosoft.org> <87wqxytq00.fsf@free.fr>
Date: Wed, 7 Nov 2012 12:22:53 +0400
Message-ID: <CAA4bVAHpB2zxpC1LznHG1A64BohWEZSA6D3Wocx0y2fK+5CcXw@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/2] commands: change Y-Modem implementation
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 7 November 2012 00:50, Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
>
>> On 22:31 Mon 05 Nov     , Robert Jarzmik wrote:
>>> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
>>> And how do you choose the alternative UART ? loady is not provided such a
>>> parameter in its new form.
>> by it's name cs1 as example
>
>>> Now if you want, I can add it. And if I add it, I'll add a timeout also to the
>>> xy_flush() function ...
>> yes please
>
>>> >> > can you put the v3 on a tree somewhere so I can pull it
>>> >> I'll try. I have no external git I can push to. If you have a hint ...
>>> > https://git.wiki.kernel.org/index.php/GitHosting
>>> Ah yes, ok. I'll send you the URL once I've amended the patches, along the
>>> patch mails.
>> personnaly for at91 we use github tks
> Here is my candidate for v3 :
>      git fetch git@github.com:rjarzmik/barebox.git xymodem
>
> If you could test the "loady -t cs1", as I don't happen to have multiple
> consoles ...
> And Antony, if you have a little bit of time, would you test it also, as that
> endianess bug drove me mad.

I just have tested your v3 patchset. It works fine on my little-endian
MIPS CPU, but it needs a small patch for correct work on the
big-endian one. You can find the patch in my next message.

I have fetched your v3 branch from your github repo. I'm sorry, but I
have no time to test it just now on my hardware. But I think where
will be no problems with squashing my patch into it.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
