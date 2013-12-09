Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f44.google.com ([74.125.82.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpvDx-0005jO-9q
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 07:25:49 +0000
Received: by mail-wg0-f44.google.com with SMTP id a1so2944615wgh.11
 for <barebox@lists.infradead.org>; Sun, 08 Dec 2013 23:24:49 -0800 (PST)
Date: Mon, 9 Dec 2013 08:24:44 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131209072443.GA1475@omega>
References: <1386199691-12032-1-git-send-email-alex.aring@gmail.com>
 <20131206090732.GA28174@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131206090732.GA28174@pengutronix.de>
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
Subject: Re: [PATCH] serial: add missing depends on ARCH_ZYNQ
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

now I figoure out that this is a bigger problem.

There are architecture which not use the COMMON_CLK framework and has it
own clock framework implementation (for me it was ARCH_AT91). Then the
build failed.

So now we could make a depends on !ARCH_AT91 in COMMON_CLK and a depends
on COMMON_CLK in DRIVER_SERIAL_CADENCE... but this is very ugly and
maybe the ARCH_AT91 get a COMMON_CLK framework...

Sorry for the noise.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
