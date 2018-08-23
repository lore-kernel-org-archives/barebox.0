Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fshSw-00011Z-MS
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 04:43:28 +0000
Date: Thu, 23 Aug 2018 06:43:09 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180823044309.GA2151@ravnborg.org>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-20-andrew.smirnov@gmail.com>
 <20180822070940.2bgr6uraeoeewy7h@pengutronix.de>
 <CAHQ1cqHr=a5CJrZ_ZhDUGxNu3Z48SVN4d30isVV4XVLZC1vy_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHr=a5CJrZ_ZhDUGxNu3Z48SVN4d30isVV4XVLZC1vy_g@mail.gmail.com>
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
Subject: Re: [PATCH 19/22] bbu: Remove logical negation in
 barebox_update_handler_exists()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey.

> > >
> > > -     return !bbu_find_handler(data->handler_name);
> > > +     return bbu_find_handler(data->handler_name);
> >
> > As bbu_find_handler() returns a pointer maybe better '!!' or
> > bbu_find_handler() != NULL?
> >
> 
> That shouldn't be necessary

At least to me the xxx != NULL would express the intent in a more clear way.
But then if this becomes a common pattern then I will also learn that.
But you got my preference.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
