Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6NDj-0006r2-NQ
 for barebox@lists.infradead.org; Wed, 31 Dec 2014 17:38:08 +0000
Received: by mail-wi0-f180.google.com with SMTP id n3so25830689wiv.7
 for <barebox@lists.infradead.org>; Wed, 31 Dec 2014 09:37:43 -0800 (PST)
Date: Wed, 31 Dec 2014 18:37:35 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20141231173733.GA19433@omega>
References: <1420044590-26343-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420044590-26343-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [RFC, PATCH] i.MX6: phytec: Do not hardcode default environment
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Wed, Dec 31, 2014 at 08:49:50AM -0800, Andrey Smirnov wrote:
> By default i.MX6 phytec image hardcodes its default environment in
> initialization code. Define phytec specific defonfig and use
> CONFIG_DEFAULT_ENVIRONMENT_PATH instead.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Not sure how much of a faux pas adding a new defconfig file is, but I

I think this is `make savedefconfig`. Look `make help` for more options.

savedefconfig help:

  savedefconfig   - Save current config as ./defconfig (minimal config)


Wish you a happy new year! When you are in 2015...

Cheers.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
