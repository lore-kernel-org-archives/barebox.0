Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNlXL-0003v7-DB
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 14:20:56 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so3381103lag.36
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2012 07:20:52 -0700 (PDT)
Message-ID: <507C1BC2.6070202@gmail.com>
Date: Mon, 15 Oct 2012 16:20:50 +0200
From: Carlo Caione <carlo.caione@gmail.com>
MIME-Version: 1.0
References: <1350136816-33529-1-git-send-email-carlo.caione@gmail.com>
 <20121015065640.GF27665@pengutronix.de>
 <20121015124349.GX13639@game.jcrosoft.org>
In-Reply-To: <20121015124349.GX13639@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/5] BCM2835/Raspberry-Pi support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 10/15/2012 02:43 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:56 Mon 15 Oct     , Sascha Hauer wrote:
>>
>> Jean-Christophe,
>>
>> Since you reviewed this series can I assume you give your Acked-by once
>> you are happy with it?
> I'm happy with it except one point that I just check with the mainline kernel
> the DT
>
> the timer as example is "brcm,bcm2835-system-timer" not "brcm,bcm2835-cs"
>
> for gpio it's the right one
>
> as we can agree to dt must be in sync

You are definitely right.
I'll resubmit the patches.
Thank you for your review, it is greatly appreciated.

Best,

--
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
