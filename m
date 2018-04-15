Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vmse03.mailcluster.com.au ([2401:fc00:0:14::11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7XLX-00010Y-7s
 for barebox@lists.infradead.org; Sun, 15 Apr 2018 02:24:52 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 15 Apr 2018 12:24:37 +1000
Message-ID: <2824671.pASI2u4fUC@dev4>
In-Reply-To: <20180414175103.10125-10-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
 <20180414175103.10125-10-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On Sunday, April 15, 2018 3:50:55 AM AEST Andrey Smirnov wrote:
> Move code to extract appropiate BOOT_CFG bits to decode booutsource on

s/booutsource/bootsource

> i.MX53, 6, and 7 into small functions for clarity and to allow sharing
> the code between i.MX53 and i.MX6.
> 

Cheers,
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
