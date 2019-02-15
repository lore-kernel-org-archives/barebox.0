Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guS0N-00065c-7o
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 01:09:28 +0000
Received: by mail-wr1-x435.google.com with SMTP id v13so8579659wrw.5
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2019 17:09:26 -0800 (PST)
MIME-Version: 1.0
References: <AM6PR08MB38486076429357D0BCA5B073EB660@AM6PR08MB3848.eurprd08.prod.outlook.com>
In-Reply-To: <AM6PR08MB38486076429357D0BCA5B073EB660@AM6PR08MB3848.eurprd08.prod.outlook.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Feb 2019 17:09:14 -0800
Message-ID: <CAHQ1cqEo03zymuxuxUBcWtY+RKeekB5iTDAS6oijbYm3TXX7Yg@mail.gmail.com>
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
Subject: Re: Usage of mender - updating back to u-boot
To: Patrick Schneider <patrick.schneider@bhtronik.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Feb 13, 2019 at 9:21 AM Patrick Schneider
<patrick.schneider@bhtronik.de> wrote:
>
> Hi everyone,
>
> for a customer (who wants to use mender) we need to switch from barebox to u-boot. Is it somehow possible to flash a u-boot image using a running barebox?
>

In general, yes, you can write a U-Boot (or any) binary image to
appropriate non-volatile memory device using "memcpy"(or plain "cp" if
no special offset handling is needed). However the devil is really in
the details and depending on the HW you are running on some particular
use-cases/scenarios are not supported.

> Or even better, does somebody know if mender is supported in barebox?
>

No, I don't think mender is supported. Closest thing to mender that is
supported would be RAUC: https://rauc.io/

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
