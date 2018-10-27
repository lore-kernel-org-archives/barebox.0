Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGKBE-0004PM-Pj
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 08:42:50 +0000
Date: Sat, 27 Oct 2018 10:42:35 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181027084235.GD28052@ravnborg.org>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/11] Allow GPIOs to be referenced by label
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

> This patch series is the result of my work on extending various gpio_*
> commands in Barebox CLI to allow referencing GPIOs by a label assigned
> to them via Device Tree or in any other way.

Thanks, I have missed this in the past.

I browsed the patches.
There are a few that is missing a newline, that you may fix if you post a v2.
But other than that everything looked good to me.

> AFAICT majority of callers of simple_strto*() functions don't really
> do very strict error checking which seems really undesirable. With
> kstrto*() functions in place, and assuming there's no objections to
> that, what do you think about a separate patch series to replace all
> of the uses of simple_strto*() with kstrto*() and eventually drop
> majority of simple_strto*() implementation code?

There should be only one implmentation, and the more strict
variant makes good sense.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
