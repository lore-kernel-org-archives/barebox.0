Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD3jr-0006gI-4F
 for barebox@lists.infradead.org; Tue, 23 May 2017 06:56:16 +0000
Received: by mail-lf0-x229.google.com with SMTP id h4so42858194lfj.3
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 23:55:54 -0700 (PDT)
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-4-andrew.smirnov@gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <402515be-7bed-cbad-449d-907747f0b513@cogentembedded.com>
Date: Tue, 23 May 2017 09:55:51 +0300
MIME-Version: 1.0
In-Reply-To: <20170522152420.14443-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 4/4] usb-nop-xceiv: Add support for 'reset-gpios' binding
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Cc: cphealy@gmail.com

> +
> +	if (gpio_is_valid(nopphy->reset)) {
> +		/*
> +		 * Let's wait for 100 ms before deasserting reset line
> +		 */
> +		mdelay(100);
> +		gpio_direction_output(nopphy->reset, 0);
> +	}

Why not gpio_set_value() here?  Direction is already configured at this
stage.

Nikita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
