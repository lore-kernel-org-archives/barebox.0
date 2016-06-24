Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x22a.google.com ([2607:f8b0:4002:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGHdv-00041M-Sk
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 03:18:56 +0000
Received: by mail-yw0-x22a.google.com with SMTP id v77so89452404ywg.0
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 20:18:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160622135735.67d30c13d9e86d8681162a22@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
 <20160622135735.67d30c13d9e86d8681162a22@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Jun 2016 20:18:34 -0700
Message-ID: <CAHQ1cqED6uU83tqqSu3NFx2a50G7DNm2WVOUKfiMnDmATJ1AYQ@mail.gmail.com>
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

>
> the int_sqrt() function is defined in the drivers/video/edid.c file.
> To use it we have to keep CONFIG_DRIVER_VIDEO_EDID enabled.
> But I have see no measures on enabling CONFIG_DRIVER_VIDEO_EDID in your patch.
> Have I missed something?

Nope, I missed this function and forgot to deal with it properly.

>
> Can we move int_sqrt() in a separate C library file,
> so edid.c and fbtest.c can both use it?

Absolutely, will fix in v2

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
