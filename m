Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x236.google.com ([2607:f8b0:4002:c07::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkqtJ-0002w2-42
 for barebox@lists.infradead.org; Thu, 15 May 2014 08:19:49 +0000
Received: by mail-yk0-f182.google.com with SMTP id 9so579286ykp.41
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 01:19:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400135990-5391-2-git-send-email-s.hauer@pengutronix.de>
References: <1400135990-5391-1-git-send-email-s.hauer@pengutronix.de>
 <1400135990-5391-2-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 10:19:27 +0200
Message-ID: <CAOpc7mH1pNu6YOoYQZRSGNVa=0utOedBAaUT+zqBO7dq=Nevng@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 2/2] mtd: m25p80: update Micron IDs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> +       { "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K) },

Are you sure that this one works?  In u-boot's
drivers/mtd/spi/sf_params.c this one is marked with  WR_QPP | E_FSR |
SECT_4K, and barebox doesn't support E_FSR right now. I have a WIP
patch for it, but haven't published that patch because even with it my
JEDEC 20ba20 N25Q512 doesn't get erased.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
