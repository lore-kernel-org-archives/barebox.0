Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjURM-0004kK-TA
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 12:00:19 +0000
Received: by obbta17 with SMTP id ta17so8735221obb.36
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2012 05:00:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 26 Jun 2012 13:59:53 +0200
Message-ID: <CAGm1_kvHqr_RiqUkB6ue_bO7Sj3u=jVUKmM9t9Fw-Z_=Sw=ryQ@mail.gmail.com>
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
Subject: Re: Add basic support for the OMAP-L138/DA850
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Jan,

> this series introduces a new ARM machine 'davinci' and adds support
> for UART, pin mux, power/clock, USB 1.1, NAND and SPI. Included is
> support for the HMI10 system which was used to develop and test this
> series.
>
> A second series adding ethernet (EMAC) and display (LCDC) support
> will be submitted when this is accepted.

do you also have am335x system? AFAIK they both share same IP blocks.

Regards,
Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
