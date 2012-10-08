Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLCNg-0005q7-Aw
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 12:24:20 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so433125iej.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 05:24:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121008121527.GY26553@game.jcrosoft.org>
References: <1349694156-30554-1-git-send-email-s.hauer@pengutronix.de>
 <20121008121527.GY26553@game.jcrosoft.org>
Date: Mon, 8 Oct 2012 16:24:18 +0400
Message-ID: <CAA4bVAGCbbrw0RmMdpDa88bF12Wjqp2FFixsKZ_-6wYyUKwcCQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM at91sam9260ek: remove unused reset entry
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 8 October 2012 16:15, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 13:02 Mon 08 Oct     , Sascha Hauer wrote:
>> The at91sam9260ek has a custom reset function which does the same thing
>> as the default function. Also it does not define MACH_HAS_LOWLEVEL_INIT
>> as it should do. Remove the function.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
> Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>
> btw we should rename the command reset reboot because it start to be confusing

IMHO it is a very good idea!

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
