Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x234.google.com ([2607:f8b0:400d:c01::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8aVT-00057o-Ms
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 20:13:36 +0000
Received: by mail-qc0-f180.google.com with SMTP id i8so17017790qcq.25
 for <barebox@lists.infradead.org>; Tue, 06 Jan 2015 12:13:14 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150105093154.GE30369@pengutronix.de>
References: <1420038655-8856-1-git-send-email-andrew.smirnov@gmail.com>
 <20150105093154.GE30369@pengutronix.de>
Date: Tue, 6 Jan 2015 12:13:14 -0800
Message-ID: <CAHQ1cqFoeUPe0x173BU1eBFdQP+cF8f+owXaoUW4g5AN6tAsNA@mail.gmail.com>
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
Subject: Re: [PATCH] i.MX: SPI: Respect SPI_LSB_FIRST flag in mode settings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Better introduce a imx_xchg_single which does the necessary bit
> reversing and calls imx->xchg_single. This avoids duplicating the code
> for all three bits_per_word settings.
>

I like this idea. Will do for the next version of the patch.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
