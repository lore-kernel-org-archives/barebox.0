Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x22a.google.com ([2607:f8b0:4001:c0b::22a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f874b-0000DX-2K
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 16:33:46 +0000
Received: by mail-it0-x22a.google.com with SMTP id 19-v6so12360712itw.3
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 09:33:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2824671.pASI2u4fUC@dev4>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
 <20180414175103.10125-10-andrew.smirnov@gmail.com> <2824671.pASI2u4fUC@dev4>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 09:33:32 -0700
Message-ID: <CAHQ1cqGCV56U-98-v_6=M7XMdnC8R571AVc0UiWN+87Q=ifhqQ@mail.gmail.com>
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
Subject: Re: [PATCH 09/17] ARM: i.MX: boot: Move magic values into small
 functions
To: Marc Reilly <marc@cpdesign.com.au>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Apr 14, 2018 at 7:24 PM, Marc Reilly <marc@cpdesign.com.au> wrote:
> On Sunday, April 15, 2018 3:50:55 AM AEST Andrey Smirnov wrote:
>> Move code to extract appropiate BOOT_CFG bits to decode booutsource on
>
> s/booutsource/bootsource
>

Fixed in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
