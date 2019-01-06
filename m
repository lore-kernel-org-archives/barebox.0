Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggFBe-0004H2-MY
 for barebox@lists.infradead.org; Sun, 06 Jan 2019 20:38:24 +0000
Date: Sun, 6 Jan 2019 21:38:11 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190106203811.GA5376@ravnborg.org>
References: <20181231080725.2141-1-sam@ravnborg.org>
 <20181231080725.2141-4-sam@ravnborg.org>
 <20190104072718.czf6qqojjzluua46@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190104072718.czf6qqojjzluua46@pengutronix.de>
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
Subject: Re: [PATCH v1 3/5] arm: fix no prototype for
 barebox_arm_reset_vector()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

> > +void __naked __bare_init barebox_arm_reset_vector(void);
> 
> I had to drop this one as it breaks compilation on some boards. Some
> boards need r0 from the ROM so they have:
> 
> void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
> 
> We have to harmonize these first.
Sorry - I did not test more than a few boards.

> I suggest to use
> 
> void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
Like the prototype we have for the multi images.
I added this to the TODO list in the doc I just posted.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
