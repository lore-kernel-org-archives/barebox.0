Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x230.google.com ([2607:f8b0:4001:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoEY0-0005uG-D7
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 17:48:36 +0000
Received: by iodv82 with SMTP id v82so202688173iod.0
 for <barebox@lists.infradead.org>; Mon, 19 Oct 2015 10:48:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151019102626.9d840af3e7f91508b1aaf45a@gmail.com>
References: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
 <20151019102626.9d840af3e7f91508b1aaf45a@gmail.com>
Date: Mon, 19 Oct 2015 10:48:15 -0700
Message-ID: <CAHQ1cqHr4KK4Qbvt83-wqGetSgMAFgctceizBrFk+LKCzC5i1A@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: Add support for semihosting
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>> +.. _filesystems_smhfs:
>> +
>> +File I/O over ARM semihosting support
>> +=====================================
>> +
>> +barebox can communicate with debug programms attached via SWD/JTAG by
>                                       ^^^^^^^^^ programs?
>

Oops, yes, thank you. Will fix.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
