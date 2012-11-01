Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTznl-0008A8-Ek
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 18:47:38 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so3989871iej.36
 for <barebox@lists.infradead.org>; Thu, 01 Nov 2012 11:47:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121101175049.GK29599@game.jcrosoft.org>
References: <1351791438-29967-1-git-send-email-robert.jarzmik@free.fr>
 <20121101175049.GK29599@game.jcrosoft.org>
Date: Thu, 1 Nov 2012 22:47:35 +0400
Message-ID: <CAA4bVAESn=h7+5Wt6TQxuzjGN67uXvDNbQRW5eib2hNq-QGZeA@mail.gmail.com>
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
Subject: Re: [PATCH 0/2] Y-Modem implementation change
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 1 November 2012 21:50, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 18:37 Thu 01 Nov     , Robert Jarzmik wrote:
>> Hi everyone,
>>
>> This patchset aims at changing the Y-Modem protocol implementation.
>> You have already seen the RFC version, this is the next version, which :
>>  - provides a much more tested version
>>  - is ready for review
>>
>> The following comments have been taken into account :
>>  - Antony: testing on a serial line
>>  - Sascha: split between protocol and commands
>>  - Jean-Christophe: kermit protocol change
>>
>> So before doing the real review, could I ask of you :
>>  - Antony: could you redo your test over a serial line by applying only
>>            the first patch so that you can compare loady and loady2 ?
>>            Don't use "loady2 -g", as Y-Modem/G protocol requires a
>>            lossless line (USB), and a serial line cannot guarantee it.
>>  - Sascha: does the split command/protocol suit you ?
>>  - Jean-Christophe: I left the loadb implementation as it is. The goal
>>                     of the patch is to change X-Modem and Y-Modem(G)
>>                     implementation, not kermit. Could you test that I
>>                     have not created a regression of loadb ?
>
> I'll prefer to have a new command named xyz so we have no confusion between
> loadb and the new one

AFAIK, the lrzsz's command for Y-Modem file receive is named 'rb'.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
