Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggFCf-0004Mh-Nq
 for barebox@lists.infradead.org; Sun, 06 Jan 2019 20:39:27 +0000
Date: Sun, 6 Jan 2019 21:39:21 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190106203921.GB5376@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-3-sam@ravnborg.org>
 <CAHQ1cqFcXt7Vg7qJB=o1nwKOzW8FC=s3YNaKTcF8jA1BXC7jxQ@mail.gmail.com>
 <20190103054647.GA4625@ravnborg.org>
 <20190103195318.GA26647@ravnborg.org>
 <20190104074601.ufpltid5d6itawxe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190104074601.ufpltid5d6itawxe@pengutronix.de>
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
Subject: Re: [PATCH v1 2/3] lib: bootstrap: detect SD card before mounting
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

Hi Sasha.

> There are two other possibilities. First there is CONFIG_MCI_STARTUP
> which causes the SD cards to be detected during host registration.

This one worked like a charm and I could drop my hacks - thanks!

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
