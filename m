Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD3LG-0003UI-VO
 for barebox@lists.infradead.org; Tue, 23 May 2017 06:30:52 +0000
Received: by mail-lf0-x232.google.com with SMTP id m18so42531723lfj.0
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 23:30:30 -0700 (PDT)
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
Date: Tue, 23 May 2017 09:30:27 +0300
MIME-Version: 1.0
In-Reply-To: <20170522152420.14443-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/4] gpiolib: Add code to support "active low" GPIOs
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Cc: cphealy@gmail.com

> So far this particular aspect of various DT-bindings has been handled
> on a per-driver basis. With this change, hopefully, we'll have a
> single place to handle necessary logic inversions and eventually
> would be able to migrate existing users as well as avoiding adding
> redundant code to new drivers.

Do we have at least single case when same pin of the same chip is active
high in one use and active low in other use?

I'd say that "logic values" of gpiolib is a major source of confusion,
at least in it's current form. The fact that
  gpio_set_value(..., 1)
does not set gpio value to 1 but instead sets gpio value to what is
configured as active, is non-intuitive at least. Maybe with different
API names (e.g. gpio_activate() / gpio_deactivate()) it could be better.

I understand that we have these logic values in linux and may want
similarity between linux and barebox. But far not sure at which side it
should be fixed.

Right now I'm trying to handle a situation (in linux) where chip has
signal active low, but driver author just used gpiolib calls with
physical values, inverted.  So device trees are plain wrong (stating
gpio is active high which is not true) but changing that is about to
break existing working setups.

I don't know how many similar cases exist, but I guess that quite a few.
 And all this is caused by enforcement of logical gpio values concept
everywhere - while it is useful only in rare case of setup-dependent
signal polarity.  In vast majority of cases signal polarity is
chip-dependent, not setup-dependent.

Nikita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
