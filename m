Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkEDB-0004eA-PO
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 17:43:07 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 14 Sep 2016 17:41:06 +0000
Message-ID: <1473875075.4359.7.camel@rtred1test09.kymeta.local>
References: <1473841290-3935-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473841290-3935-1-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <54FD02ACF9F10F49B5586BE33DA7EF2A@kymetacorp.com>
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
Subject: Re: [PATCH 1/2] pbl: console: Make it work with multiple setup_c()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, 2016-09-14 at 10:21 +0200, Sascha Hauer wrote:
> +
> +static void (*__putc)(void *ctx, int c) = INVALID_PTR;
> +static void *putc_ctx = INVALID_PTR;

There's also __attribute__ ((section(".data"))).  U-boot uses that. It
does make it clear why INVALID_PTR is not NULL.

Also, could use ERR_PTR(-EINVAL).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
