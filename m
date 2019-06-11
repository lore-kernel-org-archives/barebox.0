Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haaDK-0001QS-4x
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 06:24:59 +0000
Received: by mail-it1-x144.google.com with SMTP id e25so2949087itk.3
 for <barebox@lists.infradead.org>; Mon, 10 Jun 2019 23:24:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190610155835.18304-1-vivien.didelot@gmail.com>
In-Reply-To: <20190610155835.18304-1-vivien.didelot@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 10 Jun 2019 23:24:44 -0700
Message-ID: <CAHQ1cqGYbLAR0RwOfR71bZ=TTM9i7M9QCjb2bBXc-BduvN6yyA@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: zii-rdu2: disable eth0 and eth1
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 10, 2019 at 8:59 AM Vivien Didelot <vivien.didelot@gmail.com> wrote:
>
> The current support for the ZII RDU2 Board times out on eth0 and eth1
> when booting 'net' from an alternative interface, like a USB Ethernet
> dongle. eth0 is the DSA master interface and has no use within barebox,
> as well as the gigabit interface eth1 which is wired to the switch
> port 0. Disable them to allow Barebox to boot right away from network.
>

I personally don't have any preference as far as this is concerned,
since I usually override all of those settings and disable DSA in the
switch anyway. However we might want to wait to hear back from Lucas
or other folks at Pengutronix who dealt with RDU2, since this patch
might go against how they use it.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
