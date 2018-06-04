Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPu3h-0003dV-1Q
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 18:18:22 +0000
Date: Mon, 4 Jun 2018 20:18:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180604181803.GA11571@ravnborg.org>
References: <20180603211416.GA25216@ravnborg.org>
 <20180604075821.pu4tuecex74pcwmk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180604075821.pu4tuecex74pcwmk@pengutronix.de>
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
Subject: Re: Kernel fails to start on at91sam9263 target
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

> The output of bootm -v might be useful.
This setting is 'hidden' in General Setttings which is why I missed it.

> Have you tried earlyprintk or earlyconsole?
earlyprintk did the trick.
Now I can see the output of the kernel boot and can see it
bails out with a null-reference.

So all good, now I can move forward again.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
